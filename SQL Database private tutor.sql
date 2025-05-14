

drop database if  exists PrivateTutor;

create database if not exists PrivateTutor;
use PrivateTutor;

CREATE TABLE Tutor (
    TutorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactNumber VARCHAR(15),
    EmailAddress VARCHAR(100),
    ExpertSubject VARCHAR(100),
    Qualification TEXT,
    AvailabilitySchedule TEXT
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    ContactNumber VARCHAR(15),
    EmailAddress VARCHAR(100),
    Address TEXT
);



CREATE TABLE Topic (
    TopicID INT PRIMARY KEY,
    TopicName VARCHAR(100),
    SubjectName VARCHAR(100),
    TopicDescription TEXT
);

CREATE TABLE TutoringSession (
    SessionID INT PRIMARY KEY,
    TutorID INT,
    StudentID INT,
    TopicID INT,
    Date_Time DATETIME,
    Duration VARCHAR(20),
    Type VARCHAR(20), 
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (TopicID) REFERENCES Topic(TopicID)
);


CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    SessionID INT,
    TotalAmountPaid DOUBLE,
    PaymentDate DATE,
    PaymentStatus VARCHAR(20),
    PaymentMode VARCHAR(20),    
    FOREIGN KEY (SessionID) REFERENCES TutoringSession(SessionID)
);

CREATE TABLE Progress (
    ReportID INT PRIMARY KEY,
    SessionID INT,
    EvaluationDate DATE,
    Feedback TEXT,
    Score DOUBLE,
    FOREIGN KEY (SessionID) REFERENCES TutoringSession(SessionID)
);




INSERT INTO Tutor VALUES (1, 'Alice', 'Johnson', '1234567890', 'alice@example.com', 'Mathematics', 'M.Sc Math', 'Mon-Fri 5PM-8PM');
INSERT INTO Tutor VALUES (2, 'Bob', 'Smith', '1234567891', 'bob@example.com', 'Physics', 'M.Sc Physics', 'Sat-Sun 10AM-1PM');
INSERT INTO Tutor VALUES (3, 'Carol', 'Davis', '1234567892', 'carol@example.com', 'English', 'M.A English', 'Mon-Fri 3PM-6PM');
INSERT INTO Tutor VALUES (4, 'David', 'Wilson', '1234567893', 'david@example.com', 'Chemistry', 'PhD Chemistry', 'Weekdays 6PM-9PM');
INSERT INTO Tutor VALUES (5, 'Eva', 'Taylor', '1234567894', 'eva@example.com', 'Biology', 'M.Sc Biology', 'Weekends 10AM-2PM');
INSERT INTO Tutor VALUES (6, 'Frank', 'Thomas', '1234567895', 'frank@example.com', 'History', 'M.A History', 'Mon-Wed 5PM-7PM');
INSERT INTO Tutor VALUES (7, 'Grace', 'Lee', '1234567896', 'grace@example.com', 'Geography', 'M.Sc Geography', 'Tue-Thu 6PM-8PM');
INSERT INTO Tutor VALUES (8, 'Henry', 'Martin', '1234567897', 'henry@example.com', 'Computer Science', 'MCA', 'Weekdays 9AM-12PM');
INSERT INTO Tutor VALUES (9, 'Irene', 'Clark', '1234567898', 'irene@example.com', 'Economics', 'M.A Economics', 'Weekends 11AM-3PM');
INSERT INTO Tutor VALUES (10, 'Jack', 'Lewis', '1234567899', 'jack@example.com', 'Political Science', 'M.A Political Science', 'Evenings only');


select * from Tutor;

INSERT INTO Student VALUES (1, 'Tom', 'Anderson', 17, '9988776655', 'tom@student.com', '123 Main St');
INSERT INTO Student VALUES (2, 'Sara', 'Miller', 18, '9988776656', 'sara@student.com', '456 Elm St');
INSERT INTO Student VALUES (3, 'Ben', 'White', 16, '9988776657', 'ben@student.com', '789 Oak St');
INSERT INTO Student VALUES (4, 'Lily', 'Brown', 17, '9988776658', 'lily@student.com', '321 Pine St');
INSERT INTO Student VALUES (5, 'Mike', 'Green', 19, '9988776659', 'mike@student.com', '654 Cedar St');
INSERT INTO Student VALUES (6, 'Nina', 'Adams', 15, '9988776660', 'nina@student.com', '987 Maple St');
INSERT INTO Student VALUES (7, 'Jake', 'Hall', 18, '9988776661', 'jake@student.com', '159 Birch St');
INSERT INTO Student VALUES (8, 'Emma', 'Scott', 16, '9988776662', 'emma@student.com', '753 Willow St');
INSERT INTO Student VALUES (9, 'Alex', 'King', 17, '9988776663', 'alex@student.com', '852 Spruce St');
INSERT INTO Student VALUES (10, 'Kate', 'Wright', 18, '9988776664', 'kate@student.com', '951 Fir St');

