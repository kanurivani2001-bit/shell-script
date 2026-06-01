#!/bin/bash

#checking that whether you are sudo user or not

UID=$(id -u)

VALIDATE() {
    if [ $1 -eq 0 ]; then
        echo -e "$2  .....\e[32mSUCCESS\e[0m"
    else
       echo -e "$2  ......\e[31mFAILED\e[0m"
    fi
}


if [ $UID -ne 0 ]; then
    echo "ERROR: Please run as root"
    exit
else
    echo "You are root user"
fi

yum install mysql -y

VALIDATE $? "MySQL installation"