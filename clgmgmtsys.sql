use college;
-- Course Table
CREATE TABLE COURSE (
    courseId INT PRIMARY KEY,
    cName VARCHAR(100) NOT NULL,
    Fees DECIMAL(10, 2) NOT NULL);
    
DESC course;

-- Faculty Table
CREATE TABLE FACULTY (
    fId INT PRIMARY KEY,
    fName VARCHAR(100) NOT NULL,
    Desig VARCHAR(50),
    PhoneNo VARCHAR(15) UNIQUE,
    Qualification VARCHAR(50),
    cId INT,
    FOREIGN KEY (cId) REFERENCES COURSE(courseId));
    
DESC Faculty;

-- Student Table
CREATE TABLE STUDENT (
    rollNo INT PRIMARY KEY,
    fName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    cId INT,
    Phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (cId) REFERENCES COURSE(courseId));
    
DESC student;

-- Book Table
CREATE TABLE BOOK (
    Bid INT PRIMARY KEY,
    BName VARCHAR(100) UNIQUE,
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    Price DECIMAL(10, 2),
    Qty INT);
    
DESC book;

-- Library Table
CREATE TABLE LIBRARY (
    LId INT PRIMARY KEY,
    BookId INT,
    IssueDate DATE,
    ReturnDate DATE,
    rollNo INT,
    FOREIGN KEY (BookId) REFERENCES BOOK(Bid),
    FOREIGN KEY (rollNo) REFERENCES STUDENT(rollNo));
    
DESC library;

-- Address Table
CREATE TABLE ADDRESS (
    AdId INT PRIMARY KEY,
    houseNo VARCHAR(50),
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10),
    rollNo INT,
    FOREIGN KEY (rollNo) REFERENCES STUDENT(rollNo));
    
DESC address;

INSERT INTO course (courseid, cname, fees)VALUES
(1, 'Computer Science', 5000),
(2, 'Data Science', 6000),
(3, 'Mechanical Engineering', 5500),
(4, 'Civil Engineering', 5200),
(5, 'Electrical Engineering', 5300),
(6, 'Business Management', 4500),
(7, 'Economics', 4000),
(8, 'Physics', 4700),
(9, 'Mathematics', 4600),
(10, 'Biotechnology', 4800);
SELECT *FROM course;

INSERT INTO faculty (fId, fName, Desig, Qualification, phoneNo, cId)VALUES
(1, 'Dr. John Wilson', 'Professor', 'PhD', '9876543210', 1),
(2, 'Dr. Emily Davis', 'Assistant Professor', 'PhD', '9876543211', 2),
(3, 'Dr. David Brown', 'Lecturer', 'MSc', '9876543212', 3),
(4, 'Dr. Sarah Lee', 'Professor', 'PhD', '9876543213', 4),
(5, 'Dr. Michael Johnson', 'Lecturer', 'MSc', '9876543214', 5),
(6, 'Dr. Olivia Thomas', 'Professor', 'PhD', '9876543215', 6),
(7, 'Dr. Ethan Harris', 'Lecturer', 'MSc', '9876543216', 7),
(8, 'Dr. Noah Green', 'Professor', 'PhD', '9876543217', 8),
(9, 'Dr. Ava Clark', 'Lecturer', 'MSc', '9876543218', 9),
(10, 'Dr. Mia Adams', 'Assistant Professor', 'PhD', '9876543219', 10),
(11, 'Dr. Liam Roberts', 'Professor', 'PhD', '9876543220', 1),
(12, 'Dr. Charlotte Walker', 'Lecturer', 'MSc', '9876543221', 2),
(13, 'Dr. Jacob King', 'Professor', 'PhD', '9876543222', 3),
(14, 'Dr. Amelia Baker', 'Lecturer', 'MSc', '9876543223', 4),
(15, 'Dr. Ella Davis', 'Assistant Professor', 'PhD', '9876543224', 5);
SELECT *FROM faculty;

