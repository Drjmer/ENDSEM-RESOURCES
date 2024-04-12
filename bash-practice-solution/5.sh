mkdir output
today_date="20051011"
extract(){
    file_name="$1"
    date=${file_name: -12:2}
    month=${file_name: -10:2}
    year=${file_name: -8:4}
}
for file in *.jpg;
do 
    echo $file
    echo ${file%.jpg}  # % is used as a wildcard
    echo 
    extract $file
    diff=$(( (10#$today_date)-(10#$year$month$date) ))
    if [ $diff -eq 0 ]
    then
        cp "$file" "./output/${file%.jpg}_today.jpg"
    elif [ $diff -lt 8 -a $diff -gt 0 ]
    then 
        cp "$file" "./output/${file%.jpg}_weekold.jpg"
    elif [ $diff -gt 7 ];then
        cp "$file" "./output/${file%.jpg}_quiteold.jpg"
    elif [ $diff -lt 0 ]
    then    
        rm $file
    fi
done
