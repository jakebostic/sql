DROP DATABASE IF EXISTS students;
CREATE DATABASE students;
USE students;


CREATE TABLE Course (
  ID		    INT 			    PRIMARY KEY	    AUTO_INCREMENT,   
  Name		    VARCHAR (25)        NOT NULL		
  );


CREATE TABLE User (
  ID			INT		          PRIMARY KEY,     
  Name          VARCHAR (25)      NOT NULL,
  CourseID      INT,
  
  FOREIGN KEY (CourseID) REFERENCES Course (ID)
  );
  
INSERT INTO Course (ID, Name) VALUES
(1, 'HTML5'),
(2, 'CSS3'),
(3, 'JavaScript'),
(4, 'PHP'),
(5, 'MySQL');
  
INSERT INTO User (ID, Name, CourseID) VALUES
(1, 'Alice', 1),
(2, 'Bob', 1),
(3, 'Caroline', 2),
(4, 'David', 5),
(5, 'Emma', null);


  
  

