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