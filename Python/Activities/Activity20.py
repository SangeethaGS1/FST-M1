import pandas

data = pandas.read_excel("C:/Users/SangeethaShadakshara/PythonPrograms/Details.xlsx")
#print(data)

#print(data.shape)


print(data["Email"])
print(data.sort_values("FirstName"))