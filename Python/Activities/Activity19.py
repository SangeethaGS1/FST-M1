import pandas
from pandas import ExcelFile
from pandas import ExcelWriter

data = {
    "FirstName":["Satvik","Avinash","Lahri"],
    "LastName":["Shah","kati","rath"],
    "Email":["satshah@example.com", "avinashk@example.com","lahri.rath@example.com"],
    "PhoneNumber":  ["4537829158", "5892184058", "4528727830"]
}

frame = pandas.DataFrame(data)

writer = ExcelWriter("Details.xlsx")
frame.to_excel(writer,"sheet1",index=False)

writer.save()