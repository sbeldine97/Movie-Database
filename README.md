*Project Overview*
This project involves creating and managing a relational database for a movie database. It focuses on designing the database schema, populating it with sample data, and performing SQL queries to derive valuable insights about movies, genres, directors, and user ratings.

*Objectives*
Create a relational database schema for storing and managing movie-related data.
Populate the database with sample data, including movies, genres, directors, users, and ratings.
Use SQL queries to analyze trends such as the most popular genres, top-rated movies, and director performance.
Database Schema
The project includes the following tables:

Genres: Stores information about movie genres.
genre_id: Primary Key.
genre_name: Name of the genre.
Directors: Stores details about movie directors.
director_id: Primary Key.
name: Name of the director.
country: Country of origin.
Movies: Stores details about movies.
movie_id: Primary Key.
title: Movie title.
release_year: Year of release.
genre_id: Foreign Key referencing Genres.
director_id: Foreign Key referencing Directors.
runtime_minutes: Duration of the movie in minutes.
budget: Production budget.
box_office: Box office revenue.
Users: Stores details about users who rate movies.
user_id: Primary Key.
username: Username of the reviewer.
email: User email.
Ratings: Stores user ratings for movies.
rating_id: Primary Key.
movie_id: Foreign Key referencing Movies.
user_id: Foreign Key referencing Users.
rating: Rating score (1 to 5).
review_date: Date of the rating.


5 Genres
5 Directors
5 Movies
5 Users
8 Ratings
This data is stored in data.sql.

