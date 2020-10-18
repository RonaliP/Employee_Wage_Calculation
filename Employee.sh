#It will display a welcome message

echo "HELLO,WELCOME TO EMPLOYEE INFORMATION AND WAGE CALCULATION PROGRAM"

working_hour=8
Rate_hour=20
check=$((RANDOM%2))

if [ $check == 1 ]
then
	echo "EMPLOYEE IS PRESENT TODAY"
	Dailywage=$((working_hour*Rate_hour))

else
	echo "EMPLOYEE IS ABSENT TODAY"
fi

#BELOW CODE WILL ADD PART TIME WAGE CALCULATION FEATURE

echo "____________________________________"
parttime=$((RANDOM%2))
if [ $parttime == 1 ]
then
	Partwage=$((working_hour*Rate_hour))
	echo "Part time wage is $Partwage"
fi

echo "____________________________________"
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

echo "____________________________________"
Monthlywage=0
count=0
for((i=1;i<=30;i++))
do
    ispresent=$((RANDOM%2))
    if [ $ispresent == 1 ]
    then
            count=$(($count+1))
	    Monthlywage=$(( $Monthlywage + (20*8)))
     fi
done
echo "EMPLOYEE WAS PRESENT FOR $count DAYS IN MONTH"
echo "EMPLOYEE'S MONTHLY WAGE BASED ON HIS ATTENDANCE=" $Monthlywage

echo "_____________________________________"
#USED FUNCTION AND STORED IN ARRAY AND DISPLAYED

calculate()
{
Maxday=$1
hour=$2
count=0
TotalWage=0
for((i=1;i<=$Maxday;i++))
do
        ispresent=$((RANDOM%2))

        if [ $ispresent -eq 1 ]
        then
                count=$((count+1))
                hour=$(($hour+$hour))
		if [ $hour -ge 100 ]
		then
			echo "Hours reached to maximum 100"
			break
		fi

                Perdaywage=$((Rate_hour*working_hour))
                arr[$i]=$(("$Perdaywage"))
                TotalWage=$(($TotalWage+$Perdaywage))
		echo "Day $count    ${arr[$i]}    $TotalWage"
        fi

done
echo "TOTAL WORKING HOURS EMPLOYEE WORKED IN 20 DAYS=" $hour
TotalWage=$((20*$hour))
echo "TOTAL WAGE WILL BE GIVEN=" $TotalWage
}

calculate 20 8
