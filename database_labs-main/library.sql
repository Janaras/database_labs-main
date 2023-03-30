--CREATE DATABASE b_library
/*
USE b_library
CREATE TABLE tAuthors (
AuthorId  INT  IDENTITY (1,1)NOT NULL,
AuthorFirstName NVARCHAR(20) NOT NULL,
AuthorLastName NVARCHAR(20) NOT NULL,
AuthorAge INT NOT NULL
);
CREATE TABLE tBooks (
BookId  INT IDENTITY(1,1)NOT NULL,
BookTitle NVARCHAR(20) NOT NULL,
Author INT NOT NULL
);

CREATE TABLE History (
Id INT IDENTITY PRIMARY KEY,
AuthorId INT NOT NULL,
Operation NVARCHAR(200) NOT NULL,
CreateAt DATETIME NOT NULL DEFAULT GETDATE(),
);

GO
CREATE TRIGGER tAuthors_INSERT
ON dbo.tAuthors
AFTER INSERT
AS
INSERT INTO History (AuthorId, Operation)
SELECT AuthorId, 'Добавлен автор: ' + AuthorFirstName + ' ' +  AuthorLastName
FROM inserted




CREATE TRIGGER tr_CheckAuthor
ON tAuthors
FOR INSERT, UPDATE
AS
BEGIN
    DECLARE @AuthorAge INT

    SELECT @AuthorAge = AuthorAge FROM inserted

    IF @AuthorAge < 18
    BEGIN
        PRINT ('Author age must be at least 18 years old.')
        ROLLBACK TRANSACTION
    END
END

*/


/*
USE b_library
INSERT INTO tAuthors(AuthorFirstName, AuthorLastName, AuthorAge)
VALUES ('Jack','London','')

SELECT * 
FROM History
*/


USE b_library
INSERT INTO tAuthors(AuthorFirstName, AuthorLastName, AuthorAge)
VALUES ('Test','test','11')

SELECT * 
FROM History
