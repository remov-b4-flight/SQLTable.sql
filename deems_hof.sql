SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[deems_hof] as SELECT [caption]
      ,[counter]
  FROM (select caption,count(*) as counter from photos group by caption) 
where counter > 2000 
GO
