use University;

CREATE TABLE Students (
    [Student_id]  INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [Last_name]   NVARCHAR (50) NOT NULL,
    [Second_name] NVARCHAR (50) NOT NULL,
    [Group_num]   INT NOT NULL,
    [Birth_date]  DATE          NOT NULL,
    PRIMARY KEY CLUSTERED ([Student_id] ASC)
);