#!/bin/bash
##The following script will replace all the occurrences of a word in all the files of a certain type present in the local folder (filetype must be checked in the code) with another word
##It takes 2 arguments: word to find and word to replace. 
##Usage: sh replace.sh <word1> <word2>
##ToDo: add functionality to replace special characters also like '/',':', etc.  How about replacing patterns??
totalReplaces=0 
for file in *.txt *.sh 
do 
        echo 'Replacing '$1 'with '$2' in '$file 
        nreplaces=$(cat $file | grep -o $1 | wc -l ) 
        perl -pi -e 's/'$1'/'$2'/g' $file 
        cat $file | grep $2 
        echo 'Total '$nreplaces' replaces.' 
        totalReplaces=$totalReplaces+$nreplaces 
        #echo 
        #echo 
        #echo 
 
        #wc -l $file 
done 
 
echo 
echo 
echo 
 
echo 'Overall '$totalReplaces' replaces done in all files' 
echo
~                                                                                                                                                                                                                                              
~                                                                                                                                                                                                                                              
~                                                                                                                                                                                                                                              
~                                                                                                                                                                                                                                              
~
