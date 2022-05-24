"""numberList=[1, 2, 3, 4, 5]
evenNumber = []
oddNumber = []
for x in numberList:
    if (x%2)==0:
        evenNumber.append(x)
        print(evenNumber)
    else:
        #print(x)
        oddNumber.append(x)
        print(oddNumber)"""


# Given lists
listOne = [10, 20, 23, 11, 17]
listTwo = [13, 43, 24, 36, 12]

# Print the lists
print("First List ", listOne)
print("Second List ", listTwo)

# Declare a third list that will contain the result
thirdList = []
fourthList = []

# Iterate through first list to get odd elements
for num in listOne:
    if (num % 2 != 0):
        thirdList.append(num)
        
# Iterate through first list to get even elements
for num in listTwo:
    if (num % 2 == 0):
        fourthList.append(num)

# Print result
print("odd result List is:")
print(thirdList)

print("even result List is:")
print(fourthList)

