-- day6 HW
INSERT INTO movies (title,genre,release_year,rating,box_office) VALUES ('Inception', 'Sci-Fi', 2010, 8.8, 825),( 'The Dark Knight', 'Action', 2008, 9.0, 1004),('Interstellar', 'Sci-Fi', 2014, 8.6, 677),('Joker', 'Drama', 2019, 8.4, 1074),('Dunkirk', 'War', 2017, 7.9, 527);

SELECT  title,box_office as Earnings FROM movies;

SELECT  title as Movie_Title,genre as Category FROM movies;

SELECT title,genre,release_year,rating AS IMDb_Score,box_office FROM movies WHERE genre IN ('Sci-Fi','Action');

SELECT title,genre,release_year as Releas,rating,box_office FROM movies WHERE release_year between 2008 and 2015;

SELECT COUNT(*) AS High_Rated_Movies FROM movies WHERE rating>8.5;