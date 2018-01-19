SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spTheSame]
AS
    SELECT  Numbers ,
            Words
    FROM    dbo.tblTheSame;
GO
