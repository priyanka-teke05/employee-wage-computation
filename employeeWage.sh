#!/bin/bash -x

#display welcome message
echo "Welcome to Employee Wage Computation"

#constants
readonly IS_EMP_PRESENT=1

#random to get 0 or 1
empAttendance=$(( RANDOM%2 ))

#check employee is present or absent and calculate salary
if [ $IS_EMP_PRESENT -eq $empAttendance ]; then
	empRatePerHrs=20 
	empHours=8 
	salary=$((empHours*empRatePerHrs))
else
	salary=0
fi
