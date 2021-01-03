$ sudo yum update
$ uname -sr
$ rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
$ sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
$ sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
$ yum --disablerepo="*" --enablerepo="elrepo-kernel" list available
$ yum --enablerepo=elrepo-kernel install kernel-ml
$ sudo yum --enablerepo=elrepo-kernel install kernel-ml
$ cd /etc/yum.repos.d
$ wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
$ sudo yum install wget -y
$ wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
$ sudo wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
$ yum --enablerepo=epel install dkms
$ sudo yum --enablerepo=epel install dkms
$ yum groupinstall "Development Tools"
$ sudo yum groupinstall "Development Tools"
$ sudo yum install kernel-devel
$ sudo yum install VirtualBox-5.2
$ sudo usermod -a -G vboxusers username
$ usermod -a -G vboxusers username
$ sudo test -a -G vboxusers username
$ sudo test -a -G vboxusers test
$ sudo systemctl start vboxdrv
$ sudo yum install –y patch gcc kernel-headers kernel-devel make perl wget
$ sudo systemctl status vboxdrv
