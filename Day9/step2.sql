INSERT INTO Doctors (DoctorID, DoctorName, Specialty) VALUES (1, 'Dr. John Smith', 'Cardiology');
INSERT INTO Doctors (DoctorID, DoctorName, Specialty) VALUES (2, 'Dr. Jane Doe', 'Neurology');

INSERT INTO Patients (PatientID, PatientName, DOB, Phone, Email) VALUES (1, 'Alice Johnson', TO_DATE('1980-01-01', 'YYYY-MM-DD'), '123-456-7890', 'alice@example.com');
INSERT INTO Patients (PatientID, PatientName, DOB, Phone, Email) VALUES (2, 'Bob Brown', TO_DATE('1990-02-02', 'YYYY-MM-DD'), '098-765-4321', 'bob@example.com');

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason, Statu) VALUES (1, 1, 1, TO_TIMESTAMP('2023-10-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Reason, Statu) VALUES (2, 2, 2, TO_TIMESTAMP('2023-10-02 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Consultation', 'Scheduled');