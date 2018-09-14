#!/bin/bash
searchString="vnd.ms-project"
searchString=$1

echo "####################################################################################### $searchString in EVERYWHERE"
echo "searchForAppsInEveryKnownRelevantPlace BEGIN:"
echo ""
. ./helper/searchForStringInMimeappsLists.sh $searchString
echo ""
echo "============================================================== $searchString in desktop-links"
find /home/${USER}/.goto/desktop-links/ -type f -iname $searchString 
echo ""
echo "============================================================== $searchString in applications"
find /usr/share/applications/ -type f -iname $searchString 
echo ""
echo "END!"

