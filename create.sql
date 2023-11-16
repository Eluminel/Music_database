create table if not exists Musical_genres(
	id SERIAL primary key,
	name_of_genre VARCHAR(60) unique not null
);

create table if not exists Artists (
	id SERIAL primary key,
	name VARCHAR(60) unique not null
);

create table if not exists Artists_Musical_genres (
	artist_id INTEGER references Artists(id),
	musical_genre_id INTEGER references Musical_genres(id),
	constraint pk_artist_musical_genre primary key (artist_id, musical_genre_id)
);

create table if not exists Albums (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	year Date not null CHECK (year > '1910.01.01')
);

create table if not exists Artists_Albums (
	artist_id INTEGER references Artists(id),
	album_id INTEGER references Albums(id),
	constraint pk_artist_album primary key (artist_id, album_id)
);

create table if not exists Tracks (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	duration TIME not null,
	album_id INTEGER not null references Albums(id)
);

create table if not exists Collections (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	year date not null CHECK (year > '1910.01.01')
);

create table if not exists Collections_Tracks (
	collection_id INTEGER references Collections(id),
	track_id INTEGER references Tracks(id),
	constraint pk_collection_track primary key (collection_id, track_id)
);