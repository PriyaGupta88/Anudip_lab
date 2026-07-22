 for the right syntax to use near 'database' at line 1
mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| college                  |
| e_commerce               |
| ecommerce                |
| ecommerce12              |
| information_schema       |
| joins                    |
| joins1                   |
| mydb                     |
| mysql                    |
| performance_schema       |
| practicedb               |
| sakila                   |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
17 rows in set (0.08 sec)

mysql> select database e_commerce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'e_commerce' at line 1
mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| bankaccount          |
| customer             |
| employee_details     |
| employee_details1    |
| order_details        |
| orders               |
| product              |
| student_info         |
+----------------------+
8 rows in set (0.03 sec)

mysql> select *from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.05 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| Rasayani |
| Panvel   |
| Thane    |
+----------+
3 rows in set (0.00 sec)

mysql> select *from customer where pin_code between 5 and 7;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
+-------------+--------+----------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer where pin_code between 5 and 8;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
+-------------+--------+----------+------------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer where pin_code not between 5 and 8;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where name between 'a' and 'f';
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
+-------------+--------+----------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer where name not between 'a' and 'f';
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where customer_id in('C4','C6','C7');
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer where pin_code in(7,8);
+-------------+--------+--------+------------------+------------+---------+----------+
| customer_id | name   | city   | email            | phone_no   | address | pin_code |
+-------------+--------+--------+------------------+------------+---------+----------+
| C5          | Neha   | Panvel | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel | devesh@gmail.com | 1234567899 | JKL     |        7 |
+-------------+--------+--------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer where pin_code not in(7,8);
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where name is null;
Empty set (0.00 sec)

mysql> select *from customer where name is not null;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer order by pin_code;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer order by name;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer order by name desc;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer order by pin_code desc;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer order by pin_code desc limit 3;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
+-------------+--------+----------+------------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select *from customer where city='panvel' andpin_code=7;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'andpin_code=7' at line 1
mysql> select *from customer where city='panvel' and pin_code=7;
+-------------+--------+--------+------------------+------------+---------+----------+
| customer_id | name   | city   | email            | phone_no   | address | pin_code |
+-------------+--------+--------+------------------+------------+---------+----------+
| C6          | Devesh | Panvel | devesh@gmail.com | 1234567899 | JKL     |        7 |
+-------------+--------+--------+------------------+------------+---------+----------+
1 row in set (0.01 sec)

mysql> select *from customer where city='panvel' or pin_code=7;
+-------------+--------+--------+------------------+------------+---------+----------+
| customer_id | name   | city   | email            | phone_no   | address | pin_code |
+-------------+--------+--------+------------------+------------+---------+----------+
| C5          | Neha   | Panvel | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel | devesh@gmail.com | 1234567899 | JKL     |        7 |
+-------------+--------+--------+------------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+--------+----------+------------------+------------+---------+----------+
| customer_id | name   | city     | email            | phone_no   | address | pin_code |
+-------------+--------+----------+------------------+------------+---------+----------+
| C123        | Avdhut | Rasayani | avdh@gmail.com   | 1234567899 | ABC     |     1234 |
| C4          | Mihir  | Rasayani | mihir@gmail.com  | 1234567899 | DEF     |        5 |
| C5          | Neha   | Panvel   | neha@gmail.com   | 1234567899 | GHI     |        8 |
| C6          | Devesh | Panvel   | devesh@gmail.com | 1234567899 | JKL     |        7 |
| C7          | Linkan | Thane    | linkan@gmail.com | 1234567899 | MNO     |        9 |
+-------------+--------+----------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select sum(pin_code) from customer;
+---------------+
| sum(pin_code) |
+---------------+
|          1263 |
+---------------+
1 row in set (0.01 sec)

mysql> select avg(pin_code) from customer;
+---------------+
| avg(pin_code) |
+---------------+
|      252.6000 |
+---------------+
1 row in set (0.01 sec)

mysql> select count(pin_code) from customer;
+-----------------+
| count(pin_code) |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.01 sec)

mysql> select max(pin_code) from customer;
+---------------+
| max(pin_code) |
+---------------+
|          1234 |
+---------------+
1 row in set (0.01 sec)

mysql> select min(pin_code) from customer;
+---------------+
| min(pin_code) |
+---------------+
|             5 |
+---------------+
1 row in set (0.00 sec)

mysql>