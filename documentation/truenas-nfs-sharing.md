# Connecting to a TrueNAS NFS on Fedora

Replace placeholders such as `<truenas-ip>` and `<export-path>` with your TrueNAS server’s IP address and the path of its NFS export.

## Enable the NFS share

The NFS share is enabled using Terraform. The Terraform configuration is located in `/apps/truenas/terraform`.

### Restrict client access

Set the allowed client IP address in the Terraform module that enables the NFS share. Restrict access to the Fedora machine’s IP address where possible, rather than allowing a broad network range.

## Prepare the Fedora system

Install the NFS client tools if they are not already installed:

```bash
sudo dnf install nfs-utils
```

Create a local directory to use as the mount point:

```bash
sudo mkdir --parents /mnt/<mount-name>
```

## Mount the share

Mount the NFS export with restrictive client-side options:

```bash
sudo mount --types nfs --options nosuid,nodev,noexec <truenas-ip>:<export-path> /mnt/<mount-name>
```

- `sudo` runs the command with elevated permissions, which are generally required to mount a filesystem.
- `--types nfs` tells `mount` that the filesystem type is NFS.
- `--options nosuid,nodev,noexec` prevents set-user-ID programs, device files, and executable files on the share from being used. Omit `noexec` if you need to run programs from the share.
- `<truenas-ip>:<export-path>` identifies the TrueNAS server and exported directory.
- `/mnt/<mount-name>` is the local mount point.

Verify that the share is mounted:

```bash
findmnt --target /mnt/<mount-name>
```

When you are finished using the share, unmount it with:

```bash
sudo umount /mnt/<mount-name>
```

## Mount the share automatically at startup

To mount the share automatically at startup, add an entry to `/etc/fstab`:

```bash
sudo vim /etc/fstab
```

Add this line, replacing the placeholders:

```fstab
<truenas-ip>:<export-path> /mnt/<mount-name> nfs defaults,_netdev,nofail,nosuid,nodev,noexec 0 0
```

- `defaults` uses the default mount options.
- `_netdev` marks the mount as network-dependent.
- `nofail` allows the system to continue booting if the NFS share is unavailable.
- `nosuid,nodev,noexec` applies the client-side restrictions described above. Omit `noexec` if you need to run programs from the share.
- The final `0 0` fields are the standard dump and filesystem-check fields for this entry.

Save the file. When the share is not in use, test the entry by unmounting it if it is already mounted, then mounting it by its mount point:

```bash
sudo umount /mnt/<mount-name>
sudo mount /mnt/<mount-name>
```

Verify the mount:

```bash
findmnt --target /mnt/<mount-name>
```

## Share permissions and identity

Grant only the access the share needs. Configure the export as read-only if clients do not need to write files. For writable access, use appropriately limited dataset permissions and matching user and group IDs between Fedora and TrueNAS.

Keep root squashing enabled; do not map the Fedora client’s root user to the TrueNAS root user. If stronger user authentication and traffic encryption are required, consider configuring NFS with Kerberos security.

## Transfer files to the share

Use `rsync` to copy a file to the mounted share. Quote paths so spaces and special characters are handled correctly:

```bash
sudo rsync --archive --human-readable --info=progress2 "/path/to/file" "/mnt/<mount-name>/path/to/destination/"
```

To copy a whole directory, use the directory as the source:

```bash
sudo rsync --archive --human-readable --info=progress2 "/path/to/directory/" "/mnt/<mount-name>/path/to/destination/"
```

With a trailing slash on the source directory, `rsync` copies the directory’s **contents** into the destination. To copy the directory itself and place it inside the destination, omit the trailing slash:

```bash
sudo rsync --archive --human-readable --info=progress2 "/path/to/directory" "/mnt/<mount-name>/path/to/destination/"
```

- `sudo` runs `rsync` with elevated permissions. It may be needed to read a protected source file, but it does not bypass permissions on the NFS server.
- `--archive` enables archive mode, preserving file attributes where possible and copying directories recursively.
- `--human-readable` displays file sizes in a human-readable format.
- `--info=progress2` displays overall transfer progress.
- The first path is the source; the second is the destination on the mounted share.
