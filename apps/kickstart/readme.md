# Usage

## Booting the .iso on Virtualbox

This can be done using an official iso from the vendor and creating an iso yourself with the ks.cfg file in a directory called iso.

1. `cp ks.cfg iso/`
2. `xorriso -as mkisofs -o ks.iso iso/`

You need to mount the linux iso as the main iso in the create VM window.
You need to mount the kickstart iso as a secondary entry in `storage` -> `Controller: IDE`. This will be known as device `sr1`.

When booting a virtualbox machine with an iso and a kickstart file iso, you need to add a kernel argument saying `inst.ks=hd:sr1:/ks.cfg`.

If the installer will not remain in text mode, you can also add the additional argument `inst.text`.
For fully english install, set these arguments `inst.lang=en_US.UTF-8 inst.keymap=us`.

## Generating the user password

Run `mkpasswd -m=sha-512 "inputyourpasswordhere"` to get the hashed and salted password that the anaconda installer expects.

## Enabling ssh for VM in Virtualbox

Go to VM `settings` -> `network` -> `port forwarding` -> `Add new port forwarding rule` -> choose host port -> guest port `22`.

## Downloading the images

### Fedora

A netinstall image by Fedora is called "Everything" and can be downloaded at https://fedoraproject.org/misc/#everything

## Writing linux iso to usb

`dd if=/path/to/your/isofile of=/your/usb/disk bs=8M status=progress`

Example: `dd if=Fedora-Everything-netinst-x86_64-44-1.7.iso of=/dev/sda bs=8M status=progress`

## Writing kickstart iso to usb

Build Kickstart iso as described earlier in this document.

`dd if=/path/to/your/isofile of=/your/usb/disk bs=8M status=progress`

Example `dd if=ks.iso of=/dev/sda bs=8M status=progress`

dd will most likely assign this iso/disk/partition as `ISOIMAGE`, meaning it can be found as following during start up `inst.ks=hd:LABEL=ISOIMAGE:/ks.cfg`.
