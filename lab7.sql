mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankaccount        |
| employee           |
| information_schema |
| joins              |
| mysql              |
| performance_schema |
| sakila             |
| student_db         |
| sys                |
| world              |
+--------------------+
10 rows in set (0.02 sec)

mysql> use employee;
Database changed

mysql> show tables;
Empty set (0.01 sec)

mysql> use BankAccount;
Database changed
mysql> show tables;
+-----------------------+
| Tables_in_bankaccount |
+-----------------------+
| bankaccount           |
+-----------------------+
1 row in set (0.01 sec)

mysql> select * from BankAccount;
+---------+-----------------+-------------+
| acc_id  | acc_holder_name | acc_balance |
+---------+-----------------+-------------+
|  224455 | Sita            |     1500000 |
|  554488 | Laxman          |     3542016 |
|  664285 | Dashrath        |     3652400 |
|  786451 | Sumitra         |     4512300 |
| 5577132 | Kaushalya       |     6542000 |
+---------+-----------------+-------------+
5 rows in set (0.00 sec)

mysql> alter table BankAccount rename column acc_balance to salary;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount;
+---------+-----------------+---------+
| acc_id  | acc_holder_name | salary  |
+---------+-----------------+---------+
|  224455 | Sita            | 1500000 |
|  554488 | Laxman          | 3542016 |
|  664285 | Dashrath        | 3652400 |
|  786451 | Sumitra         | 4512300 |
| 5577132 | Kaushalya       | 6542000 |
+---------+-----------------+---------+
5 rows in set (0.00 sec)

mysql> select avg(salary) from BankAccount;
+--------------+
| avg(salary)  |
+--------------+
| 3949743.2000 |
+--------------+
1 row in set (0.00 sec)

mysql> select acc_holder_name, salary from BankAccount where salary > (select avg(salary) from bankAccount);
+-----------------+---------+
| acc_holder_name | salary  |
+-----------------+---------+
| Sumitra         | 4512300 |
| Kaushalya       | 6542000 |
+-----------------+---------+
2 rows in set (0.00 sec)

mysql> select * from BankAccount;
+---------+-----------------+---------+
| acc_id  | acc_holder_name | salary  |
+---------+-----------------+---------+
|  224455 | Sita            | 1500000 |
|  554488 | Laxman          | 3542016 |
|  664285 | Dashrath        | 3652400 |
|  786451 | Sumitra         | 4512300 |
| 5577132 | Kaushalya       | 6542000 |
+---------+-----------------+---------+
5 rows in set (0.00 sec)

mysql> select MAX(salary) as second_highest_salary from BankAccount where salary < (select MAX(salary) from BankAccount);
+-----------------------+
| second_highest_salary |
+-----------------------+
|               4512300 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select distinct salary from BankAccount order by salary desc limit 1 offset 1;
+---------+
| salary  |
+---------+
| 4512300 |
+---------+
1 row in set (0.00 sec)

mysql> create table employee(id int(10) primary key, name VARCHAR(30) not null, dept VARCHAR(20) NOT NULL, salary int(10));
Query OK, 0 rows affected, 2 warnings (0.07 sec)

mysql> insert into employee values(01, 'Vinita', 'IT', 100000), (02, 'Vaibavi', 'HR', 30000);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | Vinita  | IT   | 100000 |
|  2 | Vaibavi | HR   |  30000 |
+----+---------+------+--------+
2 rows in set (0.00 sec)

mysql> delimiter //
mysql> create procedure getemployee()
    -> begin
    -> select * from employee;
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> delimiter;
    -> delimiter ;
    -> ^C
mysql> call getemployee();
    -> ^C
mysql> DELIMITER ;
mysql> call getemployee();
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | Vinita  | IT   | 100000 |
|  2 | Vaibavi | HR   |  30000 |
+----+---------+------+--------+
2 rows in set (0.01 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> delimiter //
mysql> create procedure getemployeebydepart(IN dpt_name VARCHAR(20))
    -> begin
    -> select * from employee where dept = dpt_name;
    -> end //
Query OK, 0 rows affected (0.05 sec)

mysql> DELIMITER ;
mysql> call getemployeebydepart('HR');
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  2 | Vaibavi | HR   |  30000 |
+----+---------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> select * from employee;
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | Vinita  | IT   | 100000 |
|  2 | Vaibavi | HR   |  30000 |
+----+---------+------+--------+
2 rows in set (0.00 sec)

mysql> DELIMITER //
mysql> create procedure addemployee(IN id int,IN name varchar(30), IN dept varchar(20), IN salary int)
    -> begin
    -> insert into employee values(id, name, dept, salary);
    -> end //
Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER ;
mysql> call addemployee(5, 'Vithika', 'AI', 15000);
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | Vinita  | IT   | 100000 |
|  2 | Vaibavi | HR   |  30000 |
|  5 | Vithika | AI   |  15000 |
+----+---------+------+--------+
3 rows in set (0.00 sec)

mysql> DELIMITER //
mysql>  create procedure getemployeecount(OUT total int)
    -> begin
    -> select count(*) into total from employee;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> call getemployeecount(@total);
Query OK, 1 row affected (0.02 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      3 |
+--------+
1 row in set (0.00 sec)
