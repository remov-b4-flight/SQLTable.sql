SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[deems_active2] as 
select caption,[dateTime],collectionSet,collectionName from ( select *, row_number() over (PARTITION BY collectionName ORDER BY [dateTime] DESC) AS number FROM photos) as lastshot 
where lastshot.number = 1 
and lastshot.[dateTime] > DATEFROMPARTS(YEAR(DATEADD(year, -1, GETDATE())),1,1) 
and collectionSet != '%ACTIVE' 
and collectionSet != '%HOF'
and collectionSet != 'Cosplayer' ;
GO
