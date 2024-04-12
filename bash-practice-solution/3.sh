j=0
for i in "$@"
do
    array[$j]=$i
    j=$(($j+1))
done

for ((i=0;i<$#-1;i++))
do
    for ((j=0;j<$#-i-1;j++))
    do 
        if [ ${array[$j]} -gt ${array[$(($j+1))]} ]
        then 
            temp=${array[$(($j+1))]}
            array[$(($j+1))]=${array[$j]}
            array[$j]=$temp
        fi
    done
done

echo ${array[*]}