INSERT INTO student (rollNo, fname, cId, email)VALUES
(1, 'John Doe', 1, 'john.doe@example.com'),
(2, 'Jane Smith', 2, 'jane.smith@example.com'),
(3, 'Alice Johnson', 3, 'alice.johnson@example.com'),
(4, 'Bob Williams', 1, 'bob.williams@example.com'),
(5, 'Carol Brown', 4, 'carol.brown@example.com'),
(6, 'David Miller', 2, 'david.miller@example.com'),
(7, 'Eva Moore', 5, 'eva.moore@example.com'),
(8, 'Frank Anderson', 6, 'frank.anderson@example.com'),
(9, 'Grace Thomas', 1, 'grace.thomas@example.com'),
(10, 'Hank Taylor', 3, 'hank.taylor@example.com'),
(11, 'Isabella White', 2, 'isabella.white@example.com'),
(12, 'Jack Harris', 4, 'jack.harris@example.com'),
(13, 'Kara Clark', 1, 'kara.clark@example.com'),
(14, 'Leo Lewis', 5, 'leo.lewis@example.com'),
(15, 'Mia Robinson', 6, 'mia.robinson@example.com'),
(16, 'Nina Walker', 3, 'nina.walker@example.com'),
(17, 'Owen Hall', 4, 'owen.hall@example.com'),
(18, 'Paul Young', 2, 'paul.young@example.com'),
(19, 'Quinn King', 5, 'quinn.king@example.com'),
(20, 'Rita Scott', 6, 'rita.scott@example.com'),
(21, 'Sam Adams', 1, 'sam.adams@example.com'),
(22, 'Tina Green', 3, 'tina.green@example.com'),
(23, 'Uma Baker', 2, 'uma.baker@example.com'),
(24, 'Victor Mitchell', 4, 'victor.mitchell@example.com'),
(25, 'Zara Lee', 5, 'zara.lee@example.com');
SELECT *FROM student;

