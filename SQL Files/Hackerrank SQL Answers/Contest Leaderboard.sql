/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.

Hackers : hacker_id, name
Submissions : submission_id, hacker_id, challenge_id, score
*/
select h.hacker_id, h.name, sum(m_score) as total_score
from Hackers as h
inner join
    (select hacker_id, challenge_id, max(score) as m_score
     from Submissions as s
     group by challenge_id, hacker_id) as max_score
on h.hacker_id = max_score.hacker_id
group by h.hacker_id, h.name
having total_score > 1
order by total_score desc, h.hacker_id;
