use University;
CREATE TABLE Marks (
    [Mark_id] INT IDENTITY (1, 1) NOT NULL,
    [Lesson]  INT NOT NULL,
    [Student] INT NOT NULL,
    [Mark]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Mark_id] ASC)
);