#!/bin/bash
searchString="vnd.ms-project"
searchString=$1

echo "####################################################################################### $searchString in EVERYWHERE"
echo "searchForMimetypeInEveryKnownRelevantPlace BEGIN:"
echo ""
. ./helper/searchForStringInBothGlobsFiles.sh $searchString
echo ""
. ./helper/searchForStringInMimeappsLists.sh $searchString
echo ""
. ./helper/searchForMimetypeInDesktopFiles.sh $searchString
echo ""
. ./helper/searchForStringInMimePackagesXmlFiles.sh $searchString
echo ""
echo "END!"

