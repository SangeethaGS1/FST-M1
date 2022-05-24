
y=0
"""for x in range(10):
    y = y + x
    print(y)"""


numbers = list(input("Enter a sequence of comma separated values: ").split(", "))
sum = 0

for number in numbers:
  sum += int(number)

print(sum)


