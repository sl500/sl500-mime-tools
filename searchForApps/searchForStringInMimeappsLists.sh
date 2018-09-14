#!/bin/bash

searchString="application/mpp"
searchString=$1

echo "=======================================================================================  $searchString in MIMEAPPS LISTS"
echo "searchForStringInMimeappsLists BEGIN:"
echo "search /usr/share/applications/mimeapps.list:"
grep -rni '/usr/share/applications/mimeapps.list' -e $searchString
echo ""
echo "search /etc/xdg/mimeapps.list:"
grep -rni '/etc/xdg/mimeapps.list' -e $searchString 
echo "searchForStringInMimeappsLists END!"

