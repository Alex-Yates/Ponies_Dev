SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spOnlyOnTwilightSparkle]
AS
    SELECT  TwilightSparklesSpecialColumn
    FROM    dbo.tblOnlyOnTwilightSparkle;
GO
