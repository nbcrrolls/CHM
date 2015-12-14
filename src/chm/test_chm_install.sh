#!/bin/bash

declare curdir=`pwd`
declare mytmpdir="/tmp/testchm"`uuidgen`

echo ""
echo ""
echo "Running test of chm programs CHM_train.sh and CHM_test.sh (5 minutes)"
echo ""
echo "Creating $mytmpdir"
echo ""
echo "If this script fails the directory may need to be removed manually"

function remove_dir()
{
  echo "Removing $mytmpdir"
  rm -rf "$mytmpdir"
  if [ $? != 0 ] ; then
    echo "Unable to remove $mytmpdir, please remove manually"
  fi
}


mkdir -p $mytmpdir

if [ $? != 0 ] ; then
  echo "Unable to create $mytmpdir"
  exit 1
fi

cd $mytmpdir

if [ $? != 0 ] ; then
  echo "Unable to change to $mytmpdir"
  remove_dir
  exit 2
fi

module load chm

if [ $? != 0 ] ; then
  echo "Error running module load chm"
  remove_dir
  exit 3
fi

CHM_train.sh "/opt/chm/test/trainimages/*.png" "/opt/chm/test/trainlabels/*.png" -S 2 -L 1 -s

declare exit_code=$?

if [ $exit_code != 0 ] ; then
  echo "Non zero exit code: $exit_code received from CHM_train.sh"
  remove_dir
  exit 4
fi

if [ ! -s "$mytmpdir/temp/MODEL_level0_stage1.mat" ] ; then
  echo "$mytmpdir/temp/MODEL_level0_stage1.mat missing or size 0"
  remove_dir
  exit 5
fi

if [ ! -s "$mytmpdir/temp/MODEL_level0_stage2.mat" ] ; then
  echo "$mytmpdir/temp/MODEL_level0_stage2.mat missing or size 0"
  remove_dir
  exit 6
fi

if [ ! -s "$mytmpdir/temp/MODEL_level1_stage1.mat" ] ; then
  echo "$mytmpdir/temp/MODEL_level1_stage1.mat missing or size 0"
  remove_dir
  exit 7
fi

CHM_test.sh /opt/chm/test/trainimages/1.png "$mytmpdir" -m ./temp -s -o 0x0

exit_code=$?

if [ $exit_code != 0 ] ; then
  echo "Non zero exit code: $exit_code received from CHM_test.sh"
  remove_dir
  exit 8
fi

if [ ! -s "$mytmpdir/1.png" ] ; then
  echo "Expected $mytmpdir/1.png to be created"
  remove_dir
  exit 9
fi

echo ""
echo "Tests run successfully"
echo ""

remove_dir

exit
