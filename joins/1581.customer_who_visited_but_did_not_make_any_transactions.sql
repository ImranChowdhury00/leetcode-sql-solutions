-- Problems: 1581 - Visits that did not make any transactions
-- Difficulty: Easy
-- Primary concept: left join
-- secondary concept: group by,
-- pattern: finding null transactions using left join
 
select v.customer_id, count(v.visit_id) as count_no_trans
from visits v
left join transactions t on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id;