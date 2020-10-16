#It will display a welcome message

echo "HELLO,WELCOME TO EMPLOYEE INFORMATION AND WAGE CALCULATION PROGRAM"

#BELOW CODE WILL CHECK IF EMPLOYEE PRESENT OR NOT
#UC1-Attendance_check

check=$((RANDOM%2))
if [ $check == 1 ]
then
	echo "EMPLOYEE IS PRESENT TODAY"
else
	echo "EMPLOYEE IS ABSENT TODAY"
fi


#BELOW CODE WILL CALCULATE DAILYWAGE IF EMPLOYEE PRESENT
#UC2-Dailywage_calculation
if [ $check == 1 ]
then
	Dailywage=$((20*8))
	echo "Dailywage of employee per day "
	echo "20 rs/- per hour*8 hours a day is $Dailywage"
fi

#BELOW CODE WILL ADD PART TIME WAGE CALCULATION FEATURE
#UC3-Parttime_wage
parttime=$((RANDOM%2))
if [ $parttime == 1 ]
then
	Partwage=$((20*8))
	echo "Part time wage is $Partwage"
fi
