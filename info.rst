*** kvm howto
===========

* install :
---------
    $ sudo apt-get install kvm qemu # on ubuntu

* creating disk images :
-----------------------
    $ qemu-img create -f img win7.img 50G
    $ qemu-img create -f qcow2 win7.img 50G

* creating disk images :
-----------------------

    kvm [-localtime] [-win2k-hack] -m 512 -cdrom /dev/cdrom -boot d <disk image>
    kvm -m 512 -drive file=image.qcow,cache=writeback,media=disk
    kvm -m 512 -drive file=fedora.iso,cache=writeback,media=cdrom
    kvm -m <size of ram> -localtime -net user -net nic,model=rtl8139 -soundhw es1370 <disk image>
    /usr/bin/kvm -S -M pc-1.0 -enable-kvm -m 1024 -smp 1,sockets=1,cores=1,threads=1 -name Windows7 -uuid fc6666ef-af60-6b06-8fb5-e4bf929a0870 nu=on -drive file=/data/img/Windows_7_64.img,if=none,id=drive-ide0-0-0,format=raw -device ide-drive,bus=ide.0,unit=0,drive=drive-ide0-0-0,id=ide0-0-0 -netdev tap,fd=18,id=hostnet0 -device rtl8139,netdev=hostnet0,id=net0,mac=52:54:00:5d:77:1c,bus=pci.0,addr=0x3 -chardev pty,id=charserial0 -device isa-serial,chardev=charserial0,id=serial0 -usb -device usb-tablet,id=input0 -vnc 127.0.0.1:1 -vga std -device intel-hda,id=sound0,bus=pci.0,addr=0x4 -device hda-duplex,id=sound0-codec0,bus=sound0.0,cad=0 -device virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x5

* creating disk images :
-----------------------
find . \( -iname "*.git*" -prune -o -iname "*.vim*" -prune \) -o -print |less
