import numpy as np
import matplotlib.pyplot as plt
import time
"""
Import vectorized() and nonvectorized() from operation.py
Use the testcases given in the folder testcases to test your code here. You can print the result to check if it is correct.
"""
import operation
x=[]
with open("./testcases/in/2.csv") as file_obj:
    lines=file_obj.read().splitlines()
    for line in lines:
        l=line.split(",")
        x.append(l)

m=np.array(x)
m=m.astype(float)

print(operation.vectorized(m))
print(operation.nonvectorized(m))
"""
Read the values from data/nonvectorized.txt and data/vectorized.txt into separate lists
Read values as float values.
"""

plt.figure(figsize=(10,6)) # Don't change this line

"""
Draw a plot as specified in the problem statment using above values
"""
x=np.arange(100)
x1=x/1e6
x2=x**2/1e6
x3=x**3/1e6
y=[]
with open('./data/vectorized.txt') as file:
    for line in file.readlines():
        y.append(float(line.strip('\n')))
y=np.array(y)
y1=[]
with open('./data/nonvectorized.txt') as file:
    for line in file.readlines():
        y1.append(float(line.strip('\n')))
y1=np.array(y1)
plt.plot(x,y1,c='y')
plt.plot(x,y,c='b')
plt.plot(x,x1,linestyle="--")
plt.plot(x,x2,c='r',linestyle='--')
plt.plot(x,x3,ls="--")
plt.legend(["Non-vectorized","Vectorized","N","N^2","N^3"])
# save your plot in the end
plt.savefig('plot.png')
