#!/bin/bash

searchString="application/mpp"
searchString=$1

#echo "search /usr/share/applications/mimeapps.list"
#while read l; do
#cat $l 2>/dev/null | grep -i $searchString 2>/dev/null
#done < /usr/share/applications/mimeapps.list

#echo ""

#echo "search /etc/xdg/mimeapps.list"
#while read l;do
#if [[ grep -i ]]
#done < /etc/xdg/mimeapps.list

#cat  /usr/share/applications/mimeapps.list | grep -i application/mpp
echo "=======================================================================================DESKTOP FILES"
echo "searchForMimetypeInDesktopFiles BEGIN:"
echo "search /usr/share/applications/:"
#cat  /usr/share/applications/mimeapps.list | grep -i $searchString
grep -rni '/usr/share/applications/' --exclude='mimeapps.list' -e $searchString
#grep -rn /usr/share/applications/ -e 'application/vnd.ms-'
echo ""
echo "search ~/.goto/desktop-links/:"
#cat  /etc/xdg/mimeapps.list | grep -i $searchString
grep -rni "/home/${USER}/.goto/desktop-links/" -e $searchString 
echo "searchForMimetypeInDesktopFiles END!"

