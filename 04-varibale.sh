#!/bin/bash

echo "Please enter username"
read USER_NAME # here USER_NAME is variable, whatever you enter in terminal stores in this variable

echo "User name is $USER_NAME"

echo "Please enter password"
read -s PASSWORD
echo "Password is $PASSWORD"