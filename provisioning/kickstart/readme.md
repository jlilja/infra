# Usage

## Bootimg the .iso on Virtualbox

This can be done using an official iso from the vendor and creating an iso yourself with the ks.cfg file in a directory called iso.

1. `cp ks.cfg iso/`
2. `xorriso -as mkisofs -o ks.iso iso/`

You need to mount the linux iso as the main iso in the create VM window.
You need to mount the kickstart iso as a secondary entry in `storage` -> `Controller: IDE`. This will be known as device `sr1`.

When booting a virtualbox machine with an iso and a kickstart file iso, you need to add a kernel argument saying `inst.ks=hd:sr1:/ks.cfg`.

If the installer will not remain in text mode, you can also add the additional argument `inst.text`.
For fully english install, set these arguments `inst.lang=en_US.UTF-8 inst.keymap=us`.

## Generating the user password

Run `mkpasswd -m sha-512 "inputyourpasswordhere"` to get the hashed and salted password that the anaconda installer expects.

## Enabling ssh for VM in Virtualbox

Go to VM `settings` -> `network` -> `port forwarding` -> `Add new port forwarding rule` -> choose host port -> guest port `22`.
