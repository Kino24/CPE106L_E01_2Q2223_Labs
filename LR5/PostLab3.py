import sqlite3

mydb = sqlite3.connect(
  database="Lab5Post2.db"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM ADVENTURE_TRIP")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)
