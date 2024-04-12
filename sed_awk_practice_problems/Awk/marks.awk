BEGIN{FS=","
OFS="\t"}
{if(NR==1)
{print $1,$2,$3,$4,"Average"}
else{

  value=0
  for(i=2;i<NF+1;i++)
  {value+=$i}
  print $1,$2,$3,$4,value/(NF-1)}
}