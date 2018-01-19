USE master
PRINT N'If exists, dropping TwilightSparkle database'
IF EXISTS(select * from sys.databases where name='TwilightSparkle')
DROP DATABASE TwilightSparkle;
GO
PRINT N'If exists, dropping Fluttershy database'
IF EXISTS(select * from sys.databases where name='Fluttershy')
DROP DATABASE Fluttershy;
GO



PRINT N'Creating TwilightSparkle database'
CREATE DATABASE TwilightSparkle
GO
USE TwilightSparkle
GO
PRINT N'Creating TwilightSparkle objects:'
PRINT N'Creating [dbo].[tblTheSame]'
CREATE TABLE [dbo].[tblTheSame]
(
[Numbers] [int] NULL,
[Words] [nvarchar] (50) NULL,
[SpecialTwilightSparkleColumn] [nvarchar] (50) NULL,
[SpecialFluttershyColumn] [nvarchar] (50) NULL
)
GO
PRINT N'Creating [dbo].[spTheSame]'
GO
CREATE PROCEDURE [dbo].[spTheSame]
AS
    SELECT  Numbers ,
            Words
    FROM    dbo.tblTheSame;
GO
PRINT N'Creating [dbo].[tblOnlyOnTwilightSparkle]'
GO
CREATE TABLE [dbo].[tblOnlyOnTwilightSparkle]
(
[TwilightSparklesSpecialColumn] [nvarchar] (50) NULL
)
GO
PRINT N'Creating [dbo].[spOnlyOnTwilightSparkle]'
GO
CREATE PROCEDURE [dbo].[spOnlyOnTwilightSparkle]
AS
    SELECT  TwilightSparklesSpecialColumn
    FROM    dbo.tblOnlyOnTwilightSparkle;
GO
PRINT N'Creating [dbo].[tblOnBothButDifferent]'
GO
PRINT N'Creating [dbo].[spOnBothButDifferent]'
GO
CREATE PROCEDURE [dbo].[spOnBothButDifferent]
AS
    SELECT  Numbers ,
            Words ,
            SpecialTwilightSparkleColumn
    FROM    dbo.tblTheSame;
GO

PRINT N'Creating Fluttershy database'
CREATE DATABASE Fluttershy
GO
USE Fluttershy
GO
PRINT N'Creating Fluttershy objects:'
PRINT N'Creating [dbo].[tblTheSame]'
CREATE TABLE [dbo].[tblTheSame]
(
[Numbers] [int] NULL,
[Words] [nvarchar] (50) NULL,
[SpecialTwilightSparkleColumn] [nvarchar] (50) NULL,
[SpecialFluttershyColumn] [nvarchar] (50) NULL
)
GO
PRINT N'Creating [dbo].[spTheSame]'
GO
CREATE PROCEDURE [dbo].[spTheSame]
AS
    SELECT  Numbers ,
            Words
    FROM    dbo.tblTheSame;
GO
PRINT N'Creating [dbo].[tblOnlyOnFluttershy]'
GO
CREATE TABLE [dbo].[tblOnlyOnFluttershy]
(
[FluttershysSpecialColumn] [nvarchar] (50) NULL
)
GO
PRINT N'Creating [dbo].[spOnlyOnFluttershy]'
GO
CREATE PROCEDURE [dbo].[spOnlyOnFluttershy]
AS
    SELECT  FluttershysSpecialColumn
    FROM    dbo.tblOnlyOnFluttershy;
GO
PRINT N'Creating [dbo].[tblOnBothButDifferent]'
GO
PRINT N'Creating [dbo].[spOnBothButDifferent]'
GO
CREATE PROCEDURE [dbo].[spOnBothButDifferent]
AS
    SELECT  Numbers ,
            Words ,
            SpecialFluttershyColumn
    FROM    dbo.tblTheSame;
GO