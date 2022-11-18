SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create view [dbo].[cameraRanking] as 
select cameraModel,count(*) as counter,
round(avg([fileSize])/1000000, 1) as averagesizeM 
from photos group by cameraModel
GO
