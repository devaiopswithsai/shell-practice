#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
   exit 1

    
fi
VALIDATE() {
    if [ $2 -ne 0 ]; then
    echo "installing $1 failed"
    exit 1
    else

    echo "installing $1 success"
    fi
}
#echo "I am continiurung"
dnf list installed  mysql

if [ $? -eq 0 ]; then
  echo "MySQL is already installed SKIPPING"
else
    echo "Installing mysql"
    dnf install mysql -y
    VALIDATE mysql $? 
fi


dnf list installed  nginx

if [ $? -eq 0 ]; then
  echo "nginx is already installed SKIPPING"
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE nginx $?
fi
 