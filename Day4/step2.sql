INSERT INTO Employees (FName, Position, Department, Salary, HireDate)
VALUES ('John', 'Software Engineer', 'IT', 75000.00, TO_DATE('2022-05-15', 'YYYY-MM-DD'));

INSERT INTO Employees (FName, Position, Department, Salary, HireDate)
VALUES ('Jane', 'Data Analyst', 'Marketing', 65000.00, TO_DATE('2023-02-20', 'YYYY-MM-DD'));

INSERT INTO Employees (FName, Position, Department, Salary, HireDate)
VALUES ('Emily', 'HR Manager', 'Human Resources', 80000.00, TO_DATE('2021-11-01', 'YYYY-MM-DD'));

INSERT INTO Employees (FName, Position, Department, Salary, HireDate)
VALUES ('Michael', 'Project Manager', 'Operations', 85000.00, TO_DATE('2019-08-12', 'YYYY-MM-DD'));

INSERT INTO Employees (FName, Position, Department, Salary, HireDate)
VALUES ('Chris', 'System Administrator', 'IT', 72000.00, TO_DATE('2020-07-25', 'YYYY-MM-DD'));

SELECT * FROM Employees;
