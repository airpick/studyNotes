SQL Study Notes
======
----
# Overview
## What are Databases? 
* Databases are systems that allow users to store and organize data. 
* Databases are useful when dealing with large amounts of data. 

### Typical Users
#### Analysts
* Marketing
* Business
* Sales

#### Technical
* Data Science
* Software Engineers
* Web Developers

## Comparison of Spreadsheets and Databases
### Spreadsheets
* One-time analysis
* Quickly need to chart something out
* Reasonable data set size
* Ability for untrained people to work with data

### Databases
* Data Integrity
* Can handle massive amounts of data
* Quickly combine different datasets
* Automate steps for re-use
* Can support data for websites and applications

## Database Platform Options
### PostgreSQL
* Free (Open Source)
* Widely used on internet
* Multi platform

### MySQL & MariaSQL
* Free (Open Source)
* Widely used on internet
* Multi platform

### MS SQL Server Express
* Free, but with some limitations
* Compatible with SQL Server
* Windows only

### Microsoft Access
* Cost
* Not easy to use just SQL

### SQLite
* Free (Open Source)
* Mainly command line

## Basic SQL Format
`SELECT column_a,column_b,column_c
FROM table_a
ORDER BY column_a;`

## Programs Which Run On SQL
* MySQL
* PostgreSQL
* Oracle Databases
* Microsoft Access
* Amazon's Redshift
* Looker
* MemSQL
* Periscope Data
* Hive (Runs on top of Hadoop)
* Google's BigQuery
* Facebook's Presto
* Snowflake

----
# Important Side Notes
* SQL is case insensitive
  * By convention, however, all SQL keywords/statements/clauses should be written in all caps

----
# Helpful Links
* VENN diagrams of JOIN features: https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/

----
# SQL Notes
## Statements / Clauses / Keywords (synonymous in the course lecture)
### `SELECT`
ex: `SELECT column1,column2,... FROM table_name`
#### Purpose
This will select data which can be interpreted from within a database. 
The data returned is stored in a result table, called a result-set.

#### Side Notes
* Always use a comma to separate each item selected
* If you want to query data from all columns, use an asterisk (`*`)
  * It is not good practice to use an asterisk (`*`) in the `SELECT` statement
* A table name must be included afterwards using the `FROM` clause

### `SELECT DISTINCT`
ex: `SELECT DISTINCT column1,column2 FROM table_name;`
#### Purpose
Using `DISTINCT` will allow the user to only have unique values returned from the `SELECT` statement. 

### `FROM`
ex: `SELECT column1,column2 FROM table_name`

### `WHERE`
ex: `SELECT column1,column2 FROM table_name WHERE conditions;`
ex: `SELECT email FROM customer WHERE first_name = 'Michael' AND first_name = 'Oliver';`
* Typically appears after the `FROM` clause in a `SELECT` statement.
* The conditions are used to filter the rows returned from the `SELECT` statement. 
* PostgreSQL provides you with various standard operators to construct the conditions.
* `WHERE` conditions do not need to refer to the columns displayed using `SELECT`.

#### List of `WHERE` Conditions
| operator | description |
|:--------:|:-----------:|
| = | equal |
| > | greater than |
| < | less than |
| >= | greater than or equal to |
| <= | less than or equal to |
| <> | not equal | 
| != | not equal |
| AND | logical operator AND |
| OR | logical operator OR |

### COUNT
#### Wildcard
ex: `SELECT COUNT (*) FROM film;`
* The COUNT function returns the number of input rows that match a specific condition on a query.
* The `COUNT (*)` function returns the number of rows returned by a `SELECT` clause.
	* When you apply the `COUNT (*)` to the entire table, PostgreSQL scans the table sequentially.

#### `column` Specific
ex: `SELECT COUNT (column) FROM table;`
* You can also specify a specific column count for readability.
* Similar to the `COUNT (*)` function, the `COUNT (column)` function returns the number of rows returned by a `SELECT` clause.
* However, it does not consider `NULL` values in the column.

#### `DISTINCT`
ex: `SELECT COUNT (DISTINCT column) FROM table;`
* We can also use `COUNT` with `DISTINCT`.
* The above example will return the number of distinct values present in `column`. 

