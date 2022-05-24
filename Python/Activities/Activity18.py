import pandas
data = pandas.read_csv("C:/Users/SangeethaShadakshara/PythonPrograms/sample.csv")
print(data)

print("usernames")
print(data["Usernames"])
	
print("Username: ", data["Usernames"][1], " | ", "Password: ", data["Passwords"][1])

print(data.sort_values('Usernames'))
print("paaswords sorting")

print(data.sort_values('Passwords',ascending=False))