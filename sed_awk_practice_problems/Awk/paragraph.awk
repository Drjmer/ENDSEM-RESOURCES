BEGIN{regex="student_name"
regex2="roll_no" 
FS=":"
}
{
   replace1=$1
   replace2=$2
   print replace1","replace2
}
{
    if(argv[2]!=NULL)
    {
        gsub(regex,replace1,$0)
        print $0
    }
    
}