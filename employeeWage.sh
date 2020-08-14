#!/bin/bash -x

#display welcome message
echo "Welcome to Employee Wage Computation"

#constants
readonly IS_PART_TIME=1
readonly IS_FULL_TIME=2
readonly EMP_RATE_PER_HRS=20
readonly NUM_OF_WORKING_DAYS=20

#variables
totalSalary=0

for(( dayCount=1; dayCount<=NUM_OF_WORKING_DAYS; dayCount++ ))
do
	#random to get 1 or 2
	empCheck=$(( RANDOM%3 ))

	#assign employee hours according to employee check
	case $empCheck in
		$IS_PART_TIME)
			empHours=4
			;;
		$IS_FULL_TIME)
			empHours=8
			;;
		*)
			empHours=0
			;;
	esac
	perDaySalary=$(( $empHours*EMP_RATE_PER_HRS ))
	totalSalary=$((totalSalary+perDaySalary))
done
