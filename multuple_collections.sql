SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[multiple_collections] as select caption,folderName,fileName from photos where 2 <= collections
GO
