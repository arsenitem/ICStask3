use University;
CREATE TABLE Faculties
(
    [Faculty_id] INT IDENTITY (1, 1) NOT NULL,
    [Faculty]    NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Faculty_id] ASC)
)