-- Rule 2: Guaranteed Access
-- Demonstrates guaranteed access to data in a relational database.
SELECT country_of_origin FROM tourist WHERE tourist_id = 1;

-- Rule 4: Active Online Catalog Rule
-- Demonstrates access to metadata (database schema, table structure) to understand the database design.
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'wild_atlantic_way_feedback_hub'
AND table_name IN ('tourist', 'attraction', 'review', 'visit');

-- Rule 5: The Comprehensive Data Sublanguage Rule
-- Demonstrates use of a single comprehensive language for data manipulation.
SELECT COUNT(*) AS num_travelers FROM visit
WHERE date_visited = '2024-04-22';

-- Rule 7: High-Level Insert, Update, Delete Rule
-- Demonstrates the use of SQL for high-level data manipulation (Insert, Update, Delete).

-- Example of Update
UPDATE tourist
SET travel_preferences = 'Adventure'
WHERE country_of_origin IN ('USA', 'Canada');

-- Example of Insert
INSERT INTO tourist (name, age, country_of_origin, travel_preferences)
VALUES 
  ('John Smith', 35, 'USA', 'Adventure'),
  ('Emma Johnson', 28, 'Canada', 'Nature');
