use movie_data;

insert into actor (act_id, act_fname, act_lname, act_gender)
values
(01, 'Nicole', 'Kidman', 'F'),
(02, 'Tom', 'Cruise', 'M'),
(03, 'Kevin', 'Spacey', 'M'),
(04, 'Morgan', 'Freeman', 'M'),
(05, 'Jake', 'Gyllnhaal', 'M'), 
(06, 'Brad', 'Pitt', 'M'),
(07, 'Megan', 'Good', 'F');

insert into movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
values
(01, 'Eyes Wide Shut', 1999, 112, 'English US', '1999-03-23', 'USA'),
(02, 'American Beauty', 1998, 120, 'English US', '1998-02-14', 'USA'),
(03, 'Seven', 1997, 123, 'English US', '1997-03-17', 'USA'),
(04, 'Nocturnal Animals', 2017, 134, 'English US', '2017-02-12', 'USA'),
(05, 'Stomp The Yard', 2009, 112, 'English US', '2009-03-25', 'USA');

insert into movie_cast (act_id, mov_id, mov_role)
values
(01, 01, 'Supporting Actor'),
(02, 01, 'Lead Actor'),
(03, 02, 'Lead Actor'),
(03, 03, 'Supporting Actor'),
(04, 03, 'Supporting Actor'),
(05, 04, 'Lead Actor'),
(06, 03, 'Lead Actor'),
(07, 05, 'Supporting Actor');

insert into director (dir_id, dir_fname, dir_lname)
values
(01, 'Sam', 'Mendes'),
(02, 'John', 'Doe'),
(03, 'Tom', 'Ford'),
(04, 'Jibola', 'Bakare'),
(05, 'Santa', 'Maria');

insert into movie_direction (dir_id, mov_id)
values
(01, 02),
(02, 01),
(03, 04),
(04, 05),
(05, 05);

insert into reviewer (rev_id, rev_name)
values
(01, 'Rotten Tomatoes'),
(02, 'IMDB'),
(03, 'Hot Kilishi');

insert into genre (gen_id, gen_title)
values
(01, 'Thriller'),
(02, 'Psycological'),
(03, 'Drama');

insert into movie_genre (mov_id, gen_id)
values
(01, 02),
(02, 03),
(03, 01),
(04, 01),
(05, 03);

insert into rating (mov_id, rev_id, rev_stars, num_o_ratings)
values
(01, 01, 08, 124),
(01, 02, 07, 111),
(01, 03, 08, 24),
(02, 01, 07, 109),
(02, 02, 07, 23),
(02, 03, 07, 23),
(03, 01, 08, 134),
(03, 02, 09, 121),
(03, 03, 08, 29),
(04, 01, 08, 342),
(04, 02, 07, 135),
(04, 03, 08, 58),
(05, 01, 06, 121),
(05, 02, 06, 90),
(05, 03, 07, 34);