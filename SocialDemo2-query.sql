-------------------------------------------------------------------------
-- Who's working together
select	s1.FirstName, s1.LastName, w1.Since, s2.FirstName, s2.LastName
from	dbo.Student s1, 
		dbo.Student s2, 
		dbo.WorksWith w1
Where	Match(s1-(w1)->s2);
-------------------------------------------------------------------------
-- Get Published articles and the author name
select a1.Title, s1.FirstName, s1.LastName, authored.PublishedAt
from	dbo.Student s1,
		dbo.Article a1,
		dbo.Authored authored
where	Match(s1-(authored)->a1)
-- and s1.Id = 1
order by a1.Title;
-------------------------------------------------------------------------
-- Get Published articles that are worked on with more than one author
select	a1.Title, s1.FirstName, s1.LastName, s2.FirstName, s2.LastName, authored1.PublishedAt
from	dbo.Student s1,
		dbo.Student s2,
		dbo.WorksWith w1,
		dbo.Authored authored1,
		dbo.Authored authored2,
		dbo.Article a1
Where	Match(s1-(authored1)->a1)
	and Match(s2-(authored2)->a1)
	and Match(s1-(w1)->s2)
-------------------------------------------------------------------------
