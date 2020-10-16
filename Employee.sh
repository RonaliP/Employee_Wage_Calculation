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
working_hour=8
Rate_hour=20
if [ $check == 1 ]
then
	Dailywage=$((working_hour*Rate_hour))
	echo "Dailywage of employee per day "
	echo "20 rs/- per hour*8 hours a day is $Dailywage"
fi

#BELOW CODE WILL ADD PART TIME WAGE CALCULATION FEATURE
#UC3-Parttime_wage
parttime=$((RANDOM%2))
if [ $parttime == 1 ]
then
	Partwage=$((working_hour*Rate_hour))
	echo "Part time wage is $Partwage"
fi

#BELOW CODE WILL CALCULATE WAGE USING SWITCH CASE
#UC4-Switchcase

choice=$(((RANDOM%4)+1))

case $choice in
1) echo "EMPLOYEE IS DOING FULL TIME ONLY"
   echo "THE SALARY HE WILL GET IS $((working_hour*Rate_hour))"
	;;
2) echo "EMPLOYEE IS DOING PART TIME"
   echo "THE SALARY HE WILL GET $((working_hour*Rate_hour))"
	;;
3) echo "EMPLOYEE IS ABSENT TODAY"
	;;
esac

