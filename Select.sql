select name, duration from song
where duration = (select max(duration) from song);

select name from song
where duration >= '3.30';

select name from compilation
where year_of_issue >= '01.01.2018' and year_of_issue < '01.01.2021';

select name from executor
where name not like '%% %%';

select name from song
where name like '%%my%%' or name like '%%мой%%'

select genre_id, count (executor_id) from genre_executor
group by genre_id;

select name, year_of_issue from album
where year_of_issue >= '01.01.2018' and year_of_issue <= '01.01.2020';

select name,AVG(duration) from album a
join song b on a.album_id = b.album_id
group by name;

SELECT name FROM executor
WHERE name NOT IN (
    SELECT name FROM executor
    JOIN executor_album ON executor_id = album_id
    WHERE year_of_issue = 2020
);

SELECT name FROM compilation
JOIN song_compilation ON compilation_id = song_compilation(compilation_id)
JOIN song ON song_id = song(song_id)
JOIN album ON album_id = executor_album(album_id)
JOIN executor_album ON executor_id = executor(executor_id)
WHERE name LIKE 'Plamenev';
