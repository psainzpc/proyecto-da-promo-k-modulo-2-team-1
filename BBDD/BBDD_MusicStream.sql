CREATE SCHEMA musicStream;
USE musicStream;

CREATE TABLE musicbrainz(
	artist VARCHAR(50) UNIQUE,
	origin_country VARCHAR(50),
	origin_area VARCHAR(50),
	begin_act DATE,
	end_act DATE,
    PRIMARY KEY (artist));
    
CREATE TABLE spotify(
	song VARCHAR(50),
    artist VARCHAR(50),
    genre VARCHAR(50),
    t_type VARCHAR(50),
    release_year VARCHAR(50),
    y_year VARCHAR(50),
	CONSTRAINT fk_spotify_musicbrainz
	FOREIGN KEY(artist)
	REFERENCES musicbrainz(artist)
	ON DELETE restrict
	ON UPDATE restrict);
    
CREATE TABLE lastfm(
	artist VARCHAR(50),
	bio VARCHAR(1000),
	listeners VARCHAR(50),
	playcount VARCHAR(50),
	similar_artists VARCHAR(50),
    CONSTRAINT fk_musicbrainz_lastfm
	FOREIGN KEY(artist)
	REFERENCES musicbrainz(artist)
	ON DELETE restrict
	ON UPDATE restrict);