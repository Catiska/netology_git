CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	surname VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS GenresSingers (
	genre_id INTEGER REFERENCES Genres(id),
	singer_id INTEGER REFERENCES Singers(id),
	CONSTRAINT pk_genres_singers PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_release INT NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumsSingers (
	album_id INTEGER REFERENCES Albums(id),
	singer_id INTEGER REFERENCES Singers(id),
	CONSTRAINT pk_albums_singers PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);


CREATE TABLE IF NOT EXISTS Playlists (
	id SERIAL PRIMARY KEY,
	name TEXT,
	date_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS PlaylistsSongs (
	playlist_id INTEGER NOT NULL REFERENCES Playlists(id),
	song_id INTEGER NOT NULL REFERENCES Songs(id),
	CONSTRAINT pk_playlists_songs PRIMARY KEY (playlist_id, song_id)
);

