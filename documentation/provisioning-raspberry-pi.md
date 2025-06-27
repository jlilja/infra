# Overview

This is to document the procees of setting up a raspberry pi from scratch until it is ready to be fully managed by ansible in a deployed state.

## Provisioning

1. Download the raspios image.
2. If its a .xz file, unpack it with `unxz filename.img.xz`.
3. Use gparted and clean up the memory card.
4. `sudo dd if=./filename.img of=/dev/mmcblk0 bs=1M status=progress conv=fsync`.
5. Create a file called `ssh` in the partition called `rootfs` in the `boot` directory.
6. Create a file called `userconf` in the `boot` partition.
    - Generate a new password `echo 'yourpassword' | openssl passwd -6 -stdin`.
    - Add a single line in the new file following the format `username:encrypted-password`.

https://forums.raspberrypi.com/viewtopic.php?p=1311050#p1311050

https://forums.raspberrypi.com/viewtopic.php?t=346393

https://forums.raspberrypi.com/viewtopic.php?p=1583529&sid=165704180f7e3b02d305ec9306ce5e8b#p1583529

https://raspberrypi.stackexchange.com/a/137916
