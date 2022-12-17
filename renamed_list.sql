SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[renamed_list] as select distinct collectionName,caption from photos where caption != collectionName
GO
