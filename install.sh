#!/bin/bash
#tBEMS = the Better Eggdrop Management Suite
#Copyright (C) 2004 John Siciliano (enlightened@gmail.com)
#
#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2
#of the License, or (at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
#USA.


if [ ! `whoami` = "root" ]; then
echo This script is not made to be installed locally.
echo Nor is it supposed to.
echo You must install this as root.
exit 1
fi 
echo Installing eggdrop-install
cp eggdrop-install /usr/bin/
chmod 755 /usr/bin/eggdrop-install
chown nobody:users /usr/bin/eggdrop-install
echo [ OK ]
echo Installing eggdrop-conf
cp eggdrop-conf /usr/bin
chmod 755 /usr/bin/eggdrop-conf
chown nobody:users /usr/bin/eggdrop-install
echo [ OK ]
echo Installing eggdrop-launch
cp eggdrop-launch /usr/bin
chmod 755 /usr/bin/eggdrop-launch
chown nobody:users /usr/bin/eggdrop-launch
echo [ OK ]
echo Installing eggdrop-base-install
cp eggdrop-base-install /usr/sbin
chmod 700 /usr/sbin/eggdrop-base-install
chown root:root /usr/sbin/eggdrop-base-install
echo [ OK ]
echo Installing eggdrop-lock
cp eggdrop-lock /usr/sbin/eggdrop-lock
chmod 700 /usr/sbin/eggdrop-lock
chown root:root /usr/sbin/eggdrop-lock
echo [ OK ] Done
sleep 1
echo "Showing you some of the changelog"
head ChangeLog
echo [ OK ]
echo "You should now run eggdrop-base-install as root"
echo "if you haven't already"
echo "To install the neccessary files for eggdrop-install to work"

