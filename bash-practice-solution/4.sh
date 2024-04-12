catalan(){
    local n=$1

    if [[ $n -eq 1 || $n -eq 0 ]];then 
        echo 1

    else 
        result=0
        for ((i=0;i<$((n));i++))
        do
            local prev1=$(catalan $((n-i-1)))
            local prev2=$(catalan $i)
            local result=$((result+prev1*prev2))
            
        done
        echo $result
    fi
}
read -p "Enter value of n: " y
ans=$(catalan $y)
echo $ans
            
