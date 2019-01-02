--------------------------------------------------------------------
Insert into dbo.Student values('John', 'Smith', '11-08-1982');
Insert into dbo.Student values('Jane', 'Smythe', '11-08-1989');
Insert into dbo.Student values('Gilbert', 'Rossi', '12-05-1999');
select * from dbo.Student;
--------------------------------------------------------------------
Insert into dbo.WorksWith values(
	(select $node_id from dbo.Student where Id = 1),
	(select $node_id from dbo.Student where Id = 2),
	'11-01-2000'
);
Insert into dbo.WorksWith values(
	(select $node_id from dbo.Student where Id = 1),
	(select $node_id from dbo.Student where Id = 3),
	'11-01-2001'
);
Insert into dbo.WorksWith values(
	(select $node_id from dbo.Student where Id = 2),
	(select $node_id from dbo.Student where Id = 3),
	'11-01-2000'
);
select * from dbo.WorksWith;
--------------------------------------------------------------------
Insert into dbo.Article values('SQL Graph', 'It is different than GraphQL for APIs');
Insert into dbo.Article values('SQL 2017', 'Use the newest version of the Studio SSMS 17.9.1');
Insert into dbo.Article values('Azure Renamed', 'VSO -> VSTS - Azure DevOps');
select * from dbo.Article;
--------------------------------------------------------------------
Insert into dbo.Authored values (
	(select $node_id from dbo.Student where Id = 1),
	(select $node_id from dbo.Article where Id = 1),
	'01-01-2001'
);
Insert into dbo.Authored values (
	(select $node_id from dbo.Student where Id = 1),
	(select $node_id from dbo.Article where Id = 2),
	'01-01-2001'
);
Insert into dbo.Authored values (
	(select $node_id from dbo.Student where Id = 3),
	(select $node_id from dbo.Article where Id = 1),
	'01-01-2001'
);
select * from dbo.Authored;
--------------------------------------------------------------------
