INSERT INTO Genres (name) VALUES ('Rock'), ('Pop'), ('Hip-Hop'), ('Jazz'), ('Electronic');
INSERT INTO Artists (name) VALUES ('The Beatles'),  ('Lamar'), ('Adele'), ('Prodigy'), ('Queen'); INSERT INTO ArtistsGenres (artist_id, genre_id) VALUES (1, 1), (2,3), (3,4), (4,3), (5, 1); INSERT INTO Albums (title, year, artist_id) VALUES ('To Pimp a Butterfly', 2015, 3), ('A Night at the Opera', 2015, 1), ('8 miles', 2010, 2);
INSERT INTO ArtistsAlbums (artist_id, album_id) VALUES (1, 1), (2, 2), (4, 3);
INSERT INTO Tracks (title, duration, album_id) VALUES  ('Lucky', 200, 1), ('Not Lucky', 100, 2), ('Funny', 23, 3); INSERT INTO Collections (year, title) VALUES (2020, 'Best of 2010s'), (2019, 'Rock Classics'), (2017, 'Summer Hits');
INSERT INTO TracksCollections (track_id, collection_id)  VALUES (1, 2), (2, 1), (3, 3);
