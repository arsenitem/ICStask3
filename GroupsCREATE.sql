use University;
CREATE TABLE Groups (
    [Group_id] INT           IDENTITY (1, 1) NOT NULL,
    [Group]    NVARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([Group_id] ASC)
);