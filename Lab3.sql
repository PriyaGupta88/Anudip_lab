mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankaccount        |
| docbuddy_db        |
| ecommerce          |
| information_schema |
| joins              |
| mysql              |
| performance_schema |
| sakila             |
| sneha              |
| student_db         |
| sys                |
| world              |
+--------------------+
12 rows in set (0.12 sec)


-- creates a new database to store all tables 
mysql> create database student_management_system;
Query OK, 1 row affected (0.04 sec)

-- selects that database 
mysql> use student_management_system;
Database changed

-- creates the 'students' table with student ID, first name,last name and DOB 

mysql> create table students (stud_id varchar(10) primary key not null, first_name varchar(10) not null, last_name varchar(10) not null, DOB date not null);
Query OK, 0 rows affected (0.08 sec)

-- creates the 'enrollment' table to store which student enrolled in which course and when  

mysql>  create table enrollment (en_id varchar(10) not null, stud_id varchar(10) primary key not null, course_id varchar(10) not null, en_date date not null, foreign key (stud_id) references students(stud_id));
Query OK, 0 rows affected (0.04 sec)

-- displays all the tables in the database
mysql> show tables;
+-------------------------------------+
| Tables_in_student_management_system |
+-------------------------------------+
| enrollment                          |
| students                            |
+-------------------------------------+
2 rows in set (0.03 sec)

mysql> desc students;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stud_id    | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(10) | NO   |     | NULL    |       |
| DOB        | date        | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> insert into students values ('s101', 'Shreya', 'Utekar', '2004-04-12'), ('s102', 'Maharaja', 'Sunder', '2004-10-17'), ('s103', 'Khushboo', 'Yadav', '2001-07-15'), ('s104', 'Mehak', 'Rajbhar', '2004-03-29'), ('s105', 'Naveen', 'Jaiswal', '2002-06-10');
Query OK, 5 rows affected, 4 warnings (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 4

mysql> select * from students;
+---------+------------+-----------+------------+
| stud_id | first_name | last_name | DOB        |
+---------+------------+-----------+------------+
| s101    | Shreya     | Utekar    | 2004-04-12 |
| s102    | Maharaja   | Sunder    | 2004-10-17 |
| s103    | Khushboo   | Yadav     | 2001-07-15 |
| s104    | Mehak      | Rajbhar   | 2004-03-29 |
| s105    | Naveen     | Jaiswal   | 2002-06-10 |
+---------+------------+-----------+------------+
5 rows in set (0.00 sec)

mysql> desc enrollment;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| en_id     | varchar(10) | NO   | PRI | NULL    |       |
| stud_id   | varchar(10) | NO   | MUL | NULL    |       |
| course_id | varchar(10) | NO   |     | NULL    |       |
| en_date   | date        | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into enrollment values('e101','s101','wdr101','2025-01-18'),('e102','s102','cs102','2025-04-05'),('e103','s103','ai103','2025-03-12'),('e104','s104','ds104','2025-06-22'),('e105','s105','j105','2025-05-28');
Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+-------+---------+-----------+------------+
| en_id | stud_id | course_id | en_date    |
+-------+---------+-----------+------------+
| e101  | s101    | wdr101    | 2025-01-18 |
| e102  | s102    | cs102     | 2025-04-05 |
| e103  | s103    | ai103     | 2025-03-12 |
| e104  | s104    | ds104     | 2025-06-22 |
| e105  | s105    | j105      | 2025-05-28 |
+-------+---------+-----------+------------+
5 rows in set (0.00 sec)

-- INNER JOIN: returns only students who are enrolled (match found in both tables)  
mysql> select students.stud_id, students.first_name, students.last_name, enrollment.en_id, enrollment.course_id from students inner join enrollment on students.stud_id=enrollment.stud_id;
+---------+------------+-----------+-------+-----------+
| stud_id | first_name | last_name | en_id | course_id |
+---------+------------+-----------+-------+-----------+
| s101    | Shreya     | Utekar    | e101  | wdr101    |
| s102    | Maharaja   | Sunder    | e102  | cs102     |
| s103    | Khushboo   | Yadav     | e103  | ai103     |
| s104    | Mehak      | Rajbhar   | e104  | ds104     |
| s105    | Naveen     | Jaiswal   | e105  | j105      |
+---------+------------+-----------+-------+-----------+
5 rows in set (0.00 sec)
