mysql> create table Students(
    -> StuID INT PRIMARY KEY,
    -> Name VARCHAR(50),
    -> Maths INT,
    -> Chemistry INT,
    -> Physics INT,
    -> Age INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO Students VALUES(1, 'Alice', 85, 89, 77, 24),
    -> (2, 'Bob', 70, 66, 81, 20),
    -> (3, 'Tobi', 69, 70, 65, 23),
    -> (4, 'Lala', 55, 60, 75, 21);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Students;
+-------+-------+-------+-----------+---------+------+
| StuID | Name  | Maths | Chemistry | Physics | Age  |
+-------+-------+-------+-----------+---------+------+
|     1 | Alice |    85 |        89 |      77 |   24 |
|     2 | Bob   |    70 |        66 |      81 |   20 |
|     3 | Tobi  |    69 |        70 |      65 |   23 |
|     4 | Lala  |    55 |        60 |      75 |   21 |
+-------+-------+-------+-----------+---------+------+
4 rows in set (0.00 sec)

mysql> SELECT Name, Age FROM Students;
+-------+------+
| Name  | Age  |
+-------+------+
| Alice |   24 |
| Bob   |   20 |
| Tobi  |   23 |
| Lala  |   21 |
+-------+------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM Students WHERE Physics > 75;
+-------+-------+-------+-----------+---------+------+
| StuID | Name  | Maths | Chemistry | Physics | Age  |
+-------+-------+-------+-----------+---------+------+
|     1 | Alice |    85 |        89 |      77 |   24 |
|     2 | Bob   |    70 |        66 |      81 |   20 |
+-------+-------+-------+-----------+---------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Students VALUES(5, 'Nana', 99, 87, 95, 20);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Students VALUES(6, 'Sven', 88, 82, NULL, 21);
Query OK, 1 row affected (0.01 sec)

mysql> UPDATE Students SET Age = 23 WHERE Name = 'Alice';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Students SET Chemistry = Chemistry + 5;
Query OK, 6 rows affected (0.00 sec)
Rows matched: 6  Changed: 6  Warnings: 0

mysql> DELETE FROM Students WHERE Name = 'Bob';
Query OK, 1 row affected (0.01 sec)

mysql> DELETE FROM Students WHERE Maths < 70;
Query OK, 2 rows affected (0.01 sec)