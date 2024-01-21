-- Function to get all barber
CREATE FUNCTION GetAllBarbers()
RETURNS TABLE
AS
RETURN (
    SELECT * FROM Barbers
);

-- Function to get barbers by service
CREATE FUNCTION GetBarbersByService(ServiceName VARCHAR(255))
RETURNS TABLE
AS
RETURN (
    SELECT B.*
    FROM Barbers B
    JOIN Services S ON B.Position = S.ServiceName
    WHERE S.ServiceName = ServiceName
);

-- Function to get barbers by experience
CREATE FUNCTION GetBarbersByExperience(YearsOfExperience INT)
RETURNS TABLE
AS
RETURN (
    SELECT *
    FROM Barbers
    WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > YearsOfExperience
);

-- Stored procedure to delete old archive records
CREATE PROCEDURE DeleteOldArchiveRecords()
AS
BEGIN
    DELETE FROM VisitsArchive
    WHERE DATEDIFF(YEAR, VisitDate, GETDATE()) > 1;
END;

-- Function to get senior and junior barber count
CREATE FUNCTION GetSeniorJuniorBarberCount()
RETURNS TABLE
AS
RETURN (
    SELECT
        (SELECT COUNT(*) FROM Barbers WHERE Position = 'Senior Barber') AS SeniorBarberCount,
        (SELECT COUNT(*) FROM Barbers WHERE Position = 'Junior Barber') AS JuniorBarberCount
);