### `LIMIT`
ex: `SELECT * FROM table LIMIT 5;`
* `LIMIT` allows you to limit the number of rows you get back after a query.
* Useful when wanting to get all columns but not all rows. 
* Another practical requirement for this is to not need to query an incredibly large database in its entirety.
* The above example will return only the first `5` rows from `table`.

### `ORDER BY`
ex: `SELECT column_1,column_2 FROM table ORDER BY column_1 ASC|DESC;`
* When you query data from a table, PostgreSQL returns the rows in the order that they were inserted into the table.
* In order to sort the result set, you use the `ORDER BY` clause in the `SELECT` statement.
* The `ORDER BY` clause allows you to sort the rows returned from the `SELECT` statement in ascending or descending order based on criteria specified.
* Goes at the end of a query.
* If you sort the result set by multiple columns, use a comma to separate between two columns. 
* If you leave it blank, the `ORDER BY` clause will use `ASC` by default. 
* To ensure compatibility with all types of SQL editors, columns chosen in `ORDER BY` should also be in `SELECT`. 

### `BETWEEN`
#### Is Between
ex:`WHERE value BETWEEN low AND high;`
* We use the `BETWEEN` operator to match a value against a range of values. 
* If the value is greater than or equal to the low value and less than or equal to the high value, the expression returns true, or vise versa. 
* We can rewrite the `BETWEEN` operator by using the greater than or equal to (>=) or less than or equal to (<=) operators.
	* ex: `value >= low and value <= high`
	* `BETWEEN` is obviously more elegant

#### Not Between
ex: `WHERE value NOT BETWEEN low AND high;`
* Opposite of `BETWEEN` and does not include equal to values. 
* We can rewrite `NOT BETWEEN` in `value` form as well. 
	* `value < low OR value > high;`

### `IN`
ex: `WHERE value IN (value1,value2,...)`
* You can use the `IN` operator with the `WHERE` clause to check if a value matches any value in a list of values.
* The expression returns true if the value matches any value in the list i.e., value1, value2, etc.
* The list of values is not limited to a list of numbers or strings but also a result set of a `SELECT` statement (also known as a sub-query).
	* ex: `WHERE value IN (SELECT value FROM tbl_name)`
* You can also use the `NOT` operator to adjust an `IN` statement (`NOT IN`).

### `LIKE`
ex: `SELECT first_name,last_name FROM customer WHERE first_name LIKE 'Jen%';`
* A string with use of a percent (`%`) operator is a pattern.
In the example above, the query will return all `first_name` values which begin with `Jen` and can have anything tailing afterwards. 
The `%` symbol will act as a wildcard for all text before or after the text entered, so long as the percent is included before or after respectively.

#### Wildcard Characters
1. `%`: will match any *sequence* of characters.
	* Must be included before if intended for characters before the string / after for characters after.
2. `_`: used to match a single character.
	* ex: `('Mik_')` could return both `Mike` or `Mika` for names.

#### `ILIKE`
* The `LIKE` statement is case-sensitive. 
* In order to perform a case-insensitive search, the `ILIKE` operator must be used.

### Aggregate Functions
* Functions which combine large quantities of data into a single cell's value, such as the `COUNT` statement, are aggregating that data. 
* We can also reduce the amount of decimal points returned in any response using the `ROUND` clause.

#### List of Aggregate Functions
* `COUNT`
* `MIN`
* `MAX`
* `AVG`
* `SUM`

### `ROUND`
ex: `SELECT ROUND ( AVG (amount) , 2 ) FROM payment;`
* This clause will only display the value returned up to a specified amount of decimal places.
	* In the above example, the average amount a person has provided for payment will be displayed and rounded to the 2nd decimal point.

### `GROUP BY`
ex: `SELECT column_1, aggregate_function(column_2) FROM table GROUP BY column_1;`
* One of the most useful tools in SQL.
* The `GROUP BY` clause divides the rows returned from the `SELECT` statement into groups. 
* For each group, you can apply an aggregate function.
This is a very effective use for `GROUP BY`. 
	* ex: `SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC;`

