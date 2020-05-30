cryptsetup luksOpen /dev/sdc1 "dec"
mount /dev/mapper/dec t
bindfs -ux /root/t /home/x/t
umount /home/x/t
umount /root/t
cryptsetup close "dec"
