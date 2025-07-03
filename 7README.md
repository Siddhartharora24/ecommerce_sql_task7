
# EcommerceDB SQL Project

This project involves designing and manipulating an e-commerce database using MySQL. 

## Task 1: Database and Table Creation

- Created `EcommerceDB` database
- Created the following tables:
  - Customers
  - Categories
  - Products
  - Orders

See `task1.sql` for full schema.

## Task 2: Data Manipulation

- Inserted sample data into tables
- Handled missing values using `NULL`
- Updated data using `UPDATE` with `WHERE`
- Deleted data using `DELETE` with `WHERE`

See `task2.sql` for full query scripts.

## Task 3: Data Retrieval and Filtering

- Inserted additional sample records into `Customers`, `Products`, and `Orders`
- Used `SELECT *` to display entire tables
- Selected specific columns using `SELECT column_name`
- Applied filtering with:
  - `WHERE`
  - `AND` / `OR`
  - `LIKE`
  - `BETWEEN`
- Sorted data using `ORDER BY` (ascending and descending)

See `task3.sql` for all query examples.

## Task 4: Aggregation and Grouping

- Applied aggregate functions to analyze numerical data from the Products table
- COUNT() to count total products
- AVG() to calculate average price
- MIN() and MAX() to find price range
- SUM() to compute total value of all products
- Used GROUP BY to categorize products by CategoryID, enabling group-level analysis
 
- Filtered the grouped results using HAVING, allowing conditions to be placed on aggregated data:
- Filtered categories with more than 1 product
- Filtered groups where the average product price was greater than 95

These queries help generate summary insights like total products per category, pricing trends, and category performance
See 'task4.sql' for all query examples.

## Task5: Table Relationships and SQL Joins

- Established a relationship between the Customers and Orders tables by introducing a foreign key (CustomerID) in the Orders table that references the primary key in Customers.
- Ensured data consistency by enforcing referential integrity with the foreign key constraint.
- Added a CustomerID column to the Customers table using AUTO_INCREMENT to uniquely identify each customer.
SQL Joins Implemented:
INNER JOIN:
- Retrieved records where a customer has placed at least one order.
- Returned only the rows that have matching values in both Customers and Orders.
LEFT JOIN:
- Retrieved all customers, including those who haven’t placed any orders.
RIGHT JOIN:
- Retrieved all orders, including those where the associated customer might not exist.
FULL OUTER JOIN (simulated using UNION):
- Combined results of LEFT JOIN and RIGHT JOIN to include all customers and all orders.

This task demonstrates the ability to link relational tables and extract meaningful insights by applying different types of SQL joins.

See 'task5.sql' for all relationship definitions and join queries.

##Task6: Subqueries and Nested Queries

- Focused on implementing various types of subqueries to enable more dynamic and efficient data retrieval across related tables.
- Scalar Subqueries: Extracted single values for use in conditions and filters.
- Correlated Subqueries: Referenced outer query columns to evaluate row-specific conditions.
- Subqueries with IN, EXISTS, and =: Used for conditional filtering based on related data presence or specific matching criteria.

Techniques: 
- Used table aliases for clarity and readability (e.g., Customers C, Orders O).
- Ensured subqueries executed correctly with proper referencing and filtering logic.
- Demonstrated how subqueries can simplify complex filtering and relational lookups without requiring joins.

These subqueries allow for dynamic filtering, enabling more precise data analysis without restructuring base queries.

See 'task6.sql' for all subquery examples used in this task.


## Task7: Views for Abstraction and Security

- Focused on creating SQL views to encapsulate logic, simplify data access, and enforce security in multi-user environments.
- Created a complex view (`RecentCustomerOrders`) using joins and conditional logic to present meaningful customer order data.
- Implemented a limited-access view (`CustomerContactLimited`) to expose only selected customer information for non-privileged users.

Techniques:
- Used `JOIN` to combine `Orders` and `Customers` data in a readable format.
- Applied `IFNULL()` to handle null values (e.g., replacing missing phone numbers with `'Not Provided'`).
- Filtered records using a simplified `WHERE` clause (e.g., `CustomerID = 1`) for clear logic demonstration.
- Created a user (`readonly_user`) and granted `SELECT` access only on the limited view to restrict sensitive data access.

These views demonstrate how to simplify access to relational data while maintaining control over what is exposed to different types of users.

See `task7.sql` for all view definitions and permission statements used in this task.