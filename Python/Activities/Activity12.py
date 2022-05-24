def calculatenos(no):
    if no:
        return no + calculatenos(no-1)
    else:
        return 0

    


res = calculatenos(10)
print("The calculated result is : " + str(res))