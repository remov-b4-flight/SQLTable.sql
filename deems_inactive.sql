SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [dbo].[deems_inactive] as 
select caption,[dateTime],collectionSet,collectionName from ( select *, row_number() over (PARTITION BY caption ORDER BY [dateTime] DESC) AS number FROM photos) as lastshot 
where lastshot.number = 1 and lastshot.[dateTime] between DATEFROMPARTS(YEAR(DATEADD(year, -5, GETDATE())),1,1) and DATEFROMPARTS(YEAR(DATEADD(year, -1, GETDATE())),1,1) ;
GO
