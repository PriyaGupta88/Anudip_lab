

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
17 rows in set (0.06 sec)

mysql> create database abhishek;
Query OK, 1 row affected (0.03 sec)

mysql> use abhishek;
Database changed
mysql> insert into employ values('E101','HR',2000),('E102','HR',15000),('E103','IT',20000),('E104','IT',13500);
ERROR 1146 (42S02): Table 'abhishek.employ' doesn't exist
mysql> insert into employe values('E101','HR',2000),('E102','HR',15000),('E103','IT',20000),('E104','IT',13500);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into employe values('E101','HR',2000),('E102','HR',15000),('E103','IT',20000),('E104','IT',13500);
ERROR 1062 (23000): Duplicate entry 'E101' for key 'employe.PRIMARY'
mysql> select *from employe;
+------+----------+--------+
| id   | deptname | salary |
+------+----------+--------+
| E101 | HR       |   2000 |
| E102 | HR       |  15000 |
| E103 | IT       |  20000 |
| E104 | IT       |  13500 |
+------+----------+--------+
4 rows in set (0.00 sec)

mysql>
mysql> select deptname,avg(salary) as avgsalary from employe group by deptname;
+----------+------------+
| deptname | avgsalary  |
+----------+------------+
| HR       |  8500.0000 |
| IT       | 16750.0000 |
+----------+------------+
2 rows in set (0.01 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> select deptname,sum(salary) as totalsalary from employe group by deptname;
+----------+-------------+
| deptname | totalsalary |
+----------+-------------+
| HR       |       17000 |
| IT       |       33500 |
+----------+-------------+
2 rows in set (0.00 sec)

mysql> select deptname,max(salary) as highsalary from employe group by deptname;
+----------+------------+
| deptname | highsalary |
+----------+------------+
| HR       |      15000 |
| IT       |      20000 |
+----------+------------+
2 rows in set (0.01 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname;
+----------+------------+
| deptname | avgsalary  |
+----------+------------+
| HR       |  8500.0000 |
| IT       | 16750.0000 |
+----------+------------+
2 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname having avg(salary)>10000;
+----------+------------+
| deptname | avgsalary  |
+----------+------------+
| IT       | 16750.0000 |
+----------+------------+
1 row in set (0.00 sec)

mysql> select *from employe;
+------+----------+--------+
| id   | deptname | salary |
+------+----------+--------+
| E101 | HR       |   2000 |
| E102 | HR       |  15000 |
| E103 | IT       |  20000 |
| E104 | IT       |  13500 |
+------+----------+--------+
4 rows in set (0.00 sec)

mysql> insert into employe values('E105','markering',20000);
Query OK, 1 row affected (0.01 sec)

mysql> select *from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | markering |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname having count(*)>2;
Empty set (0.00 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname having count(*)>=2;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> select deptname,count(*) as totalemploye from employe group by deptname having count(*)>1;
+----------+--------------+
| deptname | totalemploye |
+----------+--------------+
| HR       |            2 |
| IT       |            2 |
+----------+--------------+
2 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname;
+-----------+------------+
| deptname  | avgsalary  |
+-----------+------------+
| HR        |  8500.0000 |
| IT        | 16750.0000 |
| markering | 20000.0000 |
+-----------+------------+
3 rows in set (0.00 sec)

mysql> select deptname,avg(salary) as avgsalary from employe group by deptname having avg(salary)<10000;
+----------+-----------+
| deptname | avgsalary |
+----------+-----------+
| HR       | 8500.0000 |
+----------+-----------+
1 row in set (0.00 sec)

mysql> select *from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | markering |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select deptname, min(salary)as minimumsalary from employe group by deptname having min(salary)<=20000;
+-----------+---------------+
| deptname  | minimumsalary |
+-----------+---------------+
| HR        |          2000 |
| IT        |         13500 |
| markering |         20000 |
+-----------+---------------+
3 rows in set (0.01 sec)

mysql> select * from employe;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | markering |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select e.id,e.deptname,e.salary from employe as e;
+------+-----------+--------+
| id   | deptname  | salary |
+------+-----------+--------+
| E101 | HR        |   2000 |
| E102 | HR        |  15000 |
| E103 | IT        |  20000 |
| E104 | IT        |  13500 |
| E105 | markering |  20000 |
+------+-----------+--------+
5 rows in set (0.00 sec)
