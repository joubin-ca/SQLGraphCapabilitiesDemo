--------------------------------------------------------
-- $node_id
Create Table Student
(
	Id int IDENTITY(1,1) PRIMARY KEY,
	FirstName nvarchar(50) not null,
	LastName nvarchar(100) not null,
	Dob datetime
) As NODE;

Create Table Article
(
	Id int IDENTITY(1,1) PRIMARY KEY,
	Title nvarchar(50) not null,
	Content nvarchar(max) not null
) As NODE;

--------------------------------------------------------
-- $node_id
-- $from_id
-- $to_id
Create Table Authored
(
	PublishedAt datetime not null
) As EDGE;

Create Table WorksWith
(
	Since datetime not null
) As EDGE;
