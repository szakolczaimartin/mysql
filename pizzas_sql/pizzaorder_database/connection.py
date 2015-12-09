import mysql.connector

pizza_price = []
customers = []


db = mysql.connector.connect(host="localhost", user="root", passwd="1234", db="pizza_db")


def select(sentence, list):
    try:
        cur = db.cursor()
        cur.execute(sentence)
        for i in cur.fetchall():
            list.append(i)
        return list
    finally:
        cur.close()



print(select("SELECT * FROM Customer ",customers ))
print(select("SELECT Pizza_name, Price_ft FROM Pizza ", pizza_price))
