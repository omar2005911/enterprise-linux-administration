#! /usr/bin/bash 

read -p "Enter the name of the user you want to create  " username
if id "$username" &>/dev/null
then
        echo "this name is already exist in the system. try another one"
else
        if useradd -m "$username"
        then
               echo "the user is successfully added"
               echo "Enter the password"
               passwd $username
       else
               echo "failed to create the user"
        fi

fi

~                                                                                                                                      
~                                                                                                                                      
~              
