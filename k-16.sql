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





