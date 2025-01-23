SELECT 
    s.StudentID, 
    s.FirstName || ' ' || s.LastName AS FullName, 
    c.CourseName, 
    e.Grade
FROM 
    Students s
JOIN 
    ExamGrades e ON s.StudentID = e.StudentID
JOIN 
    Courses c ON e.CourseID = c.CourseID
WHERE 
    c.CourseName = 'Algebra I';

SELECT 
    c.CourseID, 
    c.CourseName, 
    c.Credits
FROM 
    Courses c
JOIN 
    Teachers t ON c.TeacherID = t.TeacherID
WHERE 
    t.FirstName = 'John';

SELECT 
    c.CourseName, 
    AVG(CASE 
        WHEN e.Grade = 'A' THEN 4 
        WHEN e.Grade = 'B' THEN 3 
        WHEN e.Grade = 'C' THEN 2 
        WHEN e.Grade = 'D' THEN 1 
        ELSE 0 
    END) AS AverageGrade
FROM 
    Courses c
LEFT JOIN 
    ExamGrades e ON c.CourseID = e.CourseID
GROUP BY 
    c.CourseName;
