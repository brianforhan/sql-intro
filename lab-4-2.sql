-- What are the first and last names of the players who 
-- played for the 2020 Chicago Cubs?

-- Expected result: 47 rows starting with
--
-- +------------+-----------+
-- | Jason      | Adam      |
-- | Albert     | Almora    |
-- | Adbert     | Alzolay   |
-- | Javier     | Baez      |
-- | David      | Bote      |
-- | Rex        | Brothers  |
-- | Kris       | Bryant    |
-- | Victor     | Caratini  |
-- | Andrew     | Chafin    |
-- | Tyler      | Chatwood  |
-- | Willson    | Contreras |
-- | Yu         | Darvish   |
-- | Matt       | Dermody   |
-- | Billy      | Hamilton  |
-- | Ian        | Happ      |

SELECT players.first_name, players.last_name 
FROM stats 
INNER JOIN teams ON teams.id = stats.team_id
INNER JOIN players ON players.id = stats.player_id
WHERE teams.year = 2020
AND teams.name = "Chicago Cubs";
