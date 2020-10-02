#! /bin/sh


#read in data, sequence is the variable used to store sequence file only, name is used to store sequence name
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#calculate length of sequence
len=${#sequence}

echo "Length: $len"

#loop through sequence in reverse complement, rev_com is used to store the reverse complementary sequence
#need  replace somewhere to make it case insensitive
rev_com=`grep -v ">" $1 | rev | tr 'ATGC' 'TACG'`

#<<<<<<< HEAD
#Check on the screen to see how the sequence is converted
echo "Input sequence is: 
$sequence
=======
echo "$sequence
$reverse
"

#complement sequence
rc=`echo $reverse | tr [:lower:] [:upper:] 'atcg' [:lower:] [:upper] 'tagc'`
>>>>>>> 8a86372f3cb9a3a0d0da6175f9ff5cbbcfcd2b92

The reverse complement sequence is: 
$rev_com
"


echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
