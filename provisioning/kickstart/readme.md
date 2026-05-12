# Usage

When booting a bare metal machine with an .iso and a kickstart file, you need to add a kernel argument saying `inst.ks=hd:sr1:/ks.cfg`. If the installer will not remain in text mode, you can also add the additional argument `inst.text`
