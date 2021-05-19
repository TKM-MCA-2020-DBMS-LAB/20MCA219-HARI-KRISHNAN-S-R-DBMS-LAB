*********************EXPERIMENT NO:2******************************

DATA DEFINITION LANGUAGE (DDL) COMMANDS

Database for an organisation. 

(i) create the database

mysql> create database DBMS;
Query OK, 1 row affected (2.25 sec)

(ii) Select the current database 

mysql> use DBMS;
Database changed

(iii) Create the following tables. (iv)	Include necessary constraints.

	a.employee (emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary).

mysql> create table employee(emp_no int(100) NOT NULL PRIMARY KEY,emp_name varchar(100)NOT NULL,DOB date NOT NULL,address varchar(100),DOJ date NOT NULL,mobile_no int(12) NOT NULL,dept_no int(20) NOT NULL,salary int(40) NOT NULL);
Query OK, 0 rows affected, 4 warnings (3.22 sec)

mysql> DESC employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| emp_no    | int          | NO   | PRI | NULL    |       |
| emp_name  | varchar(100) | NO   |     | NULL    |       |
| DOB       | date         | NO   |     | NULL    |       |
| address   | varchar(100) | YES  |     | NULL    |       |
| DOJ       | date         | NO   |     | NULL    |       |
| mobile_no | int          | NO   |     | NULL    |       |
| dept_no   | int          | NO   |     | NULL    |       |
| salary    | int          | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (1.25 sec)

b.department (dept_no, dept_name, location).

mysql> create table department(dept_no int(40) NOT NULL,dept_name varchar(40) NOT NULL,location varchar(100) NOT NULL);
Query OK, 0 rows affected, 1 warning (2.01 sec)

mysql> desc department;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| dept_no   | int          | NO   |     | NULL    |       |
| dept_name | varchar(40)  | NO   |     | NULL    |       |
| location  | varchar(100) | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.29 sec)

(v)List all the tables in the current database

mysql> show tables;
+----------------+
| Tables_in_dbms |
+----------------+
| department     |
| employee       |
+----------------+
2 rows in set (0.30 sec)

(vi)	Display the structure of the employee table

mysql> DESC employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| emp_no    | int          | NO   | PRI | NULL    |       |
| emp_name  | varchar(100) | NO   |     | NULL    |       |
| DOB       | date         | NO   |     | NULL    |       |
| address   | varchar(100) | YES  |     | NULL    |       |
| DOJ       | date         | NO   |     | NULL    |       |
| mobile_no | int          | NO   |     | NULL    |       |
| dept_no   | int          | NO   |     | NULL    |       |
| salary    | int          | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (1.25 sec)

(vii)	Add a new column Designation to the employee table.

mysql> alter table employee add designation varchar(30);
Query OK, 0 rows affected (2.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC employee;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| emp_no      | int          | NO   | PRI | NULL    |       |
| emp_name    | varchar(100) | NO   |     | NULL    |       |
| DOB         | date         | NO   |     | NULL    |       |
| address     | varchar(100) | YES  |     | NULL    |       |
| DOJ         | date         | NO   |     | NULL    |       |
| mobile_no   | int          | NO   |     | NULL    |       |
| dept_no     | int          | NO   |     | NULL    |       |
| salary      | int          | NO   |     | NULL    |       |
| designation | varchar(30)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.02 sec)

(viii)	Drop the column location from Dept table.

mysql> alter table department drop column location;
Query OK, 0 rows affected (1.84 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | int         | NO   |     | NULL    |       |
| dept_name | varchar(40) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

(ix)Drop the tables

mysql> drop table department;
Query OK, 0 rows affected (1.02 sec)

mysql> drop table employee;
Query OK, 0 rows affected (2.18 sec)

(x)Delete the database

mysql> drop database DBMS;
Query OK, 0 rows affected (0.47 sec)

mysql> show databases;

+--------------------+
| Database           |
+--------------------+
| dbms1              |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.11 sec)