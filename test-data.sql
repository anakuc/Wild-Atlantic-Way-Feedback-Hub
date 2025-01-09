-- Insert test data into tourist table
INSERT INTO tourist (tourist_id, name, age, country_of_origin, travel_preferences) VALUES
( '1', 'Jackson Brown', '30', 'USA', 'Nature'),
( '2', 'Margot Monet', '46', 'France', 'History');

-- Insert test data into attraction table
INSERT INTO attraction (attraction_id, name, type, location, description) VALUES
( '1', 'Annagh Head', 'Natural', 'County Mayo', 'Rugged headland on the Mullet Peninsula'), 
( '2', 'Derrynane House', 'Historic', 'County Kerry', 'Ancestral home of Daniel O''Connell');

-- Insert test data into review table
INSERT INTO review (review_id, tourist_id, attraction_id, rating, review) VALUES 
( 1, 1, 1, 5, 'Breathtaking view! Must-visit spot.'),
( 2, 2, 2, 4, 'Beautiful architecture');

-- Insert test data into visit table
INSERT INTO visit (visit_id, tourist_id, attraction_id, date_visited) VALUES 
( 1, 1, 1, '2024-04-20'),
( 2, 2, 2, '2024-04-22');
