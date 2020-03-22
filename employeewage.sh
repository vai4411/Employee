#!/bin/bash -x

echo "Welcome Employee"

#Employee attendance
attendance(){
a=$((RANDOM % 2))
if [ $a -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
}
attendance

#Employee Wage
dailywage=0
dailywage(){
wage=20
hour=8
dailywage=$(($wage * $hour))
echo "Daily Employee Wage is $dailywage"
}
dailywage
