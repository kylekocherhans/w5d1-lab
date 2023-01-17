-- 1. Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    age INTEGER,
    height INTEGER,
    city VARCHAR(30),
    favorite_color VARCHAR(30)
);

-- 2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES
('Kyle Kocherhans', 34, 185, 'Orem', 'blue'),
('Kevin Bacon', 64, 177, 'Los Angeles', 'orange'),
('Hugh Jackman', 49, 190, 'Sydney', 'yellow'),
('Keanu Reeves', 27, 185, 'Toronto', 'green'),
('Ryan Reynolds', 18, 187, 'Vancouver', 'red');

-- 3. Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;

-- 4. Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height;

-- 5. Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;

-- 6. Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

-- 7. Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;

-- 8. Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9. Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age != 27;

-- 10. Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color != 'red';

-- 11. Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color NOT IN ('red', 'blue');

-- 12. Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- 14. Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');