SELECT genres.name, count(*) 
FROM genres
JOIN genressingers ON genressingers.singer_id=genres.id 
GROUP BY genres.name 

SELECT count(*)
FROM songs
JOIN albums ON songs.album_id=albums.id 
WHERE year_release BETWEEN '2019' AND '2020'

SELECT AVG(duration)
FROM songs
JOIN albums ON songs.album_id=albums.id 
GROUP BY albums."name" 

SELECT singers.name 
FROM singers
JOIN albumssingers ON albumssingers.album_id=singers.id
JOIN albums ON albums.id=albumssingers.singer_id 
WHERE albums.year_release != '2020'

SELECT albums.name 
FROM albums
JOIN albumssingers ON albumssingers.singer_id=albums.id
JOIN singers ON albumssingers.album_id=singers.id 
WHERE singers.name = 'Era'

SELECT albums.name
FROM albums
JOIN albumssingers ON albumssingers.singer_id=albums.id
JOIN singers ON albumssingers.album_id=singers.id 
JOIN genressingers ON genressingers.genre_id=singers.id
JOIN genres ON genres.id=genressingers.singer_id 
GROUP BY albums.name
HAVING count(genres) > 1 


SELECT songs.name 
FROM songs 
WHERE NOT EXISTS 
	(SELECT *
	FROM playlistssongs
	WHERE playlistssongs.song_id=songs.id)
	

SELECT singers.name, min(duration)
FROM singers, songs
GROUP BY singers.name
ORDER BY min(duration)


SELECT albums.name, count(songs) 
FROM songs 
JOIN albums ON albums.id=songs.album_id 
WHERE albums.id=songs.album_id
GROUP BY albums.name 
ORDER BY count(songs) 


