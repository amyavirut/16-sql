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
  userid INT NOT NULL AUTO_INCREMENT,
  name VARCHAR (255),
  email VARCHAR (255),
  PRIMARY KEY (userid)
)

INSERT INTO likes (user, place)
VALUES (1, 1), (1, 2), (2 ,1), (2, 2), (2, 4), (3, 1), (3, 3), (3, 4) 

-- 160201
SELECT * FROM places