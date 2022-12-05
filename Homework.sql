CREATE TABLE IF NOT exists genre (
	genre_id SERIAL primary key,
	name VARCHAR(80) not null
);

CREATE TABLE IF NOT exists executor(
	executor_id SERIAL primary key,
	name VARCHAR(80) not null,
	genre_id INTEGER not null references genre(genre_id)
);

CREATE TABLE IF NOT exists album(
	album_id SERIAL primary key,
	name VARCHAR(100),
	year_of_issue DATE,
	executor_id INTEGER not null references executor(executor_id)
);

CREATE TABLE IF NOT exists song(
	song_id SERIAL primary key references album(album_id),
	name VARCHAR(80) not null,
	duration VARCHAR (20) not null
);

CREATE TABLE IF NOT exists compilation(
	compilation_id SERIAL primary key,
	name VARCHAR(100),
	year_of_issue DATE,
	song_id INTEGER not null references song(song_id),
	album_id INTEGER not null references album(album_id)
);

