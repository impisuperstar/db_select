SELECT 
    title, 
    duration 
FROM Tracks 
WHERE duration = (
    SELECT MAX(duration) 
    FROM Tracks
);

SELECT 
    title, 
    duration 
FROM Tracks 
WHERE duration >= 90;

SELECT 
    COUNT(*) 
FROM Tracks t 
JOIN Albums a ON t.album_id = a.album_id 
WHERE a.year BETWEEN 2010 AND 2015;

SELECT 
    name 
FROM Artists 
WHERE POSITION(' ' IN name) = 0;

SELECT 
    title 
FROM Tracks 
WHERE title ILIKE 'my %' 
   OR title ILIKE '% my'
   OR title ILIKE '% my %'
   OR title ILIKE 'my'
   OR title ILIKE 'мой %'
   OR title ILIKE '% мой'
   OR title ILIKE '% мой %'
   OR title ILIKE 'мой';

SELECT 
    g.name, 
    COUNT(ag.artist_id) as artist_count
FROM Genres g 
LEFT JOIN ArtistsGenres ag ON g.genre_id = ag.genre_id 
GROUP BY g.genre_id, g.name;

SELECT COUNT(t.track_id) 
FROM Tracks t 
JOIN Albums a ON t.album_id = a.album_id 
WHERE a.year BETWEEN 2010 AND 2015;

SELECT 
    a.title as title, 
    AVG(t.duration) as avg_duration 
FROM Albums a 
JOIN Tracks t ON a.album_id = t.album_id 
GROUP BY a.album_id, a.title;

SELECT name 
FROM Artists 
WHERE artist_id NOT IN (
    SELECT a.artist_id 
    FROM Artists a 
    JOIN Albums al ON a.artist_id = al.artist_id 
    WHERE al.year = 2020
);

SELECT DISTINCT 
    c.title as collection_title, 
    c.year 
FROM Collections c 
JOIN TracksCollections tc ON c.collection_id = tc.collection_id
JOIN Tracks t ON tc.track_id = t.track_id 
JOIN Albums a ON t.album_id = a.album_id
JOIN ArtistsAlbums aa ON a.album_id = aa.album_id  
JOIN Artists ar ON aa.artist_id = ar.artist_id  
WHERE ar.name = 'The Beatles';
