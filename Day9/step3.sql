SELECT a.AppointmentID, a.AppointmentDate, p.PatientName, a.Reason, a.Statu
FROM Appointments a
    JOIN Patients p ON a.PatientID = p.PatientID
WHERE a.DoctorID = 1;

SELECT a.AppointmentID, a.AppointmentDate, d.DoctorName, a.Reason, a.Statu
FROM Appointments a
    JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.PatientID = 1;

SELECT DoctorID, DoctorName, Specialty
FROM Doctors
WHERE Specialty = 'Cardiology';