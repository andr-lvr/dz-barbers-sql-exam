-- Додавання тестових барберів
INSERT INTO Barbers (FullName, Gender, ContactPhone, Email, BirthDate, HireDate, Position)
VALUES
    ('John Doe', 'Male', '123456789', 'john.doe@example.com', '1990-01-01', '2022-01-01', 'Chief Barber'),
    ('Jane Smith', 'Female', '987654321', 'jane.smith@example.com', '1992-05-15', '2022-02-01', 'Senior Barber'),
    ('Bob Johnson', 'Male', '555555555', 'bob.johnson@example.com', '1995-08-20', '2022-03-01', 'Junior Barber');

-- Додавання тестових послуг
INSERT INTO Services (ServiceName, Price, Duration)
VALUES
    ('Haircut', 20.00, 30),
    ('Shave', 15.00, 20),
    ('Beard Trim', 10.00, 15);

-- Додавання тестових фідбеків та оцінок клієнтів
INSERT INTO Feedbacks (ClientID, BarberID, Rating, Comment)
VALUES
    (1, 1, 'Good', 'Great haircut!'),
    (2, 2, 'Excellent', 'Very professional service'),
    (3, 3, 'Average', 'Could be better');

-- Додавання тестового розкладу барберів
INSERT INTO Schedule (BarberID, Date, StartTime, EndTime, IsAvailable)
VALUES
    (1, '2022-01-10', '09:00:00', '17:00:00', 1),
    (2, '2022-01-10', '10:00:00', '18:00:00', 1),
    (3, '2022-01-10', '11:00:00', '19:00:00', 1);

-- Додавання тестових клієнтів
INSERT INTO Clients (FullName, ContactPhone, Email)
VALUES
    ('Alice Johnson', '111111111', 'alice.johnson@example.com'),
    ('Bob Miller', '222222222', 'bob.miller@example.com'),
    ('Charlie Davis', '333333333', 'charlie.davis@example.com');

-- Додавання тестового архіву відвідувань клієнтів
INSERT INTO VisitsArchive (ClientID, BarberID, ServiceID, VisitDate, TotalCost, Rating, Comment)
VALUES
    (1, 1, 1, '2022-01-05', 20.00, 'Good', 'Satisfied with the haircut'),
    (2, 2, 2, '2022-01-07', 15.00, 'Excellent', 'Great shaving experience'),
    (3, 3, 3, '2022-01-09', 10.00, 'Average', 'Quick beard trim');

-- Додавання тестових записів про записи клієнтів
INSERT INTO Appointments (ClientID, BarberID, ServiceID, AppointmentDate, StartTime)
VALUES
    (1, 1, 1, '2022-01-15', '10:00:00'),
    (2, 2, 2, '2022-01-17', '11:30:00'),
    (3, 3, 3, '2022-01-19', '12:45:00');
