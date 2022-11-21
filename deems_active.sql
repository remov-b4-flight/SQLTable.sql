SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [dbo].[deems_active] as 
select caption,[dateTime],collectionSet from ( select *, row_number() over (PARTITION BY caption ORDER BY [dateTime] DESC) AS number FROM photos) as lastshot 
where lastshot.number = 1 
and lastshot.[dateTime] > DATEFROMPARTS(YEAR(DATEADD(year, -1, GETDATE())),1,1) 
and collectionSet != '%ACTIVE' 
and collectionSet != '%HOF'
and collectionSet != 'Cosplayer' ;
GO
