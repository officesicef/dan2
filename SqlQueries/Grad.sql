USE [DB_A42552_ArxyaArsa]
GO

DROP TABLE IF EXISTS [Grad]
GO

/****** Object:  Table [dbo].[Cities]    Script Date: 8/15/2018 10:44:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](255) NOT NULL,
	[Lokacija_X] [float] NOT NULL,
	[Lokacija_Y] [float] NOT NULL,
	[Broj_Stanovnika] [bigint] NULL,
	[DrzavaId] [int] NULL
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Grad]  WITH CHECK ADD FOREIGN KEY([DrzavaId])
REFERENCES [dbo].[Drzava] ([Id])
GO

