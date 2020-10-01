#! /bin/sh

#initialize variable
rev_com=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#calculate length of sequence
len=${#sequence}

echo "Length: $len"

#loop through sequence in reverse complement
#need  replace somewhere to make it case insensitive
rev_com=`grep -v ">" $1 | rev | tr 'ATGC' 'TACG'`

#Check on the screen to see how the sequence is converted
echo "Input sequence is: 
$sequence

The reverse complement sequence is: 
$rev_com
"


echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
