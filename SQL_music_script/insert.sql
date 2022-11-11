INSERT INTO genres (name)
VALUES ('rock');

INSERT INTO genres (name)
VALUES ('pop');

INSERT INTO genres (name)
VALUES ('jazz');

INSERT INTO genres (name)
VALUES ('hip-hop');

INSERT INTO genres (name)
VALUES ('blues');

INSERT INTO genres (name)
VALUES ('rap');


INSERT INTO singers (name)
VALUES ('Madonna');

INSERT INTO singers (name)
VALUES ('Lesopoval');

INSERT INTO singers (name, surname)
VALUES ('Ricky', 'Martin');

INSERT INTO singers (name, surname)
VALUES ('Michel','Riviere');

INSERT INTO singers (name, surname)
VALUES ('Mick', 'Jagger');

INSERT INTO singers (name, surname)
VALUES ('Taylor', 'Mammi');

INSERT INTO singers (name, surname)
VALUES ('Mamma', 'Mia');

INSERT INTO singers (name)
VALUES ('Era');

INSERT INTO singers (name, surname)
VALUES ('Elizabeth', 'Northon');

INSERT INTO singers (name, surname)
VALUES ('Rich', 'Future');

INSERT INTO singers (name, surname)
VALUES ('Senior', 'Grand');



INSERT INTO albums (name, year_release)
VALUES ('To the moon and back', '2018');

INSERT INTO albums (name, year_release)
VALUES ('By my side', '2015');

INSERT INTO albums (name, year_release)
VALUES ('Welcome to my world', '2016');

INSERT INTO albums (name, year_release)
VALUES ('Without you', '2020');

INSERT INTO albums (name, year_release)
VALUES ('Sunny days', '2019');

INSERT INTO albums (name, year_release)
VALUES ('Triste', '2019');

INSERT INTO albums (name, year_release)
VALUES ('Oh my!', '2018');

INSERT INTO albums (name, year_release)
VALUES ('Million words away', '2020');

INSERT INTO albums (name, year_release)
VALUES ('Party', '2017');

INSERT INTO albums (name, year_release)
VALUES ('On the beach', '2008');

INSERT INTO albums (name, year_release)
VALUES ('You are my eternity', '2019');



INSERT INTO albumssingers (album_id, singer_id)
VALUES (2, 1);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (3, 11);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (4, 10);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (5, 9);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (6, 8);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (7, 7);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (8, 6);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (9, 5);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (10, 4);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (11, 3);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (2, 2);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (4, 1);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (6, 5);

INSERT INTO albumssingers (album_id, singer_id)
VALUES (8, 3);


INSERT INTO genressingers (genre_id, singer_id)
VALUES (1, 1);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (2, 11);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (3, 2);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (4, 10);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (5, 3);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (6, 9);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (6, 4);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (5, 8);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (4, 5);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (3, 7);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (2, 6);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (1, 4);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (2, 4);

INSERT INTO genressingers (genre_id, singer_id)
VALUES (3, 1);



INSERT INTO songs (name, duration, album_id)
VALUES ('Figaro', '00:03:45', 1);

INSERT INTO songs (name, duration, album_id)
VALUES ('Oh my!', '00:02:45', 2);

INSERT INTO songs (name, duration, album_id)
VALUES ('Never', '00:04:45', 3);

INSERT INTO songs (name, duration, album_id)
VALUES ('Sad day', '00:01:45', 4);

INSERT INTO songs (name, duration, album_id)
VALUES ('Goodbye my love', '00:03:20', 5);

INSERT INTO songs (name, duration, album_id)
VALUES ('On the sunset', '00:02:15', 6);

INSERT INTO songs (name, duration, album_id)
VALUES ('Be by my side', '00:05:45', 7);

INSERT INTO songs (name, duration, album_id)
VALUES ('Song of the year', '00:04:45', 8);

INSERT INTO songs (name, duration, album_id)
VALUES ('Switch to my side', '00:04:05', 9);

INSERT INTO songs (name, duration, album_id)
VALUES ('A cote', '00:02:17', 10);

INSERT INTO songs (name, duration, album_id)
VALUES ('Nevreland', '00:01:45', 11);

INSERT INTO songs (name, duration, album_id)
VALUES ('Castle', '00:03:50', 3);

INSERT INTO songs (name, duration, album_id)
VALUES ('My son', '00:05:20', 5);

INSERT INTO songs (name, duration, album_id)
VALUES ('Irrational', '00:04:05', 7);

INSERT INTO songs (name, duration, album_id)
VALUES ('I am so done with this', '00:03:05', 9);

INSERT INTO songs (name, duration, album_id)
VALUES ('Neverending stuff', '00:02:45', 11);

INSERT INTO songs (name, duration, album_id)
VALUES ('Boring', '00:04:55', 2);

INSERT INTO songs (name, duration, album_id)
VALUES ('I see the end', '00:03:05', 4);

INSERT INTO songs (name, duration, album_id)
VALUES ('Almost done', '00:02:12', 6);

INSERT INTO songs (name, duration, album_id)
VALUES ('My last one, yay!', '00:03:58', 8);

INSERT INTO songs (name, duration, album_id)
VALUES ('That was not last', '00:03:58', NULL);


INSERT INTO playlists (name, date_release)
VALUES ('Inspiration', '2020');

INSERT INTO playlists (name, date_release)
VALUES ('Desolee', '2021');

INSERT INTO playlists (name, date_release)
VALUES ('Or not desolee', '2022');

INSERT INTO playlists (name, date_release)
VALUES ('Maybe yes', '2018');

INSERT INTO playlists (name, date_release)
VALUES ('And maybe no', '2019');

INSERT INTO playlists (name, date_release)
VALUES ('Ideas coming to the end', '2019');

INSERT INTO playlists (name, date_release)
VALUES ('One Two Three', '2020');

INSERT INTO playlists (name, date_release)
VALUES ('Last playlist', '2021');


INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (1, 1);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (2, 2);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (3, 3);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (4, 4);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (5, 5);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (6, 6);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (7, 7);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (8, 8);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (8, 9);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (7, 10);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (6, 11);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (5, 12);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (4, 13);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (3, 14);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (2, 15);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (1, 16);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (2, 17);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (3, 18);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (4, 19);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (5, 20);

INSERT INTO playlistssongs (playlist_id, song_id)
VALUES (6, 10);

