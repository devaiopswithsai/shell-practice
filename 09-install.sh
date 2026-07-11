#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
   exit 1

    
fi

#echo "I am continiurung"
dnf installed mysql
if [ $? -eq 0]; then
  echo "MySQL is already installed SKIPPING"
else
    echo "Installing mysql"
    dnf install mysql -y

    if [ $? -ne 0 ]; then
    echo "installing mysql failed"
    exit 1
    else

    echo "installing mysql success"
    fi
fi
 