-- Create Database
CREATE DATABASE wild_atlantic_way_feedback_hub;

-- Use the Database
USE wild_atlantic_way_feedback_hub;

-- Create Tourist Table
CREATE TABLE tourist (
tourist_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL,
age SMALLINT NOT NULL,
country_of_origin VARCHAR(50) DEFAULT NULL, travel_preferences VARCHAR(50) DEFAULT NULL
);

-- Create Attraction Table
CREATE TABLE attraction (
attraction_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL,
type VARCHAR(50) NOT NULL,
location VARCHAR(50) NOT NULL,
description TEXT DEFAULT NULL
);

-- Create Review Table
CREATE TABLE review (
review_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, tourist_id INT(11) NOT NULL,
attraction_id INT(11) NOT NULL,
rating INT(11) NOT NULL,
review TEXT DEFAULT NULL,
FOREIGN KEY (tourist_id) REFERENCES tourist(tourist_id), FOREIGN KEY (attraction_id) REFERENCES attraction(attraction_id)
);

-- Create Visit Table
CREATE TABLE visit (
visit_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, tourist_id INT(11) NOT NULL,
attraction_id INT(11) NOT NULL,
date_visited DATE NOT NULL,
FOREIGN KEY (tourist_id) REFERENCES tourist(tourist_id), FOREIGN KEY (attraction_id) REFERENCES attraction(attraction_id) );