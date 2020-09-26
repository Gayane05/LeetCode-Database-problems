/* Employees Earning More Than Their Managers

The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

+----+-------+--------+-----------+
| Id | Name  | Salary | ManagerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | NULL      |
| 4  | Max   | 90000  | NULL      |
+----+-------+--------+-----------+
Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.

+----------+
| Employee |
+----------+
| Joe      |
+----------+
*/

-- Runtime: 302 ms
select a.name as employee
from employee as a join 
                    employee as b
                    on a.managerId = b.ID
                    and a.salary > b.salary

-- Runtime: 340 ms
# Write your MySQL query statement below
select a.name as employee
from employee as a, employee as b
where a.managerId = b.id and a.salary > b.salary