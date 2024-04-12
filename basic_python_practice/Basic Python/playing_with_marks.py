n=[]
for i in range(5):
    l=input().split()
    print(l)
    m=l[0].split("_")
    print(m)
    l.pop(0)
    m.append(l[0])
    print(m)
    n.append(m)
sorted_list=sorted(n,key=lambda a:a[4],reverse=True)
sorted_list1=sorted(sorted_list,key=lambda a:a[2])
for i in range(len(sorted_list1)):
    x="_".join(sorted_list1[i][:4])
    y=sorted_list1[i][4]
    print(x,y)
