
(i) Add 5 rows in the employee and dept tables.

mysql> insert into employee values(1,"Arpith",'1995-04-10'," villa01",'2019-02-10',123456,1,15000,'co');
Query OK, 1 row affected (0.28 sec)

mysql> insert into employee values(2,"John",'1998-06-10'," villa011",'2016-02-10',1234567891,2,24000,'developer');
Query OK, 1 row affected (0.29 sec)

mysql> insert into employee values(3,"Riches",'1993-06-10'," villa021",'2015-02-10',1234345343,2,4000,'developer');
Query OK, 1 row affected (0.40 sec)


mysql> insert into employee values(4,"Meha",'1993-09-15'," villa221",'2017-12-11',98777546,3,7000,'tester');
Query OK, 1 row affected (0.22 sec)

mysql> insert into employee values(5,"Noble",'1991-04-17'," villa222",'2015-12-17',98777846,4,25000,'typist');
Query OK, 1 row affected (0.19 sec)

mysql> insert into department values(1,"MARKETING","NEW-YORK");
Query OK, 1 row affected (0.52 sec)

mysql> insert into department values(2,"OPERATION","NEPAL");
Query OK, 1 row affected (0.16 sec)

mysql> insert into department values(3,"SALES","DUBAI");
Query OK, 1 row affected (0.14 sec)

mysql> insert into department values(4,"FINANCE","PARIS");
Query OK, 1 row affected (0.15 sec)

mysql> insert into department values(5,"PRODUCTION ","CALIFORNIA");
Query OK, 1 row affected (0.83 sec)



(ii) Display all the records from the above tables

mysql> select * from employee;
+--------+----------+------------+-----------+------------+------------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address   | DOJ        | mobile_no  | dept_no | salary | designation |
+--------+----------+------------+-----------+------------+------------+---------+--------+-------------+
|      1 | Arpith   | 1995-04-10 |  villa01  | 2019-02-10 |     123456 |       1 |  15000 | co          |
|      2 | John     | 1998-06-10 |  villa011 | 2016-02-10 | 1234567891 |       2 |  24000 | developer   |
|      3 | Riches   | 1993-06-10 |  villa021 | 2015-02-10 | 1234345343 |       2 |   4000 | developer   |
|      4 | Meha     | 1993-09-15 |  villa221 | 2017-12-11 |   98777546 |       3 |   7000 | tester      |
|      5 | Noble    | 1991-04-17 |  villa222 | 2015-12-17 |   98777846 |       4 |  18000 | typist      |
+--------+----------+------------+-----------+------------+------------+---------+--------+-------------+
5 rows in set (0.48 sec)

mysql> select * from department;
+---------+------------+------------+
| dept_no | dept_name  | location   |
+---------+------------+------------+
|       1 | MARKETING  | NEW-YORK   |
|       2 | OPERATION  | NEPAL      |
|       3 | SALES      | DUBAI      |
|       4 | FINANCE    | PARIS      |
|       5 | PRODUCTION | CALIFORNIA |
+---------+------------+------------+
5 rows in set (0.11 sec)

(iii) Display the empno and name of all the employees from department no2.

mysql> select emp_no,emp_name from employee where dept_no=2;
+--------+----------+
| emp_no | emp_name |
+--------+----------+
|      2 | John     |
|      3 | Riches   |
+--------+----------+
2 rows in set (0.00 sec)

(iv) Display empno,name,designation,dept no and salary in the descending order of salary.

mysql> select emp_no,emp_name,designation,dept_no,salary from employee order by salary  desc;
+--------+----------+-------------+---------+--------+
| emp_no | emp_name | designation | dept_no | salary |
+--------+----------+-------------+---------+--------+
|      2 | John     | developer   |       2 |  24000 |
|      5 | Noble    | typist      |       4 |  18000 |
|      1 | Arpith   | co          |       1 |  15000 |
|      4 | Meha     | tester      |       3 |   7000 |
|      3 | Riches   | developer   |       2 |   4000 |
+--------+----------+-------------+---------+--------+
5 rows in set (0.00 sec)

(v)	Display the empno and name of all employees whose salary is between 2000 and 5000

mysql> select emp_no,emp_name from employee where salary  between 2000 and 5000;
+--------+----------+
| emp_no | emp_name |
+--------+----------+
|      3 | Riches   |
+--------+----------+

(vi) Display all designations without duplicate values.

mysql> select DISTINCT designation from employee;
+-------------+
| designation |
+-------------+
| co          |
| developer   |
| tester      |
| typist      |
+-------------+
4 rows in set (0.00 sec)

(vii) Display the dept name and total salary of employees of each department.

mysql> select department.dept_name,sum(employee.salary) from employee inner join department on  employee.dept_no=department.dept_no group by employee.dept_no;
+-----------+----------------------+
| dept_name | sum(employee.salary) |
+-----------+----------------------+
| MARKETING |                15000 |
| OPERATION |                28000 |
| SALES     |                 7000 |
| FINANCE   |                18000 |
+-----------+----------------------+
4 rows in set (0.00 sec)

(viii)	Change the salary of employees to 25000 whose designation is ‘Typist’

mysql> update employee set salary=25000 where designation='typist';
Query OK, 1 row affected (0.14 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee where designation='typist';
+--------+----------+------------+-----------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address   | DOJ        | mobile_no | dept_no | salary | designation |
+--------+----------+------------+-----------+------------+-----------+---------+--------+-------------+
|      5 | Noble    | 1991-04-17 |  villa222 | 2015-12-17 |  98777846 |       4 |  25000 | typist      |
+--------+----------+------------+-----------+------------+-----------+---------+--------+-------------+
1 row in set (0.00 sec)


(ix) Change the mobile no of employee named ‘john’

mysql> update employee set mobile_no=0868877653 where emp_name='John';
Query OK, 1 row affected (0.20 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> select * from employee where emp_name='John';
+--------+----------+------------+-----------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address   | DOJ        | mobile_no | dept_no | salary | designation |
+--------+----------+------------+-----------+------------+-----------+---------+--------+-------------+
|      2 | John     | 1998-06-10 |  villa011 | 2016-02-10 | 868877653 |       2 |  24000 | developer   |
+--------+----------+------------+-----------+------------+-----------+---------+--------+-------------+
1 row in set (0.00 sec)



(xi)Select the department that has total salary paid for its employees more than 25000

mysql> select department.dept_name,sum(employee.salary) from employee inner join department on department.dept_no=employee.dept_no group by department.dept_name having sum(employee.salary)>25000;
+-----------+----------------------+
| dept_name | sum(employee.salary) |
+-----------+----------------------+
| OPERATION |                28000 |
+-----------+----------------------+
1 row in set (0.12 sec)
