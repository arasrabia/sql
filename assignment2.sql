--1 QUESTION How many tracks does each album have? 
--Your solution should include Album id and its number of tracks sorted from highest to lowest.
SELECT  tracks.AlbumId , COUNT(albums.AlbumId) AS number_of_track
FROM  tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId
GROUP BY tracks.AlbumId
ORDER BY  number_of_track DESC;


--2.QUESTION Find the album title of the tracks. 
--Your solution should include track name and its album title.
SELECT tracks.AlbumId, COUNT(albums.name) AS number_of_track
FROM tracks
LEFT JOIN albums
ON tracks.AlbumId = albums.AlbumId
ORDER BY  number_of_track DESC;

--3 QUESTION Find the minimum duration of the track in each album. 
--Your solution should include album id, album title and duration of the track sorted from highest to lowest.

SELECT   tracks.AlbumId, albums.Title, MIN(tracks.Milliseconds) AS min_duration
FROM tracks
LEFT JOIN albums
ON tracks.AlbumId = albums.AlbumId
GROUP BY  tracks.AlbumId, albums.Title
ORDER BY  min_duration DESC;

--4 QUESTION Find the total duration of each album. Your solution should include album id, 
--album title and its total duration sorted from highest to lowest.

SELECT tracks.AlbumId,  albums.Title, SUM(tracks.Milliseconds) AS total_duration
FROM tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId
GROUP BY tracks.AlbumId,  albums.Title
ORDER BY Title DESC, total_duration DESC  ;

--5 QUESTION   Based on the previous question, find the albums whose total duration is higher than 70 minutes. 
--Your solution should include album title and total duration.

SELECT tracks.AlbumId,  albums.Title,  SUM(tracks.Milliseconds) AS total_duration
FROM tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId
GROUP BY tracks.AlbumId,  albums.Title
HAVING  total_duration  >  4200000
ORDER BY total_duration DESC  ;









