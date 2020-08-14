#!/bin/bash -x

#display welcome message
echo "Welcome to Employee Wage Computation"

#constants
readonly IS_EMP_PRESENT=1

#random to get 0 or 1
empAttendance=$(( RANDOM%2 ))

#check employee is present or absent
if [ $IS_EMP_PRESENT -eq $empAttendance ]; then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
