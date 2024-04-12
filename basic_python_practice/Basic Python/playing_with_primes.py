import math
def prime(n):
    i=2
    for i in range(2,n):
        if(n%i==0):
            a=0
            return a
    if i==n-1:
        a=1
        return a
l=[2]
m=[]

count=0
for i in range(1000):
    if prime(i)==1:
        l.append(i)
        count+=1
        if(l[count]-l[count-1]==2):
            count+=1
            l.append(i)
input_1=[]
with open('q1-test_input.txt') as file_obj:
    content=file_obj.readlines()
    for x in content:
        input_1.append(int(x))
# n=int(input())
# for i in range(n):
#     m=int(input())
#     print(l[m-1])
for i in range(len(input_1)):
 print(l[input_1[i]-1])