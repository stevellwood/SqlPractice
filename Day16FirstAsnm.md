Enter password: *****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 5.7.13-log MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use tiy;
Database changed
mysql> select * from student;
+-----+------------+-----------+---------------------+------------+
| id  | first_name | last_name | years_of_experience | start_date |
+-----+------------+-----------+---------------------+------------+
| 100 | Eric       | Ephram    |                   2 | 2016-03-31 |
| 110 | Greg       | Gould     |                   6 | 2016-09-30 |
| 120 | Adam       | Ant       |                   5 | 2016-06-02 |
| 130 | Howard     | Hess      |                   1 | 2016-02-28 |
| 140 | Charles    | Caldwell  |                   7 | 2016-05-07 |
| 150 | James      | Joyce     |                   9 | 2016-08-27 |
| 160 | Doug       | Dumas     |                  13 | 2016-07-04 |
| 170 | Kevin      | Kraft     |                   3 | 2016-04-15 |
| 180 | Frank      | Fountain  |                   8 | 2016-01-31 |
| 190 | Brian      | Biggs     |                   4 | 2015-12-25 |
+-----+------------+-----------+---------------------+------------+
10 rows in set (0.00 sec)
1) Create a list of students showing first and last names only.
mysql> select first_name, last_name from student;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Eric       | Ephram    |
| Greg       | Gould     |
| Adam       | Ant       |
| Howard     | Hess      |
| Charles    | Caldwell  |
| James      | Joyce     |
| Doug       | Dumas     |
| Kevin      | Kraft     |
| Frank      | Fountain  |
| Brian      | Biggs     |
+------------+-----------+
10 rows in set (0.00 sec)
2) Create a list of students with all the columns but only if the student has less than 8 years experience

mysql> select * from student where years_of_experience < 8;
+-----+------------+-----------+---------------------+------------+
| id  | first_name | last_name | years_of_experience | start_date |
+-----+------------+-----------+---------------------+------------+
| 100 | Eric       | Ephram    |                   2 | 2016-03-31 |
| 110 | Greg       | Gould     |                   6 | 2016-09-30 |
| 120 | Adam       | Ant       |                   5 | 2016-06-02 |
| 130 | Howard     | Hess      |                   1 | 2016-02-28 |
| 140 | Charles    | Caldwell  |                   7 | 2016-05-07 |
| 170 | Kevin      | Kraft     |                   3 | 2016-04-15 |
| 190 | Brian      | Biggs     |                   4 | 2015-12-25 |
+-----+------------+-----------+---------------------+------------+
7 rows in set (0.00 sec)

3) Create a list of students showing the lastname, startdate, and id columns only and sorted by last_name in ascending sequence
mysql> SELECT * FROM student ORDER BY last_name ASC;
+-----+------------+-----------+---------------------+------------+
| id  | first_name | last_name | years_of_experience | start_date |
+-----+------------+-----------+---------------------+------------+
| 120 | Adam       | Ant       |                   5 | 2016-06-02 |
| 190 | Brian      | Biggs     |                   4 | 2015-12-25 |
| 140 | Charles    | Caldwell  |                   7 | 2016-05-07 |
| 160 | Doug       | Dumas     |                  13 | 2016-07-04 |
| 100 | Eric       | Ephram    |                   2 | 2016-03-31 |
| 180 | Frank      | Fountain  |                   8 | 2016-01-31 |
| 110 | Greg       | Gould     |                   6 | 2016-09-30 |
| 130 | Howard     | Hess      |                   1 | 2016-02-28 |
| 150 | James      | Joyce     |                   9 | 2016-08-27 |
| 170 | Kevin      | Kraft     |                   3 | 2016-04-15 |
+-----+------------+-----------+---------------------+------------+
10 rows in set (0.00 sec)

4) Create a list of students showing all columns but only if the student first name is Adam, James, or Frank and sort them in last_name descending sequence.

mysql> select * from student where first_name='Adam' or first_name='James' or fi
rst_name='Frank' order by last_name DESC;
+-----+------------+-----------+---------------------+------------+
| id  | first_name | last_name | years_of_experience | start_date |
+-----+------------+-----------+---------------------+------------+
| 150 | James      | Joyce     |                   9 | 2016-08-27 |
| 180 | Frank      | Fountain  |                   8 | 2016-01-31 |
| 120 | Adam       | Ant       |                   5 | 2016-06-02 |
+-----+------------+-----------+---------------------+------------+
3 rows in set (0.00 sec)

5  Create a list of students showing firstname, lastname and startdate where the startdate is between Jan 1, 2016 and June 30, 2016 and order the list by descending start_date sequence.

mysql> select first_name, last_name, start_date from student where start_date BE
TWEEN '2016-01-01' AND '2016-06-30' order by start_date DESC;
+------------+-----------+------------+
| first_name | last_name | start_date |
+------------+-----------+------------+
| Adam       | Ant       | 2016-06-02 |
| Charles    | Caldwell  | 2016-05-07 |
| Kevin      | Kraft     | 2016-04-15 |
| Eric       | Ephram    | 2016-03-31 |
| Howard     | Hess      | 2016-02-28 |
| Frank      | Fountain  | 2016-01-31 |
+------------+-----------+------------+
6 rows in set (0.00 sec)
mysql> select class_id from studentToClass where studentid = 150;
+----------+
| class_id |
+----------+
|        1 |
|        2 |
+----------+
2 rows in set (0.14 sec)

mysql> select classid from classToMajor where majorid = 4;
+---------+
| classid |
+---------+
|       4 |
|       1 |
|       2 |
+---------+
3 rows in set (0.00 sec)

Therefore, the student 150 needs to take class 4 from the major series to complete major 4.