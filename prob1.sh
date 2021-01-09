!/bin/bash
declare -A diceoutput;
read -p "Enter the vlue of n=" n
onecount=0
twocount=0
threecount=0
fourcount=0
fivecount=0
sixcount=0
for (( i=0; i<n; i++ ))
do
diceoutput[$i]=$((1+($RANDOm%6)))
if [[ ${diceoutput[$i]} -eq 1 ]]
then
onecount=$(($onecount+1))
echo "Diceputput=" ${diceoutput{$i}} $onecount
elif [[ ${diceoutput[$i]} -eq 2 ]]
then
twocount=$(($twocount+1))
echo "Diceputput=" ${diceoutput{$i}} $twocount
elif [[ ${diceoutput[$i]} -eq 3 ]]
then
threecount=$(($threecount+1))
echo "Diceputput=" ${diceoutput{$i}} $threecount
elif [[ ${diceoutput[$i]} -eq 4 ]]
then
fourcount=$(($fourcount+1))
echo "Diceputput=" ${diceoutput{$i}} $fourcount
elif [[ ${diceoutput[$i]} -eq 5 ]]
then
fivecount=$(($fivecount+1))
echo "Diceputput=" ${diceoutput{$i}} $fivecount
elif [[ ${diceoutput[$i]} -eq 6 ]]
then
sixcount=$(($sixcount+1))
echo "Diceputput=" ${diceoutput{$i}} $sixcount
fi
if [[ $onecount -eq 10 ]]
then
echo "1 no reached 10 count first"
max=$onecount
echo "Max= 1 " $max
break
elif [[ $twocount -eq 10 ]]
echo "2 no reached 10 count first"
max=$twocount
echo "Max= 2 " $max
break
elif [[ $threecount -eq 10 ]]
echo "3 no reached 10 count first"
max=$threecount
echo "Max= 3 " $max
break
elif [[ $fourcount -eq 10 ]]
echo "4 no reached 10 count first"
max=$fourcount
echo "Max= 4 " $max
break
elif [[ $fivecount -eq 10 ]]
echo "5 no reached 10 count first"
max=$fivecount
echo "Max= 5 " $max
break
elif [[ $sixcount -eq 10 ]]
echo "6 no reached 10 count first"
max=$threecount
echo "Max= 6 " $max
break
fi
done
declare -a order;
order[0]=$onecount
order[1]=$twocount
order[2]=$threecount
order[3]=$fourcount
order[4]=$fivecount
order[5]=$sixcount
echo "Total 1 count=" ${order[0]}
echo "Total 2 count=" ${order[1]}
echo "Total 3 count=" ${order[2]}
echo "Total 4 count=" ${order[3]}
echo "Total 5 count=" ${order[4]}
echo "Total 6 count=" ${order[5]}
for (( i=0; i<=4; i++ ))
do
for (( j=i+1; j<=5; j++ ))
do
if [[ ${order[i]} -gt ${order[j]} ]]
then
z="${order[i]}"
order[$i]="${order[j]}"
order[$j]=$z
fi
done
done
echo ${order[@]}
echo ${!order[@]}
