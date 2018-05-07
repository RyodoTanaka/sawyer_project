#!/bin/bash

file_name=$1
enc_file_name=$1.enc
password=$2

if [ -z $file_name ]; then
    echo "!! Error !!"
    echo "!! Input the file_name !!"
    return 1
fi

if [ -z $password ]; then
    echo "!! Error !!"
    echo "!! Input the password !!"
    return 1
fi

openssl enc -e -aes-256-cbc -salt -k $password -in $file_name -out $enc_file_name
