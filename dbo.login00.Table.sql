USE [A00000]
GO
/****** Object:  Table [dbo].[login00]    Script Date: 4/14/2016 9:38:04 AM ******/
DROP TABLE [dbo].[login00]
GO
/****** Object:  Table [dbo].[login00]    Script Date: 4/14/2016 9:38:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login00](
	[login00id] [int] IDENTITY(1,1) NOT NULL,
	[personuuid] [uniqueidentifier] NOT NULL,
	[accountcode] [varchar](30) NULL,
	[loginname] [varchar](20) NULL,
	[passwordhash] [varchar](100) NULL,
	[passwordtype] [char](1) NULL,
	[datepasswordexpired] [datetime] NULL,
	[dateloggedon] [datetime] NULL,
	[roleloggedon] [char](2) NULL,
	[active] [bit] NOT NULL,
	[datedisabled] [datetime] NULL,
	[datecreated] [datetime] NULL CONSTRAINT [DF_login00_datecreated]  DEFAULT (getdate()),
	[dateupdated] [datetime] NULL,
	[rowversion] [timestamp] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
