-- Problem: 183 - Customers Who Never Order
-- Difficulty: easy
-- Primary concept: left join
-- Secondary concept: null filtering (is null)
-- pattern: find unmatched rows using left join + is null

select c.name as customers 
from customers as c
left join orders as o on c.id = o.customerId
where o.customerId is null