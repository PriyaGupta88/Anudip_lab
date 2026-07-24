mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| anudeep            |
| assignment         |
| customer_behavior  |
| d_mart             |
| demo               |
| information_schema |
| mukhtar            |
| mysql              |
| performance_schema |
| pratice            |
| pratice1           |
| projects           |
| question3          |
| sakila             |
| sqltest            |
| startersql         |
| support_crm        |
| sys                |
| temp1              |
| world              |
+--------------------+
20 rows in set (0.03 sec)

mysql> created database join;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'created database join' at line 1
mysql> create database joins;
Query OK, 1 row affected (0.03 sec)

mysql> use joins;
Database changed
mysql> create table departments(dpt_id int(5) primary key,dpt_name varchar(30) not null );
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> desc departments;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| dpt_id   | int         | NO   | PRI | NULL    |       |
| dpt_name | varchar(30) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into departments values( 1,"HR"),(2,"IT"),(3,"finance"),(4,"marketing");
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from departments;
+--------+-----------+
| dpt_id | dpt_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | marketing |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> create table employees(emp_id int(5) primary key ,emp_name varchar(30) not null,dpt_id int,foreign key (dpt_id) references departments(dpt_id));
Query OK, 0 rows affected, 1 warning (0.09 sec)

mysql> desc employees;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(30) | NO   |     | NULL    |       |
| dpt_id   | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employees values(1,"mukhtar",1),(2,"ram",2),(3,"ritik",1),(4,"raju",null),(5,"priya",4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from departments;
+--------+-----------+
| dpt_id | dpt_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | marketing |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> select * from employees;
+--------+----------+--------+
| emp_id | emp_name | dpt_id |
+--------+----------+--------+
|      1 | mukhtar  |      1 |
|      2 | ram      |      2 |
|      3 | ritik    |      1 |
|      4 | raju     |   NULL |
|      5 | priya    |      4 |
+--------+----------+--------+
5 rows in set (0.00 sec)

mysql> select emp_name,dpt_name from employees inner join departments on employees.dpt_id = departments.dpt_id;
+----------+-----------+
| emp_name | dpt_name  |
+----------+-----------+
| mukhtar  | HR        |
| ritik    | HR        |
| ram      | IT        |
| priya    | marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dpt_name from employees left join departments on employees.dpt_id = departments.dpt_id;
+----------+-----------+
| emp_name | dpt_name  |
+----------+-----------+
| mukhtar  | HR        |
| ram      | IT        |
| ritik    | HR        |
| raju     | NULL      |
| priya    | marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dpt_name from employees right join departments on employees.dpt_id = departments.dpt_id;
+----------+-----------+
| emp_name | dpt_name  |
+----------+-----------+
| mukhtar  | HR        |
| ritik    | HR        |
| ram      | IT        |
| NULL     | finance   |
| priya    | marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dpt_name from employees full join departments ;
+----------+-----------+
| emp_name | dpt_name  |
+----------+-----------+
| mukhtar  | marketing |
| mukhtar  | finance   |
| mukhtar  | IT        |
| mukhtar  | HR        |
| ram      | marketing |
| ram      | finance   |
| ram      | IT        |
| ram      | HR        |
| ritik    | marketing |
| ritik    | finance   |
| ritik    | IT        |
| ritik    | HR        |
| raju     | marketing |
| raju     | finance   |
| raju     | IT        |
| raju     | HR        |
| priya    | marketing |
| priya    | finance   |
| priya    | IT        |
| priya    | HR        |
+----------+-----------+
20 rows in set, 1 warning (0.01 sec)

mysql> select emp_name,dpt_name from employees cross join departments ;
+----------+-----------+
| emp_name | dpt_name  |
+----------+-----------+
| mukhtar  | marketing |
| mukhtar  | finance   |
| mukhtar  | IT        |
| mukhtar  | HR        |
| ram      | marketing |
| ram      | finance   |
| ram      | IT        |
| ram      | HR        |
| ritik    | marketing |
| ritik    | finance   |
| ritik    | IT        |
| ritik    | HR        |
| raju     | marketing |
| raju     | finance   |
| raju     | IT        |
| raju     | HR        |
| priya    | marketing |
| priya    | finance   |
| priya    | IT        |
| priya    | HR        |
+----------+-----------+
20 rows in set (0.00 sec)

