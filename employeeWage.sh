#!/bin/bash -x

#display welcome message
echo "Welcome to Employee Wage Computation"

#constants
readonly IS_EMP_PRESENT=1
readonly IS_PART_TIME=1
readonly IS_FULL_TIME=2
readonly EMP_RATE_PER_HRS=20

#random to get 0 or 1
empAttendance=$(( RANDOM%2 ))

#check employee is present or absent and calculate salary
if [ $IS_EMP_PRESENT -eq $empAttendance ]; then
	empCheck=$(( RANDOM%3 ))
	if [ $empCheck -eq $IS_PART_TIME ]; then
		empHours=4
	elif [ $empCheck -eq $IS_FULL_TIME ]; then
		empHours=8
	fi
else
	empHours=0
fi
salary=$(( empHours*EMP_RATE_PER_HRS ))
