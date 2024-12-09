CREATE DATABASE MovieDatabase;
USE MovieDatabase;

-- Create Genres Table
CREATE TABLE Genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Create Directors Table
CREATE TABLE Directors (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255)
);

-- Create Movies Table
CREATE TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    genre_id INT,
    director_id INT,
    runtime_minutes INT,
    budget DECIMAL(15, 2),
    box_office DECIMAL(15, 2),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

-- Create Users Table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);

-- Create Ratings Table
CREATE TABLE Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    user_id INT,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    review_date DATE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id));
    -- Insert Genres
INSERT INTO Genres (genre_name) VALUES
('Action'), ('Comedy'), ('Drama'), ('Horror'), ('Science Fiction');

-- Insert Directors
INSERT INTO Directors (name, country) VALUES
('Christopher Nolan', 'USA'),
('Steven Spielberg', 'USA'),
('Greta Gerwig', 'USA'),
('Quentin Tarantino', 'USA'),
('James Cameron', 'Canada');

-- Insert Movies
INSERT INTO Movies (title, release_year, genre_id, director_id, runtime_minutes, budget, box_office) VALUES
('Inception', 2010, 5, 1, 148, 160000000, 830000000),
('Pulp Fiction', 1994, 3, 4, 154, 8000000, 213000000),
('Titanic', 1997, 3, 5, 195, 200000000, 2200000000),
('The Dark Knight', 2008, 1, 1, 152, 185000000, 1000000000),
('E.T.', 1982, 5, 2, 115, 10500000, 792000000);

-- Insert Users
INSERT INTO Users (username, email) VALUES
('user1', 'user1@example.com'),
('user2', 'user2@example.com'),
('user3', 'user3@example.com'),
('user4', 'user4@example.com'),
('user5', 'user5@example.com');

-- Insert Ratings
INSERT INTO Ratings (movie_id, user_id, rating, review_date) VALUES
(1, 1, 5, '2023-01-01'),
(1, 2, 4, '2023-01-02'),
(2, 1, 4, '2023-01-03'),
(2, 3, 5, '2023-01-04'),
(3, 4, 3, '2023-01-05'),
(3, 5, 4, '2023-01-06'),
(4, 2, 5, '2023-01-07'),
(5, 3, 3, '2023-01-08');
SELECT 
    m.title, 
    AVG(r.rating) AS avg_rating
FROM 
    Movies m
JOIN 
    Ratings r ON m.movie_id = r.movie_id
GROUP BY 
    m.title
ORDER BY 
    avg_rating DESC
LIMIT 5;
SELECT 
    g.genre_name, 
    COUNT(r.rating) AS total_ratings
FROM 
    Genres g
JOIN 
    Movies m ON g.genre_id = m.genre_id
JOIN 
    Ratings r ON m.movie_id = r.movie_id
GROUP BY 
    g.genre_name
ORDER BY 
    total_ratings DESC;
    SELECT 
    d.name, 
    SUM(m.box_office) AS total_box_office
FROM 
    Directors d
JOIN 
    Movies m ON d.director_id = m.director_id
GROUP BY 
    d.name
ORDER BY 
    total_box_office DESC;
 SELECT 
    YEAR(r.review_date) AS review_year, 
    AVG(r.rating) AS avg_rating
FROM 
    Ratings r
GROUP BY 
    review_year
ORDER BY 
    review_year;   