#!/bin/bash
declare -a birthmonth;
echo "We are taking birth month of 50 individuals from year 1992 &
1993"
jancount=0
febcount=0
marcount=0
aprcount=0
maycount=0
juncount=0
julcount=0
augcount=0
sepcount=0
octcount=0
novcount=0
deccount=0
count=0
for (( i=0; i<50; i++ ))
do
birthmonth[$i]=$((1+($RANDOM%10)))
count=$(($count+1))
echo ${birthmonth[$i]}
if [[ ${birthmonth[i]} -eq 1 ]]
then
jancount=$(($jancount+1))
echo "The month is January"
elif [[ ${birthmonth[i]} -eq 2 ]]
then
febcount=$(($febcount+1))
echo "The month is february"
elif [[ ${birthmonth[i]} -eq 3 ]]
then
marcount=$(($marcount+1))
echo "The month is March"
elif [[ ${birthmonth[i]} -eq 4 ]]
then
aprcount=$(($aprcount+1))
echo "The month is April"
elif [[ ${birthmonth[i]} -eq 5 ]]
then
maycount=$(($maycount+1))
echo "The month is May"
elif [[ ${birthmonth[i]} -eq 6 ]]
then
juncount=$(($juncount+1))
echo "The month is June"
elif [[ ${birthmonth[i]} -eq 7 ]]
then
julcount=$(($julcount+1))
echo "The month is July"
elif [[ ${birthmonth[i]} -eq 8 ]]
then
augcount=$(($augcount+1))
echo "The month is August"
elif [[ ${birthmonth[i]} -eq 9 ]]
then
sepcount=$(($sepcount+1))
echo "The month is September"
elif [[ ${birthmonth[i]} -eq 10 ]]
then
octcount=$(($octcount+1))
echo "The month is Octomber"
elif [[ ${birthmonth[i]} -eq 11 ]]
then
novcount=$(($novcount+1))
echo "The month is November"
elif [[ ${birthmonth[i]} -eq 12 ]]
then
deccount=$(($deccount+1))
echo "The month is December"
fi
done
echo "January" $jancount
echo "February" $febcount
echo "March" $marcount
echo "April" $aprcount
echo "May" $maycount
echo "June" $juncount
echo "July" $julcount
echo "August" $augcount
echo "September" $sepcount
echo "Octomber" $octcount
echo "November" $novcount
echo "December" $deccount
echo "Count=" $count