select * from Student;

INSERT INTO Topic VALUES (1, 'Algebra Basics', 'Mathematics', 'Introduction to algebra concepts and equations');
INSERT INTO Topic VALUES (2, 'Newton’s Laws', 'Physics', 'Detailed explanation of Newton’s laws of motion');
INSERT INTO Topic VALUES (3, 'Grammar Rules', 'English', 'Overview of grammar and sentence structure');
INSERT INTO Topic VALUES (4, 'Organic Chemistry', 'Chemistry', 'Study of carbon compounds and reactions');
INSERT INTO Topic VALUES (5, 'Cell Biology', 'Biology', 'Structure and function of cells');
INSERT INTO Topic VALUES (6, 'World War II', 'History', 'Causes, events, and aftermath of WWII');
INSERT INTO Topic VALUES (7, 'Continents and Oceans', 'Geography', 'Earth’s continents, oceans, and features');
INSERT INTO Topic VALUES (8, 'Python Programming', 'Computer Science', 'Basics of Python language and syntax');
INSERT INTO Topic VALUES (9, 'Supply and Demand', 'Economics', 'Principles of supply, demand, and pricing');
INSERT INTO Topic VALUES (10, 'Political Theories', 'Political Science', 'Key theories and ideologies in politics');

select * from Topic;

INSERT INTO TutoringSession VALUES (1, 1, 1, 1, '2024-10-01 17:00', '2 hours', 'Online');
INSERT INTO TutoringSession VALUES (2, 2, 2, 2, '2024-10-02 10:00', '1.5 hours', 'In-person');
INSERT INTO TutoringSession VALUES (3, 3, 3, 3, '2024-10-03 15:00', '1 hour', 'Online');
INSERT INTO TutoringSession VALUES (4, 4, 4, 4, '2024-10-04 18:00', '2 hours', 'Online');
INSERT INTO TutoringSession VALUES (5, 5, 5, 5, '2024-10-05 11:00', '1 hour', 'In-person');
INSERT INTO TutoringSession VALUES (6, 6, 6, 6, '2024-10-06 16:00', '2 hours', 'In-person');
INSERT INTO TutoringSession VALUES (7, 7, 7, 7, '2024-10-07 19:00', '1.5 hours', 'Online');
INSERT INTO TutoringSession VALUES (8, 8, 8, 8, '2024-10-08 09:00', '2 hours', 'In-person');
INSERT INTO TutoringSession VALUES (9, 9, 9, 9, '2024-10-09 12:00', '1 hour', 'Online');
INSERT INTO TutoringSession VALUES (10, 10, 10, 10, '2024-10-10 17:00', '1.5 hours', 'In-person');

select * from TutoringSession;

INSERT INTO Payment VALUES (1, 1, 50.00, '2024-10-01', 'Paid', 'Online');
INSERT INTO Payment VALUES (2, 2, 40.00, '2024-10-02', 'Pending', 'Cash');
INSERT INTO Payment VALUES (3, 3, 30.00, '2024-10-03', 'Paid', 'Online');
INSERT INTO Payment VALUES (4, 4, 60.00, '2024-10-04', 'Paid', 'Cash');
INSERT INTO Payment VALUES (5, 5, 25.00, '2024-10-05', 'Pending', 'Online');
INSERT INTO Payment VALUES (6, 6, 55.00, '2024-10-06', 'Paid', 'Cash');
INSERT INTO Payment VALUES (7, 7, 45.00, '2024-10-07', 'Paid', 'Online');
INSERT INTO Payment VALUES (8, 8, 65.00, '2024-10-08', 'Pending', 'Cash');
INSERT INTO Payment VALUES (9, 9, 35.00, '2024-10-09', 'Paid', 'Online');
INSERT INTO Payment VALUES (10, 10, 40.00, '2024-10-10', 'Paid', 'Online');

select * from Payment;

INSERT INTO Progress VALUES (1, 1, '2024-10-01', 'Good understanding', 85.5);
INSERT INTO Progress VALUES (2, 2, '2024-10-02', 'Needs improvement', 60.0);
INSERT INTO Progress VALUES (3, 3, '2024-10-03', 'Excellent performance', 95.0);
INSERT INTO Progress VALUES (4, 4, '2024-10-04', 'Average effort', 70.0);
INSERT INTO Progress VALUES (5, 5, '2024-10-05', 'Well done', 88.0);
INSERT INTO Progress VALUES (6, 6, '2024-10-06', 'Below expectations', 55.0);
INSERT INTO Progress VALUES (7, 7, '2024-10-07', 'Great participation', 90.0);
INSERT INTO Progress VALUES (8, 8, '2024-10-08', 'Fair performance', 75.0);
INSERT INTO Progress VALUES (9, 9, '2024-10-09', 'Excellent effort', 92.0);
INSERT INTO Progress VALUES (10, 10, '2024-10-10', 'Good progress', 80.0);


select * from Progress;
