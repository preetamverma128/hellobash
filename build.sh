#!/bin/bash

#Define Variable
CODEFILE=$WORKSPACE/echo.sh
DIST=$WORKSPACE/dist
WORK=$WORKSPACE/work




#CLEAN Project
echo "Cleaning project"
rm -r $DIST
rm -r $WORK


#Prepare Proect
echo "Prepair project"
mkdir $DIST
mkdir $WORK
cp $CODEFILE $WORK/echo.bin.sh
chmod 751 $WORK/echo.bin.sh

#Compile Code
echo "Compiling  project"
bash $WORK/echo.bin.sh

if [ $? == 0 ]; then cp  $WORK/echo.bin.sh $DIST/echo.bin.sh
 
#Deploye Code
echo "Cleaning project"

