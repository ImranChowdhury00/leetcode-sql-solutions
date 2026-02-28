-- Problem: 181 - Employees Earning More Than Their Managers
-- Difficulty: easy
-- Primary concept: correlated Subquery
-- Secondary concept: self-reference using same table
-- pattern: compare row value against related row using correlated subquery

select  e1.name as employee
from employee as e1
where salary > (
	select salary from employee as e2
	where e1.managerid = e2.id
)