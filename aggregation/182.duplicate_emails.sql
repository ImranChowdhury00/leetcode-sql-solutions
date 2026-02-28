-- Problem: 182 - Duplicate Emails
-- Difficulty: easy
-- Primary concept: group by
-- Secondary concept: having , count()
-- pattern: group emails having count more than 1

select email
from person 
group by email
having (count(email))>1