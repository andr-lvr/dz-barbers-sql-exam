create database BarberShop
use BarberShop

-- Створення таблиці для барберів
CREATE TABLE Barbers (
    BarberID INT PRIMARY KEY,
    FullName VARCHAR(255),
    Gender VARCHAR(10),
    ContactPhone VARCHAR(15),
    Email VARCHAR(255),
    BirthDate DATE,
    HireDate DATE,
    Position VARCHAR(20),
    CONSTRAINT chk_position CHECK (Position IN ('Chief Barber', 'Senior Barber', 'Junior Barber'))
);

-- Створення таблиці для послуг та їх цін
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(255),
    Price DECIMAL(8, 2),
    Duration INT
);

-- Створення таблиці для фідбеків та оцінок клієнтів
CREATE TABLE Feedbacks (
    FeedbackID INT PRIMARY KEY,
    ClientID INT,
    BarberID INT,
    Rating VARCHAR(20),
    Comment TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (BarberID) REFERENCES Barbers(BarberID)
);

-- Створення таблиці для розкладу барберів
CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY,
    BarberID INT,
    Date DATE,
    StartTime TIME,
    EndTime TIME,
    IsAvailable BOOLEAN,
    FOREIGN KEY (BarberID) REFERENCES Barbers(BarberID)
);

-- Створення таблиці для клієнтів
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    FullName VARCHAR(255),
    ContactPhone VARCHAR(15),
    Email VARCHAR(255)
);

-- Створення таблиці для архіву відвідувань клієнтів
CREATE TABLE VisitsArchive (
    VisitID INT PRIMARY KEY,
    ClientID INT,
    BarberID INT,
    ServiceID INT,
    VisitDate DATE,
    TotalCost DECIMAL(8, 2),
    Rating VARCHAR(20),
    Comment TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (BarberID) REFERENCES Barbers(BarberID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Створення таблиці для записів клієнтів на робочі години барберів
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    ClientID INT,
    BarberID INT,
    ServiceID INT,
    AppointmentDate DATE,
    StartTime TIME,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (BarberID) REFERENCES Barbers(BarberID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);
