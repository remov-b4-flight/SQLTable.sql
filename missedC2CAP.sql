SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[missedC2CAP] as select folderName,fileName from photos where collections >= 1 and caption IS NULL
GO
