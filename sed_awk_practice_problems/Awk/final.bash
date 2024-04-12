f1=$1
f2=$2

while read -r line; do
    student_name=$( echo $line| awk -F ":" '{print $1}' )
    roll_no=$( echo "$line" | awk -F ":" '{print $1}')
    sed -E -e "s/student_name/$student_name/g" -e "s/roll_no/$roll_no/g" $f2
    echo 
done< $f1