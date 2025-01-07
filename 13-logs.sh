#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$( echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0]
    then
        echo -e "$2 .. $R FAILURE $N"
        exit 1
    else
        echo -e "$2 .. $G SUCCESS $N"
    fi 
}

echo "script started executing at: $TIMESTAMP" &>> $LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
    echo -e " $R ERROR:: You must have sudo access to execute this script"
    exit 1
fi

dnf list installed nodejs &>> $LOG_FILE_NAME
dnf module disable nodejs -y &>> $LOG_FILE_NAME
dnf module enable nodejs:20 -y &>> $LOG_FILE_NAME

if [ $? -ne 0 ]
then # not installed
    dnf install nodejs -y &>> $LOG_FILE_NAME
    VALIDATE $? "INSTALLING NodeJs"
else
    echo -e "NodeJs is already ..$Y INSTALLED $N"
fi

dnf list installed git &>> $LOG_FILE_NAME

if [ $? -ne 0 ]
then 
    dnf install git -y &>> $LOG_FILE_NAME
    VALIDATE $? "Installing Git"
else
    echo -e "Git is already .. $Y INSTALLED $N"
fi
