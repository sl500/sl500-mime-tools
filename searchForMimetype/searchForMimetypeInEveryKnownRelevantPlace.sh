#!/bin/bash
searchString="vnd.ms-project"
searchString=$1

echo "####################################################################################### $searchString in EVERYWHERE"
echo "searchForMimetypeInEveryKnownRelevantPlace BEGIN:"
echo ""
. searchForStringInGlobs2.sh $searchString
echo ""
. searchForStringInMimeappsLists.sh $searchString
echo ""
. searchForMimetypeInDesktopFiles.sh $searchString
echo ""
. searchForStringInMimePackagesXmlFiles.sh $searchString
echo ""
echo "END!"

