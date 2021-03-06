USE [Quran]
GO
/****** Object:  Table [dbo].[Surahs]    Script Date: 11/01/2012 10:26:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Surahs](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Surahs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurahNames]    Script Date: 11/01/2012 10:26:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurahNames](
	[SurahNo] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Surahs]    Script Date: 11/01/2012 10:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Surahs]
AS
SELECT     s.ID, sn.LanguageID, CONVERT(varchar(3), s.ID) + ' - ' + s.Name + ' - ' + sn.Name AS Name
FROM         dbo.Surahs AS s INNER JOIN
                      dbo.SurahNames AS sn ON s.ID = sn.SurahNo
GO
