--Автор, название и год издания той книги, которая в библиотеке меньше всего
  select 
      a.[LastName],
	  b.[Name],
	  b.[Count],
	  b.[YearOfPublishing]
  from [LoymaxTestDb].[dbo].[Books] as b, Authors as a, AuthorsBooks as ab
  where b.[Count] = (select min(Count) from [LoymaxTestDb].[dbo].[Books]) and a.Id = ab.AuthorsId and b.Id = ab.BooksId --or join
--Колличество книг по годам издания
  select [YearOfPublishing], Sum([Count]) as [COUNT]
  from [LoymaxTestDb].[dbo].[Books]
  group by [YearOfPublishing]
--Название книг автора, книг которого в библиотеке представлено больше всего
  select b.Name
  from [LoymaxTestDb].[dbo].[Books] as b
  join [LoymaxTestDb].[dbo].[AuthorsBooks] as ab on ab.BooksId = b.Id
  join [LoymaxTestDb].[dbo].[Authors] as a on a.Id = ab.AuthorsId
  where a.Id = ()

  select a.Id, count(b.Id)
  from [LoymaxTestDb].[dbo].[Books] as b, Authors as a, AuthorsBooks as ab --or join
  where a.Id = ab.AuthorsId and b.Id = ab.BooksId and
  group by a.Id    
  order by [Count] desc
