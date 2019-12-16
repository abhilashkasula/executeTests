#!/bin/bash

mv test test1
svn export http://github.com/step-batch-7/geometry-$1/trunk/test test
mocha
rm -rf test
mv test1 test