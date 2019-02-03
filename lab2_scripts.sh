#!/bin/bash
# Authors : Douglas Thomas & No Partner
# Date: 1/31/2019

#Problem 1 Code:
echo "Enter regular expression: "
read regularExp
echo "Enter filename: "
read filename

#Problem 3.1 : Count the number of phone numbers in regex_practice.txt
egrep -c '[0-9]+[0-9]+[0-9]+-+[0-9]+[0-9]+[0-9]+-+[0-9]+[0-9]+[0-9]+[0-9]' regex_practice.txt
#Problem 3.2 : Count the number of emails in regex_practice.txt
egrep -c '[a-zA-Z0-9]+@+[a-zA-Z0-9]+\.[a-zA-Z0-9]' regex_practice.txt
#Problem 3.3 : List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
egrep '3+0+3+-+[0-9]+[0-9]+[0-9]+-+[0-9]+[0-9]+[0-9]+[0-9]' regex_practice.txt > phone_results.txt
#Problem 3.4 : List all of the emails from geocities.com and store the results in "email_results.txt"
egrep '@geocities.com' regex_practice.txt > email_results.txt
#Problem 3.5 : List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
egrep $regularExp $filename > command_results.txt