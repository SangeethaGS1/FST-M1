"""numbers = (5,10,12,20)
for i in numbers:
    if i%5==0:
        print(i)"""

numbers = tuple(map(int,input("Enter the numbers").split(',')))
for i in numbers:
    if i%5==0:
        print(i)
