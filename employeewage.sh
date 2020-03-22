#
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
hour=8
wage=20
dailywage=0
dailywage(){
dailywage=$(($wage * $hour))
echo "Daily Employee Wage is $dailywage"
}
dailywage

#Employee part time wage
parttime=0
parttimewage(){
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

#Calculating Wage for Month
monthwage=0
monthwage(){
day=20
monthwage=$(($dailywage * $day))
echo "Wage of month is $monthwage"
}
monthwage

#Calculate wage till 100 hours or 20 days for month
h=0
day=0
wage=20
total=0
while [ $h -lt 100 ] && [ $day -lt 20 ]
do
	r=$((RANDOM % 2))
	if [ $r -eq 1 ]
	then
		h=$(($hour + $h))
		total=$(($h * $wage))
	else
		h=$(($(($hour / 2)) + $h))
		total=$(($h * $wage))
	fi
done
if [ $h -eq 100 ]
then
	echo $total
else
	echo $monthwage
fi

#Get the Working hours
echo "Monthly Wage hours $h"
echo "Part time wage hours $(($h / 2))"

#Store daily wage along with monthly wage
for ((i=1; i<=20; i++))
do
	arr[$i,0]=$dailywage
	arr[$i,1]=$monthwage
done

for ((i=1; i<=20; i++))
do
        echo "daily wage ${arr[$i,0]} : monthly wage ${arr[$i,1]}"
done

