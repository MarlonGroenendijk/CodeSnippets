#!/bin/bash
# A script to instantly enable or disable the backlight on some Thinkpads. (This depends on how cat handles files in the acpi directory -- check with your distribution)

if [[ $(cat /proc/acpi/ibm/kbdlight) = "status:		0
commands:	0, 1, 2" ]]; then
	echo 2 > /proc/acpi/ibm/kbdlight
else
	echo 0 > /proc/acpi/ibm/kbdlight
fi

