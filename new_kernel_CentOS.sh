# new kernel

$ sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
$ sudo yum install https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm
$ sudo yum --disablerepo="*" --enablerepo="elrepo-kernel" list available
$ sudo yum --enablerepo=elrepo-kernel install kernel-ml
$ sudo vi /etc/default/grub
# GRUB_DEFAULT=0
$ sudo grub2-mkconfig -o /boot/grub2/grub.cfg
$ sudo reboot

# kernel 4.x

$ sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
$ sudo yum update
$ sudo yum install https://elrepo.org/linux/kernel/el7/x86_64/RPMS/kernel-lt-4.4.248-1.el7.elrepo.x86_64.rpm
$ sudo yum --enablerepo=elrepo-kernel install kernel-ml
$ sudo vi /etc/default/grub
$ sudo grub2-mkconfig -o /boot/grub2/grub.cfg
$ sudo reboot
$ uname -ra
