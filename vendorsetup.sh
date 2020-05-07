#
# Copyright (C) 2018-2020 OrangeFox Recovery Project
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
# Please maintain this if you use this script or any part of it
#
FDEVICE="h850"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
        export FOX_DELETE_AROMAFM=1
        export FOX_USE_BASH_SHELL=1
        export FOX_USE_NANO_EDITOR=1
        export FOX_USE_ZIP_BINARY=1
        export FOX_USE_TAR_BINARY=1
        export FOX_REPLACE_BUSYBOX_PS=1
        export FOX_REPLACE_TOOLBOX_GETPROP=1
        export OF_AB_DEVICE=0
        export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
        export OF_FLASHLIGHT_ENABLE=0
        export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
        export OF_USE_NEW_MAGISKBOOT=1
        export OF_USE_MAGISKBOOT=1
        export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
        export OF_SCREEN_H=1920
        export TARGET_ARCH=arm64

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
 	fi
  	
	add_lunch_combo omni_"$FDEVICE"-eng
	add_lunch_combo omni_"$FDEVICE"-userdebug
fi
#
