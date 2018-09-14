#!/bin/bash
searchString="vnd.ms-project"
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
echo "##################################################################################################  $searchString in EVERYWHERE"
echo "searchiForExtensionInEveryKnownRelevantPlace BEGIN:"
echo ""
. searchForStringInGlobs2.sh $searchString
echo ""
. searchForStringInMimePackagesXmlFiles.sh $searchString
echo ""
echo "END!"

