
mysql> show databases
    -> show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show databases' at line 2
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| smart              |
| sys                |
| world              |
+--------------------+
7 rows in set (0.03 sec)

mysql> use smart;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_smart |
+-----------------+
| students        |
| table_1         |
+-----------------+
2 rows in set (0.05 sec)

mysql> select * from students;
+---------+-------+---------+
| roll_no | name  | courses |
+---------+-------+---------+
|       1 | Raja  | CSE     |
|       2 | Bunty | AIML    |
+---------+-------+---------+
2 rows in set (0.06 sec)

mysql> select name from students;
+-------+
| name  |
+-------+
| Raja  |
| Bunty |
+-------+
2 rows in set (0.00 sec)

mysql> update students set name = 'Priyanka' where roll_no = 1;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | Priyanka | CSE     |
|       2 | Bunty    | AIML    |
+---------+----------+---------+
2 rows in set (0.00 sec)
mysql> update students set courses = 'DS' where roll_no = 2;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | Priyanka | CSE     |
|       2 | Bunty    | DS      |
+---------+----------+---------+
2 rows in set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| courses | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into students values (3, "vithika", "IOT"), (4, "Sairam", "CMPS");
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | Priyanka | CSE     |
|       2 | Bunty    | DS      |
|       3 | vithika  | IOT     |
|       4 | Sairam   | CMPS    |
+---------+----------+---------+
4 rows in set (0.00 sec)

mysql> insert into students values (5, "bhavika", "IT"), (6, "Sai", "CMS");
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+----------+---------+
| roll_no | name     | courses |
+---------+----------+---------+
|       1 | Priyanka | CSE     |
|       2 | Bunty    | DS      |
|       3 | vithika  | IOT     |
|       4 | Sairam   | CMPS    |
|       5 | bhavika  | IT      |
|       6 | Sai      | CMS     |
+---------+----------+---------+
6 rows in set (0.00 sec)

mysql> delete from students where roll_no =1;
Query OK, 1 row affected (0.05 sec)

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       2 | Bunty   | DS      |
|       3 | vithika | IOT     |
|       4 | Sairam  | CMPS    |
|       5 | bhavika | IT      |
|       6 | Sai     | CMS     |
+---------+---------+---------+
5 rows in set (0.00 sec)

mysql> delete from students where roll_no = 6;
Query OK, 1 row affected (0.05 sec)

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       2 | Bunty   | DS      |
|       3 | vithika | IOT     |
|       4 | Sairam  | CMPS    |
|       5 | bhavika | IT      |
+---------+---------+---------+
4 rows in set (0.00 sec)

mysql> delete from students;
Query OK, 4 rows affected (0.05 sec)

mysql> select * from students;
Empty set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| courses | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into students values (5, "bhavika", "IT"), (6, "Sai", "CMS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into students values (3, "vithika", "IOT"), (4, "Sairam", "CMPS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       3 | vithika | IOT     |
|       4 | Sairam  | CMPS    |
|       5 | bhavika | IT      |
|       6 | Sai     | CMS     |
+---------+---------+---------+
4 rows in set (0.00 sec)

mysql> truncate table students;
Query OK, 0 rows affected (0.06 sec)

mysql> select * from students;
Empty set (0.00 sec)

mysql> desc students;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| courses | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into students values (3, "vithika", "IOT"), (4, "Sairam", "CMPS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into students values (5, "bhavika", "IT"), (6, "Sai", "CMS");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+---------+---------+
| roll_no | name    | courses |
+---------+---------+---------+
|       3 | vithika | IOT     |
|       4 | Sairam  | CMPS    |
|       5 | bhavika | IT      |
|       6 | Sai     | CMS     |
+---------+---------+---------+
4 rows in set (0.00 sec)

mysql> drop table students;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from students;
ERROR 1146 (42S02): Table 'smart.students' doesn't exist
mysql> desc students;
ERROR 1146 (42S02): Table 'smart.students' doesn't exist
mysql> drop database smart;
Query OK, 1 row affected (0.06 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> create database Student_DB;
Query OK, 1 row affected (0.01 sec)

mysql> use Student_DB;
Database changed
mysql> create table student(roll_no VARCHAR(30) primary key, name VARCHAR(30) not null, age INT(3) not null, address VARCHAR(30) not null);
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> insert into student values('101', 'Aryan', 25, 'Thane'), ('102', 'Sam', 28, 'Kopar'), ('103', 'Ram', 27, 'Vashi'), ('104', 'Vani', 30, 'Mulund');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
| 102     | Sam   |  28 | Kopar   |
| 103     | Ram   |  27 | Vashi   |
| 104     | Vani  |  30 | Mulund  |
+---------+-------+-----+---------+
4 rows in set (0.00 sec)

mysql> select * from student where name like 's%';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 102     | Sam  |  28 | Kopar   |
+---------+------+-----+---------+
1 row in set (0.01 sec)

mysql> select * from student where address like 'm%';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 104     | Vani |  30 | Mulund  |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%shi';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 103     | Ram  |  27 | Vashi   |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where name like '%am';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 102     | Sam  |  28 | Kopar   |
| 103     | Ram  |  27 | Vashi   |
+---------+------+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from student where name like '%an%';
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
| 104     | Vani  |  30 | Mulund  |
+---------+-------+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from student;
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
| 102     | Sam   |  28 | Kopar   |
| 103     | Ram   |  27 | Vashi   |
| 104     | Vani  |  30 | Mulund  |
+---------+-------+-----+---------+
4 rows in set (0.00 sec)

mysql> select * from student where name like 'a____';
+---------+-------+-----+---------+
| roll_no | name  | age | address |
+---------+-------+-----+---------+
| 101     | Aryan |  25 | Thane   |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like 'k____';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 102     | Sam  |  28 | Kopar   |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%m_____';
+---------+------+-----+---------+
| roll_no | name | age | address |
+---------+------+-----+---------+
| 104     | Vani |  30 | Mulund  |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where address like '%m____';
Empty set (0.00 sec)

mysql> select * from student where address like '%m______';
Empty set (0.00 sec)