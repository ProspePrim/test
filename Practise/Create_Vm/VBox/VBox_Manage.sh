#!/bin/bash

vboxmanage setproperty machinefolder ~/VB
mkdir ~/VB/vbox

# Create VM
VBoxManage createvm --name test_CentOS_7 \                            # --name <name>
	--ostype RedHat_64 \                                          # [--ostype <ostype>]
	--register \                                                  # [--register]
	--basefolder ~/VB/vbox                               # [--basefolder <path>]

# modify VM
VBoxManage modifyvm test_CentOS_7 \                                   # <uuid|vmname> 
	--cpus 1 \                                                    # [--cpus <number>]
	--memory 1024 \                                               # [--memory <memorysize in MB>]
	--audio none \                                                # [--audio none|null|oss|alsa|pulse]
	--usb off \                                                   # [--usb on|off]
	--acpi on \                                                   # [--acpi on|off]                                                      
	--boot1 dvd \                                                 # [--boot<1-4> none|floppy|dvd|disk|net>]	
	--nic1 nat                                                    # [--nic<1-N> none|null|nat|bridged|intnet|hostonly|generic|natnetwork]

# configure storage for VM
VBoxManage storagectl test_CentOS_7 \                                 # <uuid|vmname>
	--name "CentOS_7_SATA" \                                      # --name <name>
	--add sata                                                    # [--add ide|sata|scsi|floppy|sas|usb|pcie]

VBoxManage createhd \                                                 # 
        --filename ~/VB/vbox/CentOS_7.vdi \                  # --filename <filename>
        --size 10000 \                                                # --size <megabytes>
        --format VDI \                                                # [--format VDI|VMDK|VHD] (default: VDI)
        --variant Standard                                            # [--variant Standard,Fixed,Split2G,Stream,ESX]

# confirm settings for VM
VBoxManage showvminfo test_CentOS_7

#
VBoxManage startvm test_CentOS_7 --type headless

# Commands
# vboxmanage list vms
                                                                                                                                                                                     