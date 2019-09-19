-- 160101
INSERT INTO types (name)
VALUES ('Entire Villa'), ('Entire House'), ('Shared House')

-- 160102
CREATE TABLE users (
  userid INT NOT NULL AUTO_INCREMENT,
  name VARCHAR (255),
  email VARCHAR (255),
  PRIMARY KEY (userid)
)

INSERT INTO users (name, email)
VALUES ('John Smith', 'john@email.com'), ('Sarah Black', 'sarah@gmail.com'), 
('Albert Philips', 'albert@gmail.com'),('Bob Adams', 'bob@email.com')

-- 160103
CREATE TABLE places (
  placeid INT NOT NULL AUTO_INCREMENT,
  title VARCHAR (255),
  price INT (11),
  rating INT (11),
  city VARCHAR(255),
  type INT (11),
  host INT (11),
  PRIMARY KEY (placeid)
)

INSERT INTO places (title, price, rating, city, type, host)
VALUES ('Amazing Villa by the Ocean', 150, 5, 'Phuket', 1, 2), 
('Amazing View in the Jungle', 80, 4, 'Phangan', 2, 1), 
('Villa with 360 Rooftop', 160, 5, 'Samui',1 , 1), 
('Cool flat in trendy area', 80, 5, 'Chiang Mai', 2, 4), 
('Stylish room in city center', 50, 3, 'Bangkok', 3, 2), 
('Cozy room by the beach', 40, 4, 'Samui', 3, 1)

-- 160104
CREATE TABLE likes (
  likeid INT NOT NULL AUTO_INCREMENT,
  user INT (11),
  place INT (11),
  PRIMARY KEY (id)
);

INSERT INTO likes (user, place)
VALUES (1, 1), (1, 2), (2 ,1), (2, 2), (2, 4), (3, 1), (3, 3), (3, 4) 

-- 160201
SELECT * FROM places

-- 160202
SELECT placeid, title, price FROM places

-- 160203
SELECT * FROM places
WHERE type = 1

-- 160204
SELECT * FROM places
WHERE city = 'Samui'

-- 160205
SELECT * FROM places
WHERE price BETWEEN 80 AND 150

-- 160206
SELECT placeid, title, price FROM places
ORDER BY price ASC

-- 160207
SELECT * FROM places
WHERE title LIKE 'Amazing%'

-- 160208
SELECT placeid, 
title as NAME, 
price as AMOUNT, 
rating FROM places
WHERE rating = 5 
OR rating = 3

-- 160209
SELECT userid, name, email FROM users
WHERE userid = 2 OR userid = 3

-- 160301
SELECT * FROM places
LEFT JOIN types
ON places.type = types.typeid

-- 160302
SELECT placeid, title, price, types.name FROM places
LEFT JOIN types
ON places.type = types.typeid

-- 160303
SELECT
  placeid,
  title,
  price,
  types.name,
  users.name,
  users.email
FROM places
LEFT JOIN users
  ON places.host = users.userid
LEFT JOIN types
  ON places.type = types.typeid
WHERE price >= 50
ORDER BY placeid ASC

-- 160304
SELECT name, email, places.title, places.rating FROM users
LEFT JOIN places
ON users.userid = places.host

-- 160305
SELECT name, email, places.title, places.rating FROM users
INNER JOIN places
ON users.userid = places.host

-- 160306
SELECT places.title, users.name AS fan FROM likes
RIGHT JOIN places
ON likes.place = places.placeid
LEFT JOIN users
ON likes.user = users.userid
ORDER BY places.title

-- 160307
SELECT places.title, users.name AS fan FROM likes
RIGHT JOIN places
ON likes.place = places.placeid
INNER JOIN users
ON likes.user = users.userid
ORDER BY users.name

-- 160308
SELECT users.name AS fan, places.title, types.name FROM likes
RIGHT JOIN places
ON likes.place = places.placeid
INNER JOIN users
ON likes.user = users.userid
INNER JOIN types
ON places.type = types.typeid
ORDER BY users.name
