BEGIN {FS=" " 
OFS=";"}
{$1=$1
if(NR==1)print $0
else{
    if(match($2,/^[a-zA-Z0-9]+[_]*[a-zA-Z0-9]*.cpp$/))
    print $0";""Correct Submission Format"
    else
    print $0";""Wrong Submission Format"
}
}
