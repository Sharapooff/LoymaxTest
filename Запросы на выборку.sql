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
  select Sum([Count]) as [COUNT]
  from [LoymaxTestDb].[dbo].[Books] as b, Authors as a, AuthorsBooks as ab --or join
  where a.Id = ab.AuthorsId and b.Id = ab.BooksId and
  [COUNT] >6
  group by a.Id    
  order by [Count] desc