-- Create View for Tourist Attraction Visit Summary
CREATE VIEW Tourist_Attraction_Visit_Summary AS 
SELECT
    v.visit_id,
    t.name AS tourist_name,
    t.age AS tourist_age, 
    t.country_of_origin,
    a.name AS attraction_name, 
    a.type AS attraction_type, 
    a.location AS attraction_location, 
    v.date_visited
FROM visit v
JOIN tourist t ON v.tourist_id = t.tourist_id
JOIN attraction a ON v.attraction_id = a.attraction_id;

-- Select from the View
SELECT * FROM Tourist_Attraction_Visit_Summary;

-- IF() Function to Categorize Tourists by Age
SELECT 
    name,
    age, 
    CASE
        WHEN age <= 18 THEN 'Under 18'
        WHEN age BETWEEN 19 AND 30 THEN '19-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        ELSE 'Over 45'
    END AS age_group
FROM tourist;

-- Aggregate Function to Calculate Average Rating and Total Number of Reviews Per Attraction
SELECT
    a.name AS attraction_name, 
    AVG(r.rating) AS average_rating, 
    COUNT(r.review_id) AS total_reviews
FROM attraction a
LEFT JOIN review r ON a.attraction_id = r.attraction_id
GROUP BY a.name;
