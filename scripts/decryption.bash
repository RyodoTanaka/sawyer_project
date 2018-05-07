#!/bin/bash

enc_file_name=$1
password=$2

if [ -z $enc_file_name ]; then
    echo "!! Error !!"
    echo "!! Input the file_name !!"
    return 1
fi

file_name=`echo $enc_file_name | sed -e 's/\.enc//'`

if [ -z $password ]; then
    echo "!! Error !!"
    echo "!! Input the password !!"
    return 1
fi

openssl enc -d -aes-256-cbc -salt -k $password -in $enc_file_name -out $file_name
