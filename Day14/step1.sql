CREATE TABLE Students (
    StudentID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Address VARCHAR2(200)
);

CREATE TABLE Teachers (
    TeacherID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    HireDate DATE,
    SubjectSpecialization VARCHAR2(100)
);

CREATE TABLE Courses (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(100),
    TeacherID NUMBER,
    Credits NUMBER,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE ExamGrades (
    GradeID NUMBER PRIMARY KEY,
    StudentID NUMBER,
    CourseID NUMBER,
    ExamDate DATE,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


INSERT INTO Students VALUES (1, 'Alice', 'Brown', TO_DATE('2005-05-10', 'YYYY-MM-DD'), 'F', '123 Elm Street');
INSERT INTO Students VALUES (2, 'Bob', 'Smith', TO_DATE('2004-03-20', 'YYYY-MM-DD'), 'M', '456 Oak Avenue');

INSERT INTO Teachers VALUES (1, 'John', 'Doe', TO_DATE('2010-08-15', 'YYYY-MM-DD'), 'Mathematics');
INSERT INTO Teachers VALUES (2, 'Mary', 'Johnson', TO_DATE('2015-01-20', 'YYYY-MM-DD'), 'Science');

INSERT INTO Courses VALUES (1, 'Algebra I', 1, 3);
INSERT INTO Courses VALUES (2, 'Physics', 2, 4);

INSERT INTO ExamGrades VALUES (1, 1, 1, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'A');
INSERT INTO ExamGrades VALUES (2, 2, 2, TO_DATE('2024-01-18', 'YYYY-MM-DD'), 'B');
