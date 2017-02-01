DROP TABLE houses CASCADE;
DROP TABLE students CASCADE;


CREATE TABLE houses(
id  SERIAL4 primary key,
house_name VARCHAR(255),
url TEXT
);

CREATE TABLE students(
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT4 references houses(id),
  age INT2
);