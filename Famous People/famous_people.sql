-- Project: Famous People: Musical Theatre Stars --
-- Skills: CREATE TABLE, INSERT, SELECT, WHERE, IN, GROUP BY, JOIN, COUNT, ALIASES --
-- Goal: Organize and analyze data about musical theatre stars, their roles, shows, and awards using SQL --

-- Created table for theatre stars --
CREATE TABLE theatre_stars (
    id INTEGER PRIMARY KEY,
    full_name TEXT,
    age INTEGER,
    nationality TEXT,
    notable_role TEXT
);

-- Inserted data into theatre_stars --
INSERT INTO theatre_stars (full_name, age, nationality, notable_role) VALUES
    ('Willemijn Verkaik', 49, 'Dutch', 'Elphaba'),
    ('Ben Platt', 31, 'American', 'Evan Hansen'),
    ('Carrie Hope Fletcher', 32, 'British', 'Veronica Sawyer'),
    ('Pia Douwes', 61, 'Dutch', 'Elisabeth'),
    ('Idina Menzel', 54, 'American', 'Elphaba'),
    ('Sabrina Weckerlin', 39, 'German', 'Elsa');

-- Created table for shows --
CREATE TABLE shows (
    id INTEGER PRIMARY KEY,
    title TEXT,
    premiere_year INTEGER,
    composer TEXT,
    company_region TEXT
);

-- Inserted data into shows ---- Inserted data into awards --
INSERT INTO shows (title, premiere_year, composer, company_region) VALUES
    ('Wicked', 2003, 'Stephen Schwartz', 'Broadway'),
    ('Dear Evan Hansen', 2016, 'Benj Pasek', 'Broadway'),
    ('Die Eiskönigin', 2021, 'Robert Lopez', 'Germany'),
    ('Elisabeth', 1992, 'Sylvester Levay', 'Austria'),
    ('Heathers', 2018, 'Laurence O\'Keefe', 'West End'),
    ('Rent', 1996, 'Jonathan Larson', 'Broadway');

-- Created table for awards --
CREATE TABLE awards (
    id INTEGER PRIMARY KEY,
    title TEXT,
    winner TEXT,
    theatre_region TEXT
);

-- Inserted data into awards --
INSERT INTO awards (title, winner, theatre_region) VALUES
    ('Tony Awards', 'Idina Menzel', 'Broadway'),
    ('Tony Awards', 'Ben Platt', 'Broadway'),
    ('Olivier Awards', 'Carrie Hope Fletcher', 'West End');

-- Viewed all theatre stars --
SELECT * FROM theatre_stars;

-- Viewed all shows --
SELECT * FROM shows;

-- Who are all the theatre stars and their notable roles? --
SELECT
    full_name AS "Actor",
    notable_role AS "Notable Role"
FROM theatre_stars;

-- Which shows premiered after 2000? --
SELECT
    title AS "Show",
    composer AS "Composer",
    premiere_year AS "Premiere Year"
FROM shows
WHERE premiere_year > 2000;

-- Which shows were performed in a German-speaking country? --
SELECT
    title AS "Show",
    company_region AS "Country"
FROM shows
WHERE company_region IN ('Austria', 'Germany');

-- Which shows are performed in the same region as an award's theatre region? --
SELECT
    shows.title AS "Show",
    shows.company_region AS "Company",
    awards.title AS "Award"
FROM shows
JOIN awards
    ON shows.company_region = awards.theatre_region
GROUP BY shows.title;

-- How many of the included actors are under the age of 50? --
SELECT
    COUNT(*) AS "Actors Under 50"
FROM theatre_stars
WHERE age < 50;
