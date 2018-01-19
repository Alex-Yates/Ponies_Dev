SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spOnBothButDifferent]
AS
    SELECT  Numbers ,
            Words ,
            SpecialTwilightSparkleColumn
    FROM    dbo.tblTheSame;
GO
