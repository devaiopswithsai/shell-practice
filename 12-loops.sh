USERID=$(id -u)
LOG_DIR=/var/log/shell-script/
LOG_FILE="$LOG_DIR/$0.log"
TIME_STAMP=$(date "+%y-%m-%d %H:%M:%S")

if [ $USERID -ne 0 ]; then
   echo "Please run the script with root access"
   exit 1

    
fi

# first arg -> what are you trying to install
# second arg -> exit code
VALIDATE() {
    if [ $2 -ne 0 ]; then
    echo "$TIME_STAMP [ERROR] installing $1 failed" | tee -a $LOG_FILE
    exit 1
    else

    echo "$TIME_STAMP [INFO] installing $1 success" | tee -a $LOG_FILE
    fi
}

for package in $@

do
    dnf list installed  $package &>> $LOG_FILE

    if [ $? -eq 0 ]; then
    echo "$TIME_STAMP [ERROR] $package is already installed SKIPPING" | tee -a $LOG_FILE
    else
        echo "Installing $package"
        dnf install $package -y &>> $LOG_FILE
        VALIDATE $package $? 
    fi
done