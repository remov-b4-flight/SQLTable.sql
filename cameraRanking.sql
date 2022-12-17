SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE view [dbo].[cameraRanking] as 
select cameraModel,fileType,count(*) as counter,
round(avg([fileSize])/1000000, 1) as averagesizeM 
from photos group by cameraModel,fileType
GO
