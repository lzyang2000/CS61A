.read fa18data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT  seven , denero FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students 
      WHERE smallest > 13 ORDER BY smallest LIMIT 20;

-- Q4
CREATE TABLE matchmaker AS
   SELECT x.pet, x.song, x.color, y.color FROM students AS x, students AS y
          WHERE x.pet = y.pet AND x.song = y.song AND x.time < y.time;

