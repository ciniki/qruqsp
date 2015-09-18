#!/bin/sh

#
# This script will commit the submodule changes to the Ciniki super repo
#
if [ $# -eq 0 ]; then
MSG="Module Updates:
"
else
MSG="$1

Module Updates:
"
fi

if [ $# -gt 1 ]
then
echo "Too many arguments, put your message quotes.\n";
exit;
fi

SUMMARY=`git submodule summary`;

echo "$MSG$SUMMARY"
git commit -am "$MSG$SUMMARY"
