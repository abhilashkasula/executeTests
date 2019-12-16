#!/bin/bash

# declare user='step-batch-7'
# declare repo='geometry-'${1}
echo "UserName:"
read user
echo 'repository'
read repo
echo 'connecting...'
svn export http://github.com/${user}/${repo}/trunk/test otherTests >/dev/null
mocha otherTests
rm -rf otherTests