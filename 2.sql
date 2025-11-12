SELECT title, duration from Tracks WHERE duration = (SELECT MAX(duration) from Tracks);
SELECT title, duration FROM Tracks WHERE duration>=90;; SELECT COUNT(*) FROM Tracks t JOIN Albums a on t.album_id = a.album_id WHERE a.year BETWEEN 2010 AND 2015;
SELECT name  FROM Artists  WHERE POSITION(' ' IN name) = 0;
SELECT title  FROM Tracks  WHERE LOWER(title) LIKE '%luck%'  OR LOWER(title) LIKE '%funn%';