INSERT INTO book (bid, bname, author, publisher, price, qty)VALUES
(1, 'Data Science Handbook', 'John Smith', 'TechBooks', 49.99, 10),
(2, 'Introduction to SQL', 'Alice Brown', 'DataPress', 29.99, 20),
(3, 'Advanced Python Programming', 'James Doe', 'CodePress', 59.99, 15),
(4, 'Machine Learning Basics', 'Sophia Lee', 'MLBooks', 39.99, 12),
(5, 'AI in Action', 'Daniel White', 'TechBooks', 69.99, 5),
(6, 'Understanding Databases', 'William Green', 'DataPress', 35.99, 8),
(7, 'JavaScript for Beginners', 'Emma Moore', 'CodePress', 24.99, 25),
(8, 'Deep Learning Concepts', 'Olivia King', 'MLBooks', 89.99, 6),
(9, 'Cloud Computing Essentials', 'Liam Young', 'TechBooks', 42.99, 10),
(10, 'Cybersecurity Fundamentals', 'Sophia Lee', 'DataPress', 49.99, 9),
(11, 'Web Development with Flask', 'Isabella Martinez', 'CodePress', 39.99, 15),
(12, 'HTML and CSS: Design and Build Websites', 'Jon Duckett', 'TechBooks', 29.99, 20),
(13, 'The Pragmatic Programmer', 'Andrew Hunt', 'TechBooks', 59.99, 7),
(14, 'Effective Java', 'Joshua Bloch', 'Addison-Wesley', 54.99, 11),
(15, 'You Don’t Know JS', 'Kyle Simpson', 'O\'Reilly Media', 34.99, 18),
(16, 'Automate the Boring Stuff with Python', 'Al Sweigart', 'No Starch Press', 39.99, 15),
(17, 'Learning Java', 'Brett McLaughlin', 'O\'Reilly Media', 44.99, 8),
(18, 'The Clean Coder', 'Robert C. Martin', 'Prentice Hall', 49.99, 9),
(19, 'Design Patterns', 'Erich Gamma', 'Addison-Wesley', 55.99, 12),
(20, 'Introduction to Machine Learning', 'Ethem Alpaydin', 'MIT Press', 62.99, 6),
(21, 'Data Structures and Algorithms Made Easy', 'Narasimha Karumanchi', 'CareerMonk Publications', 29.99, 20),
(22, 'Introduction to Artificial Intelligence', 'Wolfgang Ertel', 'Springer', 79.99, 5),
(23, 'Computer Vision', 'Richard Szeliski', 'Springer', 49.99, 10),
(24, 'Digital Design and Computer Architecture', 'David Harris', 'Morgan Kaufmann', 74.99, 6),
(25, 'Introduction to Quantum Computing', 'Michael Nielsen', 'Quantum Books', 99.99, 3),
(26, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Prentice Hall', 89.99, 5),
(27, 'The Art of Computer Programming', 'Donald Knuth', 'Addison-Wesley', 149.99, 2),
(28, 'Principles of Compiler Design', 'Alfred V. Aho', 'Addison-Wesley', 69.99, 7),
(29, 'Computer Networking: A Top-Down Approach', 'James Kurose', 'Pearson', 69.99, 10),
(30, 'Java Concurrency in Practice', 'Brian Goetz', 'Addison-Wesley', 49.99, 8),
(31, 'Cryptography and Network Security', 'William Stallings', 'Pearson', 69.99, 12),
(32, 'Data Mining: Concepts and Techniques', 'Jiawei Han', 'Morgan Kaufmann', 74.99, 6),
(33, 'Computer Graphics: Principles and Practice', 'John F. Hughes', 'Addison-Wesley', 89.99, 4),
(34, 'Building Microservices', 'Sam Newman', 'O\'Reilly Media', 44.99, 12),
(35, 'C Programming Language', 'Brian W. Kernighan', 'Prentice Hall', 39.99, 20),
(36, 'Head First Java', 'Kathy Sierra', 'O\'Reilly Media', 39.99, 20),
(37, 'Python Crash Course', 'Eric Matthes', 'No Starch Press', 34.99, 18),
(38, 'Learning R', 'Richard Cotton', 'O\'Reilly Media', 39.99, 12),
(39, 'Data Warehousing in the Age of Big Data', 'Nikhil Inamdar', 'TechBooks', 69.99, 6),
(40, 'Big Data: Principles and Best Practices', 'Nathan Marz', 'Manning Publications', 59.99, 7),
(41, 'Statistics for Data Science', 'James D. Miller', 'TechPress', 39.99, 15),
(42, 'The Clean Architecture', 'Robert C. Martin', 'Prentice Hall', 49.99, 8),
(43, 'Programming in Scala', 'Martin Odersky', 'Artima', 54.99, 6),
(44, 'Scala for the Impatient', 'Cay S. Horstmann', 'Addison-Wesley', 44.99, 7),
(45, 'Learning PHP, MySQL & JavaScript', 'Robin Nixon', 'O\'Reilly Media', 39.99, 15),
(46, 'The Complete Reference C', 'Herbert Schildt', 'McGraw-Hill', 49.99, 10),
(47, 'Digital Design', 'M. Morris Mano', 'Prentice Hall', 69.99, 8),
(48, 'Introduction to Game Development', 'Steve Rabin', 'Cengage Learning', 54.99, 6),
(49, 'Refactoring: Improving the Design of Existing Code', 'Martin Fowler', 'Addison-Wesley', 49.99, 10),
(50, 'Learning JavaScript Data Structures and Algorithms', 'Loiane Groner', 'Packt Publishing', 34.99, 15);
SELECT *FROM book;

INSERT INTO library (LId, BookId, IssueDate, ReturnDate, rollNo)VALUES
(1, 1, '2024-10-01', '2024-10-15', 1),
(2, 2, '2024-10-03', '2024-10-17', 2),
(3, 3, '2024-10-05', '2024-10-19', 3),
(4, 4, '2024-10-07', '2024-10-21', 4),
(5, 5, '2024-10-10', '2024-10-24', 5),
(6, 6, '2024-10-11', '2024-10-25', 6),
(7, 7, '2024-10-12', '2024-10-26', 7),
(8, 8, '2024-10-13', '2024-10-27', 8),
(9, 9, '2024-10-14', '2024-10-28', 9),
(10, 10, '2024-10-15', '2024-10-29', 10),
(11, 11, '2024-10-16', '2024-10-30', 11),
(12, 12, '2024-10-17', '2024-10-31', 12),
(13, 13, '2024-10-18', '2024-11-01', 13),
(14, 14, '2024-10-19', '2024-11-02', 14),
(15, 15, '2024-10-20', '2024-11-03', 15),
(16, 16, '2024-10-21', '2024-11-04', 16),
(17, 17, '2024-10-22', '2024-11-05', 17),
(18, 18, '2024-10-23', '2024-11-06', 18),
(19, 19, '2024-10-24', '2024-11-07', 19),
(20, 20, '2024-10-25', '2024-11-08', 20),
(21, 21, '2024-10-26', '2024-11-09', 21),
(22, 22, '2024-10-27', '2024-11-10', 22),
(23, 23, '2024-10-28', '2024-11-11', 23),
(24, 24, '2024-10-29', '2024-11-12', 24),
(25, 25, '2024-10-30', '2024-11-13', 25);
SELECT* FROM library;

INSERT INTO address (AdId, HouseNo, Street, City, State, Pincode, Rollno)VALUES
(1, '101', 'First Avenue', 'Chicago', 'Illinois', '60601', 1),
(2, '102', 'Second Street', 'Peoria', 'Illinois', '61601', 2),
(3, '103', 'Greenwood Drive', 'Naperville', 'Illinois', '60540', 3),
(4, '104', 'River Road', 'Rockford', 'Illinois', '61101', 4),
(5, '105', 'Sunset Boulevard', 'Aurora', 'Illinois', '60505', 5),
(6, '106', 'Maplewood Lane', 'Joliet', 'Illinois', '60431', 6),
(7, '107', 'Cedar Falls', 'Elgin', 'Illinois', '60120', 7),
(8, '108', 'Meadowlark Way', 'Champaign', 'Illinois', '61820', 8),
(9, '109', 'Hillcrest Drive', 'Waukegan', 'Illinois', '60085', 9),
(10, '110', 'Orchard Grove', 'Cicero', 'Illinois', '60804', 10),
(11, '111', 'Parkside Court', 'Bloomington', 'Illinois', '61701', 11),
(12, '112', 'Sunrise Terrace', 'Evanston', 'Illinois', '60201', 12),
(13, '113', 'Seventh Street', 'Schaumburg', 'Illinois', '60173', 13),
(14, '114', 'Northfield Avenue', 'Arlington Heights', 'Illinois', '60004', 14),
(15, '115', 'Westview Lane', 'Berwyn', 'Illinois', '60402', 15),
(16, '116', 'Birchwood Road', 'Calumet City', 'Illinois', '60409', 16),
(17, '117', 'Woodland Drive', 'Champaign', 'Illinois', '61821', 17),
(18, '118', 'Winding Way', 'Tinley Park', 'Illinois', '60477', 18),
(19, '119', 'Stonebridge Lane', 'Normal', 'Illinois', '61761', 19),
(20, '120', 'Lakeside Drive', 'DeKalb', 'Illinois', '60115', 20),
(21, '121', 'Dawn Street', 'Burbank', 'Illinois', '60459', 21),
(22, '122', 'Crescent Road', 'Oak Park', 'Illinois', '60302', 22),
(23, '123', 'Pine Valley', 'Downers Grove', 'Illinois', '60515', 23),
(24, '124', 'Silver Maple Drive', 'Elmhurst', 'Illinois', '60126', 24),
(25, '125', 'Summit Place', 'Lake Forest', 'Illinois', '60045', 25);
SELECT*FROM address;

/* complex queries with the relationships.. */

/* retrieve students with thier address details and course information*/

SELECT s.rollNo, s.fName, s.email, a.houseNo, a.street, a.city, a.state, a.pincode, c.cName
FROM student s
JOIN address a ON s.rollNo=a.rollNo
JOIN course c ON s.cId=c.courseId;

/*find students who live in a specific state and their course.. */

SELECT s.fname, s.email, a.state,c.cname
FROM student s
JOIN address a ON s.rollno = a.rollno
JOIN course c ON s.cid = c.courseid
WHERE a.state ='Illinois';

/* fina faculty members teaching courses with fess above a certain amount */

SELECT f.fname AS facultyname, f.desig, f.qualification, f.phoneno, c.cname, c.fees
FROM faculty f
JOIN course c ON f.cid = c.courseid
WHERE c.Fees > 5000;

/* list all books with a quantity greater than 15.. */

SELECT b.bid, b.bname, b.author, b.publisher, b.price,b.qty
FROM book b
where b.qty > 15;

/* find students and faculty teaching thier courses  */

SELECT s.fname AS studentname, s.email, f.fname AS facultyname, f.desig, c.cname
FROM student s
JOIN course c ON s.cId = c.courseId
JOIN faculty f ON c.courseid = f.cid;

SELECT cId,cname