import mysql.connector as mysql


mydb = mysql.connect(
    host = 'localhost',
    user = 'root',
    password = '12345',
    database = 'diicc'
)

mycursor = mydb.cursor()

mycursor.execute("SHOW TABLES")

for x in mycursor:
    print(x)

