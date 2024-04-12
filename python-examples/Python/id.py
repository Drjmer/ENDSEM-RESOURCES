y="this is a longer string"
print(id(y))
x="this is a longer string"
print(id(x))
print(x is y)
l=[2*i+1 for i in range(10) if i%2==1]
print(l)
if 5>2:
        print("5 is greater than 2")
cube=lambda x: x**3
print(cube(3))
def calculate_average(*numbers):
    total = sum(numbers)
    average = total / len(numbers)
    return average

result = calculate_average(0, 20, 30,40,50,60)
print(result)  # Output: 20.0
file=open("file.txt")
content=file.read()
print(content.strip())
file1=open("drj.txt",'a')
file1.write("\nhi")