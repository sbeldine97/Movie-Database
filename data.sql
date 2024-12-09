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