use movie_data;

select *
from movie;

-- Question 1: Write a query in SQL to find the name and year of the movies.
select mov_title, mov_year
from movie;

-- Question 2: Write a query in SQL to find the year when the movie American Beauty released.
select mov_year, mov_title
from movie
where mov_title = 'American Beauty';

-- Question 3: Write a query in SQL to find the movie which was released in the year 1999.
select mov_title, mov_year
from movie
where mov_year = '1999';

-- Question 4: Write a query in SQL to find the movies which was released before 1998
select mov_title, mov_year
from movie
where mov_year < 2020;

-- Question 5: Write a query in SQL to find the movie which was released in the year 1999
select mov_title, mov_year
from movie
where mov_year = '199s9';

-- Question 6: Write a query in SQL to return the name of all reviewers and name of movies together in a single list
select mov_id, mov_title, rev_name
from reviewer, movie;

-- Question 7: Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
select rev_name, rev_stars
from reviewer join rating
using (rev_id)
where rev_stars >= 7;

-- Question 8: Write a query in SQL to find the titles of all movies that have no ratings.
select mov_title
from movie join rating
using(mov_id)
where num_o_ratings = 0;

-- Question 9: Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL  value
select mov_title
from movie
join rating using(mov_id)
where num_o_ratings is null;

-- Question 10: Write a query in SQL to find the name of movie and director (first and last names) who directed a
-- movie that casted a role for 'Eyes Wide Shut'
 