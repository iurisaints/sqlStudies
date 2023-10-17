(
  SELECT CONCAT('Podium: ', team)
  FROM league
  ORDER BY position ASC
  LIMIT 3
)
UNION ALL
(
  SELECT CONCAT('Demoted: ', team)
  FROM league
  WHERE position IN (14, 15)
);
