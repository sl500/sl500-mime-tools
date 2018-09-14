#!/bin/bash

searchString="KeinParameterUebergebenBeispiel:application/pdfOder*.pdf"
searchString=$1

echo "======================================================================================= $searchString in XML"
echo "searchForStringInMimePackagesXmlFiles BEGIN:"
echo "search /usr/share/mime/packages/:"
echo ""
grep -rni '/usr/share/mime/packages/' --exclude='freedesktop.org.xml' -e $searchString
echo ""
echo "searchForStringInMimePackagesXmlFiles END!"

