SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[ranked_list] as SELECT
	rank() over (order by cc.counter desc) as ranking,
	cc.caption,
    cc.counter
FROM (
    select photos.caption,
    count(*) as counter
    from photos group by photos.caption) as cc
GO
