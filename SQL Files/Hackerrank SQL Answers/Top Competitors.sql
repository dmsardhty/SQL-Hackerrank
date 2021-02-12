/*
Julia just finished conducting a coding contest, 
and she needs your help assembling the leaderboard! 

Write a query to print the respective hacker_id and name of hackers 
who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges 
in which the hacker earned a full score. If more than one hacker received 
full scores in same number of challenges, then sort them by ascending hacker_id.

hackers (h) : hacker_id, name
difficulty (d) : difficulty_level, score
Challenges (c): challenge_id, hacker_id, difficulty_level
Submissions (s): submission_id, hacker_id, challenge_id and score
*/

select h.hacker_id, h.name
from submissions as s 
inner join challenges as c
on s.challenge_id = c.challenge_id
inner join difficulty as d
on c.difficulty_level = d.difficulty_level
inner join hackers as h
on s.hacker_id = h.hacker_id
where s.score = d.score
and c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC