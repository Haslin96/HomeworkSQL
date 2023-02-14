select name, year_of_issue from album
where year_of_issue >= '01.01.2018' and year_of_issue < '01.01.2019';

select name, duration from song
order by duration desc
limit 1;

select name from song
where duration >= '2.30';

select name from compilation
where year_of_issue >= '01.01.2018' and year_of_issue < '01.01.2021';

select name from executor
where name not like '%% %%';

select name from song
where name like '%%my%%' and name like '%%мой%%'

