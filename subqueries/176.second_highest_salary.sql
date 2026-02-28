-- Problem: 176 - second highest salary
-- Difficulty: easy
-- Primary concept: scalar subquery
-- Secondary concept: distinct, order by, limit/offset
-- pattern: Top-N retrieval by excluding highest salary and return the next distinct value using ORDER BY + OFFSET

select
(select distinct salary 
from employee
order by salary desc
offset 1
limit 1) as SecondHighestSalary