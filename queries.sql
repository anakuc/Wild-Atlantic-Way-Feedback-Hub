-- CRUD Queries

-- a. Select: Select tourists who have visited at least two attractions with a rating of 4 or more
SELECT DISTINCT t.name
FROM tourist t
JOIN review r ON t.tourist_id = r.tourist_id
GROUP BY t.tourist_id
HAVING COUNT(DISTINCT r.attraction_id) >= 2 AND MIN(r.rating) >= 4;

-- b. Insert: Insert a new tourist if not already present
INSERT INTO tourist (name, age, country_of_origin, travel_preferences)
SELECT 'Emily Johnson', 28, 'Canada', 'Adventure'
FROM dual
WHERE NOT EXISTS (
    SELECT 1
    FROM tourist
    WHERE name = 'Emily Johnson'
);

-- c. Update: Increase the age of tourists who have visited a natural attraction
UPDATE tourist
SET age = age + 5
WHERE tourist_id IN (
    SELECT DISTINCT t.tourist_id
    FROM tourist t
    JOIN visit v ON t.tourist_id = v.tourist_id
    JOIN attraction a ON v.attraction_id = a.attraction_id
    WHERE a.type = 'Natural'
);

-- d. Delete: Delete tourists from Canada who are older than 25
DELETE FROM tourist
WHERE country_of_origin = 'Canada' AND age > 25;
