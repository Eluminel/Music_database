insert into Musical_genres (name_of_genre)
values
('Rock'),
('Pop'),
('Alternative'),
('Metal');

insert into Artists (name)
values
('Slipknot'),
('Poets of the Fall'),
('Kuumaa'),
('Three Days Grace'),
('Dead by April'),
('Suvi Teräsniska');

insert into Albums (name, year)
values
('All Hope Is Gone', '2008.08.26'),
('Ultraviolet', '2018.10.05'),
('Hyvikset ja pahikset', '2023.03.31'),
('Human', '2015.03.27'),
('Worlds Collide', '2017.04.07'),
('Täydellinen elämä', '2019.11.06');

insert into Tracks (name, duration, album_id)
values
('Psychosocial', '00:04:44', 1),
('Dead Memories', '00:04:29', 1),
('My Dark Disquiet', '00:05:10', 2),
('The Sweet Escape', '00:05:30', 2),
('Tulipalo', '00:03:03', 3),
('Ylivoimainen', '00:03:01', 3),
('The Real You', '00:03:56', 4),
('Fallen Angel', '00:03:06', 4),
('I Can not Breathe', '00:04:02',5),
('Crying Over You', '00:04:25', 5),
('Seuraavassa elämässä', '00:02:56', 6),
('Ahvenanmaa', '00:03:17', 6);

insert into Collections (name,year)
values
('Best rock songs', '2018.12.24'),
('Parhaat suomalaiset laulut', '2023.04.12'),
('World hits', '2017.11.11'),
('Collection of metal music', '2019.01.20');

insert into Artists_Musical_genres (artist_id, musical_genre_id)
values
(1,1),
(1,3),
(1,4),
(2,3),
(3,2),
(4,1),
(4,3),
(5,1),
(5,4),
(6,2);

insert into Artists_Albums (artist_id, album_id)
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6);

insert into Collections_Tracks (collection_id, track_id)
values
(1,1),
(1,2),
(1,3),
(1,4),
(1,9),
(1,10),
(2,5),
(2,6),
(2,11),
(2,12),
(3,1),
(3,2),
(3,6),
(3,7),
(3,11),
(4,7),
(4,8),
(4,9),
(4,10);