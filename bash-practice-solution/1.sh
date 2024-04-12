j=0
for i in "$@"
do 
    array[$j]=$i
    j=$(($j+1))
done
a=0
query=${array[0]}

for ((i=1;i<${#array[*]};i++))
do 
    if [ ${array[$i]} -eq $query ];
    then
        a=1
        break
    fi
done

if [ $a -eq 1 ];
then
    echo YES
else
    echo NO
fi