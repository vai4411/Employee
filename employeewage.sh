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

#Employee part time wage
parttime=0
parttimewage(){
hour=8
wage=20
Time=$(($hour / 2))
parttime=$(($Time * $wage))
echo "Part time Employee Wage is $parttime"
}
parttimewage

#Switch case
echo -e "1.Attendance\n2.Daily Wage\n3.Part Time Wage\n4.Exit" 
read ch
case $ch in
"1")attendance;;
"2")dailywage;;
"3")parttimewage;;
"4")exit;;
"*")echo Invalid choice
esac
