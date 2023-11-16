select name, duration from tracks
order by duration desc 
limit 1;

select name, duration from tracks
where duration > '00:03:30'

select name from collections
where year between '2018.01.01' and '2019.12.31'

select name from artists
where name ~ '^\S+$'

select name from tracks
where LOWER (name) like '%my%'

select mg.name_of_genre, COUNT(amg.artist_id) from Musical_genres mg
join Artists_Musical_genres amg on mg.id = amg.musical_genre_id
group by mg.name_of_genre;


select a.name, COUNT(t.name) from albums a
join tracks t on a.id = t.album_id
where a."year" between '2019.01.01' and '2020.12.31'
group by a.name;

select a.name, avg(t.duration) from albums a
join tracks t on a.id = t.album_id
group by a.name;

select a.name from Artists a
left join Artists_Albums aa ON a.id = aa.artist_id
left join Albums al on aa.album_id = al.id
where al."year" not between '2020.01.01' and '2020.12.31'
group by a.name;

select distinct c.name from collections c 
join collections_tracks ct on c.id = ct.collection_id  
join tracks t on ct.track_id  = t.id 
join albums ab on ab.id = t.album_id
join artists_albums aa on ab.id = aa.album_id 
join artists a on a.id = aa.artist_id 
where a."name" like 'Slipknot';

