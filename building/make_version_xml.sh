#!/bin/bash
rm -f version.xml pwd.tmp
pwd | sed -e 's/\//\\\//g' > pwd.tmp
target=`cat pwd.tmp`
sed -e s/BUILDDIR/$target/g < version_template.xml > version.xml
rm -f pwd.tmp
