x=input()
l=[*x]
d={}
try:
    for i in range(len(l)):
        d[i]=l[i]
    index_no=[int(i) for i in input().split()]
    x=""
    if len(index_no)==len(l):
        for i in range(len(index_no)):
            x+=d[index_no[i]]
        print(x)
    else:
        print("INVALID INPUT")
except:
    print("INVALID INPUT")