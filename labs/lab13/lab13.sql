.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;

CREATE TABLE sevens AS
  SELECT stud.seven FROM students as stud, numbers as num WHERE stud.time = num.time AND stud.number = 7 AND num.'7' = 'True';


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) AS count FROM students GROUP BY pet ORDER BY count DESC, pet DESC LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, count from favpets WHERE pet = 'dog';


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(*) AS count FROM bluedog_songs GROUP BY song ORDER BY count DESC, song DESC;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(*) AS count FROM students WHERE seven='7' GROUP BY instructor;
