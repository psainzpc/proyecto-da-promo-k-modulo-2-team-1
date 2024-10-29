CREATE SCHEMA music_stream;
USE music_stream;
DROP TABLE musicbrainz;

CREATE TABLE spotify (
track VARCHAR(150),
artist VARCHAR(50) NOT NULL,
genre VARCHAR(50),
t_type VARCHAR(50),
release_year VARCHAR(50), -- info de spotify
-- extract_year VARCHAR(50) -- se lo damos nosotros. Esta info es de la pregunta que nosostros le hacemos a la api. El resto es de la respuesta de la api.
PRIMARY KEY (artist)
);

CREATE TABLE musicbrainz(
artist VARCHAR(50),
origin_country VARCHAR(50),
origin_area VARCHAR(50),
begin_act VARCHAR(50), 
end_act VARCHAR(50),
CONSTRAINT fk_spotify_musicbrainz 
FOREIGN KEY (artist)
REFERENCES spotify(artist)
ON DELETE restrict
ON UPDATE restrict);

CREATE TABLE lastfm (
artist VARCHAR(50),
bio VARCHAR(1000),
listeners VARCHAR(50),
playcount VARCHAR(50),
similar_artists VARCHAR(50),
CONSTRAINT fk_spotify_lastfm
FOREIGN KEY (artist)
REFERENCES spotify(artist)
ON DELETE restrict
ON UPDATE restrict);