### `HAVING`
ex: `SELECT column_1, aggregate_function(column_2) FROM table GROUP BY column_1 HAVING condition;`
* We often use the HAVING clause in conjunction with the `GROUP BY` clause to filter out group rows that do not satisfy a specified condition.
* Think: `WHERE`, but for `GROUP BY` clauses
  * Main difference between these statements is that the `HAVING` clause sets the condition for group rows created by the `GROUP BY` clause after the `GROUP BY` clause applies
  * Conversely, the `WHERE` clause sets the condition for individual rows before the `GROUP BY` clause applies

### `AS`
ex: `SELECT customer_id, SUM(amount) AS total_spent FROM payment GROUP BY customer_id;`
* `AS` allows us to rename columns or table sections with an alias.
* Very useful when organizing column names for aggregate functions.
* An odd quirk of SQL is that the user can also simply not include the `AS` statement at all, and can instead opt for a ` ` with no delimiter to infer its use.
	* ex: `SELECT title,name movie_language FROM film JOIN language AS lan ON film.language_id = lan.language_id;`

### `JOIN`
ex: `SELECT A.pka, A.c1, B.pkb, B.c2 FROM A INNER JOIN B ON A.pka = B.fka;`
* Allows you to relate data in one table to data in other tables.
* VENN diagram in `Helpful Links` section will help to illustrate the concept.
* In order to use a `JOIN` statement, the user will first need to specify the columns from both tables they wish to use via the `SELECT` clause.
* Next, the user will need to specify the main table they wish to use with the `FROM` clause.
* Finally, the user will specify the table that the main table `JOIN` to, using one of the clauses outlined in the following subsections.
    * A condition must also be set for this clause, such as `ON A.pka = B.fka` in the example above.
* Columns must be referred to as `table_name.column_name`, to avoid confusion in case there are columns which have the same name between tables.
	* For each instance that a column which shares names between tables is used, the table for the desired column must be specified.
* If the table's name is long, you can use the `AS` feature to assign an alias to the table and refer to it more easily.
* For columns which only appear in one of the two tables, you are able to enter them simply as `column_name` rather than `table_name.column_name`. 

#### `INNER JOIN`
* The `INNER JOIN` clause returns rows in A table that have corresponding rows in B table.

#### `OUTER JOIN`
* The `OUTER JOIN` clause returns rows in A table that have no corresponding rows in B table.
* For the rows which do not correspond, the missing data will be displayed as a `null`. 

#### `FULL OUTER JOIN`
* This will return all data from each table.
* If there is not a match, the missing data for either table will be displayed as a `null`. 
* To only show data without overlap, the user can use the `WHERE` statement to only provide data when a null is present on either side (`WHERE A.id IS null OR A.id IS null`).

#### `LEFT OUTER JOIN`
* Will produce a complete set of records from Table A, with matching records (when available) in Table B.
* If there is no match, the right side will contain `null`.
* To only show data without overlap, the user can use the `WHERE` statement to only provide data where Table B is null (`WHERE B.id IS null`).
* This can also more simply be referred to as `LEFT JOIN`, since `OUTER` is implied by `LEFT`.

#### `RIGHT OUTER JOIN`
* Same as `LEFT OUTER JOIN`, but with only Table B as the primary focus.
* Probably unnecessary, and only included for quick checks of queries between multiple dbs on the fly to confirm query accuracy.
* This can also more simply be referred to as `RIGHT JOIN`, since `OUTER` is implied by `RIGHT`.

### `UNION`
ex: `SELECT column_1,column_2 FROM table_1 UNION SELECT column_1,column_2 FROM table_2;`
* The `UNION` operator combines result sets of two or more `SELECT` statements into a single result set.
* Both `SELECT` queries must return the same number of columns.
* Corresponding columns in the queries must have compatible data types.
	* i.e. In the example above, if the `column_1` for `table_1` is an integer, the `column_1` for `table_2` must also be an integer.
* The `UNION` operator removes all duplicate rows unlesss `UNION ALL` is used.
* The `UNION` operator may place the rows in the first query before, after, or between the rows in the result set of the second query.
* To sort the rows in the combined result set by a specified column, use the `ORDER BY` clause.
* We often use the `UNION` operator to combine data from similar tables that are not perfectly normalized.
* Those tables are often found in the reporting or data warehouse system.