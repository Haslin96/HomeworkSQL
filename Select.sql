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

select name from executor
where name not in (
    select name from executor
    join executor_album  on executor_id = album_id
    where year_of_issue = 2020;
);

select name from compilation
join compilation on compilation_id = song_compilation(compilation_id)
join song_compilation  on song_id = song(song_id)
join song  on album_id = album(album_id)
join album  on album_id = executor_album(album_id)
join executor_album on executor_id = executor(executor_id)
where name like 'Plamenev';
