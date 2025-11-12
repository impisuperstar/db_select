SELECT g.name, COUNT(ag.artist_id)  FROM Genres g LEFT JOIN ArtistsGenres ag ON g.genre_id = ag.genre_id  GROUP BY g.genre_id, g.name;
SELECT a.title, COUNT(*) track_counter FROM TRACKS t LEFT JOIN  Albums a on t.album_id=a.album_id WHERE a.year between  2010 and 2015   GROUP BY a.album_id, a.title;
SELECT  a.title as title, AVG(t.duration) as duration FROM Albums a JOIN Tracks t ON a.album_id = t.album_id GROUP BY a.album_id, a.title;
SELECT a.name FROM Artists a JOIN albums al ON al.artist_id = a.artist_id WHERE year <> 2010; SELECT DISTINCT c.title as collection_title, c.year FROM Collections c JOIN TracksCollections tc ON c.collection_id = tc.collection_id
JOIN Tracks t ON tc.track_id = t.track_id JOIN Albums a ON t.album_id = a.album_idJOIN Artists ar ON a.artist_id = ar.artist_id WHERE ar.name = 'The Beatles';
