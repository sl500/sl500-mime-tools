#!/bin/bash
searchString="KeinParameterÜbergeben"
searchString=$1

echo "======================================================================================= $searchString in GLOBS2"
echo "searchForStringInGlobs2 BEGIN:"
echo "search /usr/share/mime/globs2:"
echo ""
grep -rni '/usr/share/mime/globs2' -e $searchString
echo ""
echo "searchForStringInGlobs2 END!"

echo "searchForStringInGlobs1 BEGIN:"
echo "search /usr/share/mime/globs:"
echo ""
grep -rni '/usr/share/mime/globs' -e $searchString
echo ""
echo "searchForStringInGlobs1 END!"

