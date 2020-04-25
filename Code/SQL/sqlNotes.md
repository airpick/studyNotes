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
# Query Notes
## Fundamental Statements / Clauses / Keywords (synonymous in the course lecture)
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

### `COUNT`
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
* The `UNION` operator removes all duplicate rows unless `UNION ALL` is used.
* The `UNION` operator may place the rows in the first query before, after, or between the rows in the result set of the second query.
* To sort the rows in the combined result set by a specified column, use the `ORDER BY` clause. This is the main benefit of the `UNION` operator.
* We often use the `UNION` operator to combine data from similar tables that are not perfectly normalized.
* Those tables are often found in the reporting or data warehouse system.

----
## Advanced SQL Commands
### `SHOW`
* Shows the value of a run-time parameter.
* Using `SHOW ALL` will show the current setting of run-time parameters used by PostgreSQL.
* `SHOW TIMEZONE` will show the timezone used by the machine currently hosting the database.

### Timestamps
ex: `SELECT SUM(amount) AS total, extract(month from payment_date) AS month FROM payment GROUP BY month ORDER BY total DESC;`
ex: `SELECT NOW()` will display the current timestamp at query execution
ex: `SELECT TIMEOFDAY()` will display current timestamp with DDD MMM YY proceeding
ex: `SELECT CURRENT_TIME` provides current time only w/ timezone
ex: `SELECT CURRENT_DATE` will display the current date only in YYYY-MM-DD
* [PostgreSQL Documentation](https://www.postgresql.org/docs/12/functions-datetime.html)
* Different SQL engines (MySQL, Oracle, etc.) may use different syntax. Please double-check their online references, respectively, for more information.
* You can also `+` or `-` many functions, allowing quick editing from the query directly. 
    * This is useful for items such as adjusting a timestamp to reflect timezone (from UTC). 
* To prevent confusion, the `from` statement used for extract will be lower case (to imply it is pulling from a column, not a table).

### `EXTRACT()`
ex: `EXTRACT(YEAR FROM date_col)`
* Allows the user to extract/obtain a sub-command of a date value.

#### Table of Extract Functions for PostgreSQL
| unit | explanation |
|:--------:|:-----------:|
| age | Calculates and returns the given age of a timestamp |
| day | Day of the month (1 to 31) |
| dow | Day of the week (0=Sunday, 1=Monday, etc.) |
| doy | Day of the year (1=first day of year , 365/366=last day, depending on if leap year) |
| epoch | Number of seconds since `1970-01-01 00:00:00 UTC`, if date value. 
Number of seconds in an interval value, if interval value. |
| hour | Hour (o to 23) |
| microseconds | Seconds (and fractional seconds) multiplied by 1,000,000 |
| millennium | Millennium value |
| milliseconds | Seconds (and fractional seconds) multiplied by 1,000 |
| minute | Minute (0 to 59) |
| month | Number for the month (1 to 12), if date value.
Number of months (0 to 11), if interval value. |
| quarter | Quarter (1 to 4) |
| second | Seconds (and fractional seconds) |
| week | Number of the week of the year based on ISO 8601 (where the year begins on the Monday of the week that contains January 4th) |
| year | Year as 4-digits |

### `TO_CHAR()`
ex: `TO_CHAR(date_col, 'yyyy-mm-dd')`
* [PostgreSQL Documentation](https://www.postgresql.org/docs/9.1/functions-formatting.html)
* General function to convert data types into text.
* Useful for timestamp formatting.

### Mathmatical Functions
ex: `SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percent_cost FROM film;`
* [PostgreSQL Documentation](https://www.postgresql.org/docs/12/functions-math.html)
* Most mathmatical functions, including trigonometric functions, can be performed within a SQL query, if needed.

### String Functions
ex: `SELECT first_name || ' ' || last_name AS full_name FROM customer;`
ex: `SELECT upper(first_name),char_length(first_name) FROM customer;`
ex: `SELECT LEFT(first_name,1) || last_name || '@domain.com' FROM customer;` would create an email address, such as `mpay@domain.com`, for each customer
* [PostgreSQL Documentation](https://www.postgresql.org/docs/12/functions-string.html)
* When using Regular Expressions (regex), it is recommended to use the `LIKE` function to assist.

### Subquery
ex: `SELECT film_id,title,rental_rate FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);`

* A subquery is when the results of one query is used in execution of another query. 
* To perform a subquery, the initial query will have a second `SELECT` statement contained within paranthesis.
* The subquery must yield a result which will be sensible to the main query.
    * Examples of a typical response from a subquery are single boolean or integer responses - these are used easily with comparison operators.
* To construct a subquery, we put the second query in brackets, `()`, and use it in the `WHERE` clause as an expression (see `ex: ` above).
* The SQL engine will execute Subqueries before executing the query not contained within brackets `()`.
* A subquery can operate on a separate table.

ex: 
`SELECT title,film_id
FROM film
WHERE film_id IN 
	(SELECT inventory.film_id 
	FROM rental
	INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
	WHERE rental.return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title ASC;`

* Use Case: Suppose we want to find the films whose rental rate is higher than the average rental rate.
* Approach:
    * Find the average retnal rate by using the SELECT statement and average function (AVG).
    * Use the result of the first query in the second SELECT statement to find the films that we want.

### Self Join
ex: 
`SELECT c1.first_name,c1.last_name,c2.first_name AS match_name
FROM customer AS c1, customer AS c2
WHERE c1.last_name = c2.first_name
ORDER BY first_name ASC;`
ex: 
`SELECT a.customer_id,a.first_name,a.last_name,b.customer_id,b.first_name,b.last_name
FROM customer AS a
JOIN customer AS b
ON a.first_name = b.last_name;`

* You use self join when you want to combine rows with other rows in the same table.
* To perform the self join operation, you must use a table alias to help SQL distinguish the left table from the right table of the same table.
* You may also use a `LEFT JOIN` (or `RIGHT`, if needed) to provide all records from one of the tables, regardless of whether a match occurred.
* For additional reference on this technique, perform a google search for `manager employee self join`. This is a common interview question and an excellent example of this technique's Use Case.

----
# Creating/Manipulating Tables and Databases
## Data Types
* Boolean
* Character
* Number
* Temporal
* Special Types
* Array

### Boolean
* A Boolean data type can hold one of two possible values: `true` or `false`.
* In situations where the value is unknown, the `null` value is used.
* You can use `boolean` or `bool` keywords when you declare a column that has Boolean data.
* When you insert data into a Boolean column, PostgreSQL will convert it into the Boolean value.
  * ex: 1, yes, y, t, true are converted to `true` and 0, no, n, false, f are converted to `false`
* When you select data from a Boolean column, PostgreSQL displays `t` for `true`, `f` for `false`, and a space character (` `) for `null`.

### Character
PostgreSQL has 3 different character types.
#### `char`
A single character.
#### `char(n)`
Fixed-length character strings.
* If you insert a string that is shroter than the length of the column, PostgreSQL will pad space. 
* If you insert a string that is longer than the length of the column, PostgreSQL will issue an error.

#### `varchar(n)`
Variable-length character strings.
* You can store up to `n` characters with variable-length character strings. 
* PostgreSQL does not pad spaces when the string is shorter than the legnth of the column.

### Integers
#### `smallint`
Small integer is a 2-byte signed integer that has a range of (-32768,32767).
#### `int`
Integer is a 4-byte integer that has a range of (-214783648,214783647).
#### `serial`
Serial is the same as integer, except that PostgreSQL will populate values into the column automatically (think: numbering your rows).
This is similar to the `AUTO_INCREMENT` attribute used in other database management systems.
#### `float(n)`
This is a floating-point number with precision for `n` up to a maximum of 8 bytes.
#### `real` or `float8`
This is a double-precision (8-byte) floating-point number.
#### `numeric` or `numeric(p,s)`
A real number, `p`, which has `s` number  of digits _after_ the decimal point.
If you use `(p,)`, the full number with all possible decimal points will be stored.

### Temporal
Temporal data types store date and time related data.
#### `date`
Stores the date.
#### `time`
Stores the time.
#### `timestamp`
Stores date and time.
#### `interval`
Stores the difference in timestamps.
#### `timestamptz`
Stores both timestamp and timezone data.

### Keys
#### Primary
* Is a column or a group of columns which is/are used to identify a row uniquely within a table.
* Primary keys are defined through primary key constraints.
* A table can have one and only one primary key.
* It is good practice to add a primary key to every table. 
* When you add a primary key to a table, PostgreSQL creates a unique index on the column or a group of columns used to define the primary key.

#### Foreign
