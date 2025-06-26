# Overview

This is to document the procees of setting up a raspberry pi from scratch until it is ready to be fully managed by ansible in a deployed state.

## Provisioning

1. Download the raspios image.
2. If its a .xz file, unpack it with `unxz filename.img.xz`.
3. Use gparted and clean up the memory card.
4. `sudo dd if=./filename.img of=/dev/mmcblk0 bs=1M status=progress conv=fsync`.
5. Touch a file called `ssh` in the root of the partition called `bootfs`.

https://forums.raspberrypi.com/viewtopic.php?p=1311050#p1311050

https://forums.raspberrypi.com/viewtopic.php?t=346393

https://forums.raspberrypi.com/viewtopic.php?p=1583529&sid=165704180f7e3b02d305ec9306ce5e8b#p1583529
