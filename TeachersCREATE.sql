use University
CREATE TABLE Teachers (
    [Teacher_id]  INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [Last_Name]   NVARCHAR (50) NOT NULL,
    [Second_Name] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Teacher_id] ASC)
);