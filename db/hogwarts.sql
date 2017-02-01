DROP TABLE houses;
DROP TABLE students;


CREATE TABLE students(
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house INT4 references houses(id),
  age INT2
);

CREATE TABLE houses(
id  SERIAL4 primary key,
house_name VARCHAR(255),
url TEXT
);