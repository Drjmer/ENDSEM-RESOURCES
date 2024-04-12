BEGIN{FS=" ";OFS=";"}
{$1=$1
    if(NR==1){print $0;"Comments"}
    else{
        
        
        if(($2~/^[a-zA-Z0-9_]+.cpp$/) && ($3~/^[a-zA-Z0-9_]+.txt$/) && ($4~/^[a-zA-Z0-9_]+.pdf$/))
        {
            {print $1,$2,$3,$4,"Correct Submission Format"}
        }
        else{
            {print $1,$2,$3,$4,"Wrong Submission Format"}
        }
    }
}
