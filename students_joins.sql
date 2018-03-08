select * from course;
select * from user;

-- Inner Join (most used)
select user.name, course.name
from user 
inner join course on user.courseid = course.id;
-- can use just "JOIN"
-- Emma does not show up because she is not in a course. (joins user names with course names)
-- user.name, course.name - selecting name fields from user and course tables

-- below is another way to complete above step. "as" changes column names on below table
 select user.name as UserName, course.name as CourseName
 from user, course
 where user.courseid = course.id;
 -- where clause filters specific data

-- Left Join
select user.name, course.name
from user 
left join course on user.courseid = course.id;
-- adds all data in left table (user table), includes emma

-- get all students without a course assignment
select * from user
where courseid is null;

-- get all courses without a student assignment
select * from course
where id not in 
	(select distinct(courseid) from user where courseid is not null);

-- Right Join
select user.name, course.name
from user 
right join course on user.courseid = course.id;

select user.name, course.name
from course
left join user on user.courseid = course.id;

SELECT course.name, COUNT(user.name)
FROM course
LEFT JOIN user ON user.courseid = course.id
GROUP BY course.id;

-- Outer Join (less used)
SELECT user.name, course.name
FROM user
LEFT JOIN course on user.courseid = course.id

UNION

SELECT user.name, course.name
FROM user
RIGHT JOIN course on user.courseid = course.id;

