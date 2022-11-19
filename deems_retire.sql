SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[deems_retire] as 
select caption,[dateTime],collectionSet from ( select *, row_number() over (PARTITION BY caption ORDER BY [dateTime] DESC) AS number FROM photos) as lastshot 
where lastshot.number = 1 and lastshot.[dateTime] < DATEADD(year, -5, GETDATE()) 
and collectionSet != '%RETIRED'
GO
