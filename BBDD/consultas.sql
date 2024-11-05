USE musicStream;

# ¿Qué género tiene el promedio más alto de reproducciones?
SELECT genre, ROUND(AVG(playcount),2) AS promedio_reproducciones
FROM spotify
INNER JOIN lastfm
USING(artist)
GROUP BY genre
ORDER BY promedio_reproducciones DESC
LIMIT 1;

#¿Cuántos artistas pertenecen a cada género en la base de datos y cuál es el género con más artistas?.
SELECT genre, COUNT(artist)
FROM spotify
GROUP BY genre
ORDER BY COUNT(artist) DESC;

#¿Cuántos artistas tienen menos de 100,000 reproducciones?
SELECT artist, playcount
FROM lastfm
WHERE playcount < 100000
ORDER BY playcount DESC;

#¿Cuál es el artista con más Listeners?.
SELECT artist, listeners
FROM lastfm
ORDER BY listeners DESC
LIMIT 1;

#¿Qué país tiene mas artistas? (ordenar por cantidad).
SELECT origin_country, COUNT(artist) AS numArtistas 
FROM musicbrainz
GROUP BY origin_country
ORDER BY numArtistas DESC;
DROP TABLE lastfm;

#¿Qué artista estuvo mas tiempo y cuantas canciones tiene en el rango extraído de información?
SELECT artist, begin_act, COUNT(song)
FROM musicbrainz
INNER JOIN spotify
USING (artist)
GROUP BY artist
ORDER BY begin_act ASC;
