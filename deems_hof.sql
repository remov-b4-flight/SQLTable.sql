SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[deems_hof] as SELECT [caption]
      ,[counter]
  FROM [lightroom].[dbo].[caption_basic]
where counter > 2000 
GO
