#!/bin/bash


function testGetOpts1()
{
  local TMP_OPTIND=$OPTIND
  OPTIND=1
  echo -e "\n+ testGetOpts1() $@"
  while getopts  "a:b:c:d:" flag
  do
    echo "$flag" IND=$OPTIND ARG=$OPTARG
  done
  echo  OPTIND=$OPTIND
  echo ""
  OPTIND=$TMP_OPTIND
}



function testGetOpts2()
{
  local TMP_OPTIND=$OPTIND
  OPTIND=1
  echo -e "\n+ testGetOpts2() $@"
  while getopts  "a:b:c:" flag
  do
    echo "$flag" IND=$OPTIND ARG=$OPTARG
  done
  echo  OPTIND=$OPTIND
  echo ""
  OPTIND=$TMP_OPTIND
}



function testGetOpts3()
{
  local TMP_OPTIND=$OPTIND
  OPTIND=1
  echo -e "\n+ testGetOpts3() $@"
  while getopts  "abc:def:ghi" flag
  do
    echo "$flag" IND=$OPTIND ARG=$OPTARG
  done

  OPTIND=$TMP_OPTIND
}

#detail usage , please look https://milochen.wordpress.com/2010/06/26/fast-understand-how-to-use-bash-getopts/


