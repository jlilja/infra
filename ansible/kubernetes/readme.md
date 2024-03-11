# Kubernetes

## Swapping

Swapping in unix systems is a file or a partition of a hard drive that acts as an extension to the computer's memory. This enables systems that runs proccesses which require more memory than physically available to swap some of the stored data onto file(s) on disk.

### Enable and disable swap

Show current swap status `sudo swapon --show`.

Disable all swap areas (file or partition).

Enable swapping requires specifying a file or partition. This can be done in several ways.

[This guide](https://www.baeldung.com/linux/swap-space#1-create-a-swap-file) shows how to enable swap for a single file.

[This guide](https://www.baeldung.com/linux/swap-space#2-create-a-swap-partition) shows how to enable swap for an entire partition.

> [!NOTE]
> When turning off swapping using one of the options above, remember that it does not persist reboots. To make the change permanent, edit `/etc/fstab` and comment out the line regarding swap.
