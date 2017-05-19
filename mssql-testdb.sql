CREATE DATABASE testdb;
GO

Use testdb;
GO

CREATE SCHEMA testschema;
GO

CREATE TABLE testschema.employees (
  ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Name NVARCHAR(50),
  Location NVARCHAR(50)
);
GO

INSERT INTO testschema.employees (Name, Location) VALUES
(N'Jared Tallent', N'Australia'),
(N'Nikita Khrushchev', N'Russia'),
(N'Geeta Phogat', N'India'),
(N'Thomas Hasler', N'Germany'),
(N'John A. MacDonald', N'Canada');
GO

