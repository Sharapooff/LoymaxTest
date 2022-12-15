--CREATE DATABASE LoymaxTestDb
--GO
Use LoymaxTestDb
--GO
--CREATE TABLE Authors
--(
--    Id INT PRIMARY KEY IDENTITY(1,1),
--    YearOfBirth INT NOT NULL CHECK(YearOfBirth >0),
--    FirstName NVARCHAR(20) NOT NULL,
--    LastName NVARCHAR(20) NOT NULL,
--	--, PRIMARY KEY(Id)
--)
--GO
--CREATE TABLE Books
--(
--    Id INT PRIMARY KEY IDENTITY(1,1),    
--    Name NVARCHAR(50) NOT NULL,
--	[Count] INT NOT NULL,
--    YearOfPublishing INT NOT NULL CHECK(YearOfPublishing > 0)
--)
--GO
--CREATE TABLE AuthorsBooks (
--    [AuthorsId] INT NOT NULL,
--    [BooksId] INT NOT NULL,
--    CONSTRAINT [PK_AuthorsBooks] PRIMARY KEY CLUSTERED ([AuthorsId] ASC, [BooksId] ASC),
--    CONSTRAINT [FK_AuthorsBooks_Authors_AuthorsId] FOREIGN KEY ([AuthorsId]) REFERENCES [Authors] ([Id]) ON DELETE CASCADE,
--    CONSTRAINT [FK_AuthorsBooks_Books_BooksId] FOREIGN KEY ([BooksId]) REFERENCES [Books] ([Id]) ON DELETE CASCADE
--);

--GO
--INSERT Authors VALUES 
--(1891, '������','��������'),
--(1860, '����','�����'),
--(1821, '�����','����������'),
--(1821, '�������','������'),
--(1799, '���������','������'),
--(1818, '����','���������')

--GO
--INSERT Books VALUES 
--('������� ������', 5, 1925),

--('��������', 12, 1887),

--('����� ����', 5, 1948),


--('���', 5, 1836),
--('������', 12, 1842),

--('����������', 2, 1841),
--('��������', 6, 1841),

--('��-��', 10, 1954),
--('���� � ����', 9, 1862)

--GO
--INSERT AuthorsBooks VALUES 
--(1, 1),

--(2, 2),

--(3, 3),


--(4, 4),
--(4, 5),

--(5, 6),
--(5, 7),

--(6, 8),
--(6, 9)