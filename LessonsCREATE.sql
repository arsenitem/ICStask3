use University
CREATE TABLE Lessons (
    [Lesson_id] INT           IDENTITY (1, 1) NOT NULL,
    [Lesson]    NVARCHAR (50) NOT NULL,
    [Teacher]   INT           NOT NULL,
    [Year]      INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Lesson_id] ASC)
);
