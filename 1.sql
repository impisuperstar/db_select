CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE ArtistsGenres (
    artist_id INTEGER REFERENCES Artists(artist_id) ON DELETE CASCADE,
    genre_id INTEGER REFERENCES Genres(genre_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL CHECK (year >= 1900),
    artist_id INTEGER NOT NULL REFERENCES Artists(artist_id) ON DELETE CASCADE
);

CREATE TABLE ArtistsAlbums (
    artist_id INTEGER REFERENCES Artists(artist_id) ON DELETE CASCADE,
    album_id INTEGER REFERENCES Albums(album_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE Tracks (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    duration INTEGER NOT NULL CHECK (duration > 0),
    album_id INTEGER NOT NULL REFERENCES Albums(album_id) ON DELETE CASCADE
);

CREATE TABLE Collections (
    collection_id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL CHECK (year >= 1900),
    title VARCHAR(255) NOT NULL
); 
CREATE TABLE TracksCollections (
    track_id INTEGER REFERENCES Tracks(track_id) ON DELETE CASCADE,
    collection_id INTEGER REFERENCES Collections(collection_id) ON DELETE CASCADE,
    PRIMARY KEY (track_id, collection_id)
);


