CREATE TABLE Doctors (
    DoctorID NUMBER(10) PRIMARY KEY,
    DoctorName VARCHAR2(100) NOT NULL,
    Specialty VARCHAR2(50)
);

CREATE TABLE Patients (
    PatientID NUMBER(10) PRIMARY KEY,
    PatientName VARCHAR2(100) NOT NULL,
    DOB DATE,
    Phone VARCHAR2(15),
    Email VARCHAR2(100) UNIQUE
);

CREATE TABLE Appointments (
    AppointmentID NUMBER(10) PRIMARY KEY,
    PatientID NUMBER(10) NOT NULL,
    DoctorID NUMBER(10) NOT NULL,
    AppointmentDate TIMESTAMP NOT NULL,
    Reason VARCHAR2(255),
    Statu VARCHAR2(20) DEFAULT 'Scheduled',
    CONSTRAINT chk_status CHECK (Statu IN ('Scheduled', 'Completed', 'Cancelled')),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);