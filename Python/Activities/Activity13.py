"""def sumOfNumbers(arg1,arg2):
    return arg1+arg2

result = sumOfNumbers(4,5)
print(result)"""


def sumOfNumbers(a):
    sum=0
    print(a)
    for i in a:
        print(i)
        sum = sum+i  
    return sum

b = [1, 2, 3]
res = sumOfNumbers(b)

print(res)
