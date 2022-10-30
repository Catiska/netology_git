CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresSingers (
	genre_id INTEGER REFERENCES Genres(id),
	singer_id INTEGER REFERENCES Singers(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	date_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumsSingers (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Singers(id),
	singer_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Playlists (
	id SERIAL PRIMARY KEY,
	name TEXT,
	date_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS PlaylistsSongs (
	id SERIAL PRIMARY KEY,
	playlist_id INTEGER NOT NULL REFERENCES Playlists(id),
	song_id INTEGER NOT NULL REFERENCES Songs(id)
);


