CREATE VIEW Player_Leaderboard AS
SELECT p.player_id, 
       p.player_name, 
       MAX(s.score) AS highest_score, 
       RANK() OVER (ORDER BY MAX(s.score) DESC) AS rank_position
FROM Players p
JOIN Scores s ON p.player_id = s.player_id
GROUP BY p.player_id, p.player_name;

CREATE VIEW Recent_Leaderboard AS
SELECT p.player_id, 
       p.player_name, 
       MAX(s.score) AS highest_score, 
       RANK() OVER (ORDER BY MAX(s.score) DESC) AS rank_position
FROM Players p
JOIN Scores s ON p.player_id = s.player_id
WHERE s.score_date >= SYSDATE - 30
GROUP BY p.player_id, p.player_name;
