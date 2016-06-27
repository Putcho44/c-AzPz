USE [azpz]
GO

/****** Object:  Table [dbo].[adresses]    Script Date: 27.06.2016 15:57:00 ******/
DROP TABLE [dbo].[adresses]
GO

/****** Object:  Table [dbo].[adresses]    Script Date: 27.06.2016 15:57:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[adresses](
	[adresses_ID] [int] IDENTITY(1,1)   NOT NULL,
	[address1] [nvarchar](100) NOT NULL,
	[address2] [nvarchar](100) NULL,
	[address3] [nvarchar](100) NULL,
	[city[  nvarchar(30) NOT NULL     ,
  [plz[  nvarchar(10) NOT NULL ,
  [Country_short] [nvarchar](2) NULL,
	[Country] [nvarchar](30) NOT NULL,
	[fk_persons_ID[ bigint(20) NOT NULL,  
   [comment] [nvarchar](30) NOT NULL,
	[text] [nvarchar](30) NULL,
	[insert_User] [nvarchar](30) NULL,
	[insert_Date] [datetime] NULL,
	[update_Name] [nchar](30) NULL,
	[update_Date] [datetime] NULL,
 CONSTRAINT [pkladresses] PRIMARY KEY CLUSTERED 
(
	[adresses_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




****** Object:  Table [dbo].[login]    Script Date: 27.06.2016 16:00:47 ******/
DROP TABLE [dbo].[login]
GO

/****** Object:  Table [dbo].[login]    Script Date: 27.06.2016 15:59:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[login](
	[login_ID] [int] IDENTITY(1,1) NOT NULL,
	[fk_users_ID] [int] NOT NULL,
	[text] [nvarchar](30) NULL,
	[login] [datetime] NOT NULL,
	[logout] [datetime] NULL,
 CONSTRAINT [pklogin] PRIMARY KEY CLUSTERED 
(
	[login_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


GO

/****** Object:  Table [dbo].[persons]    Script Date: 27.06.2016 16:01:42 ******/
DROP TABLE [dbo].[persons]
GO

/****** Object:  Table [dbo].[persons]    Script Date: 27.06.2016 16:01:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[persons](
	[persons_ID] [int]  IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[firstName] [nvarchar](30) NOT NULL,
	[insert_User] [nvarchar](30)  NULL,
	[insert_Date] [datetime]  NULL,
	[update_Name] [nchar](30)  NULL,
	[update_Date] [datetime]  NULL,
	[comment] [nchar](10)  NULL,
 CONSTRAINT [pkpersons] PRIMARY KEY CLUSTERED 
(
	[persons_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


GO

/****** Object:  Table [dbo].[projectHead]    Script Date: 27.06.2016 16:02:07 ******/
DROP TABLE [dbo].[projectHead]
GO

/****** Object:  Table [dbo].[projectHead]    Script Date: 27.06.2016 16:02:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[projectHead](
	[projectHead_ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[fk_projectworker_ID] [int] NOT NULL,
	[comment] [nvarchar](30) NULL,
	[text ] [nvarchar](30) NULL,
	[insert_User] [nvarchar](30) NULL,
	[insert_Date] [datetime] NULL,
	[Update_Name] [nchar](30) NULL,
	[update_Date] [datetime] NULL,
 CONSTRAINT [pkprojectHead] PRIMARY KEY CLUSTERED 
(
	[projectHead_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


GO

/****** Object:  Table [dbo].[projects]    Script Date: 27.06.2016 16:02:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[projects](
	[projects_ID] [int]  IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[fk_persons_ID] [int] NOT NULL,
	[insert_User] [nvarchar](30)  NULL,
	[insert_Date] [datetime]  NULL,
	[update_Name] [nchar](30)  NULL,
	[update_Date] [datetime]  NULL,
	[comment] [nchar](10)  NULL,
 CONSTRAINT [pkprojects] PRIMARY KEY CLUSTERED 
(
	[projects_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



GO

/****** Object:  Table [dbo].[projectworker]    Script Date: 27.06.2016 16:04:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[projectworker](
	[projectworker_ID] [int]  IDENTITY(1,1)  NOT NULL,
	[fk_persons_ID] [int] NOT NULL,
	[text] [nvarchar](30) NULL,
	[comment] [nchar](10) NULL,
	[insert_User] [nvarchar](30) NULL,
	[insert_Date] [datetime] NULL,
	[Update_Name] [nchar](30) NULL,
	[update_Date] [datetime] NULL,
 CONSTRAINT [pkprojectworker] PRIMARY KEY CLUSTERED 
(
	[projectworker_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[projectworker]  WITH CHECK ADD  CONSTRAINT [fkprojectworker_persons_id] FOREIGN KEY([fk_persons_ID])
REFERENCES [dbo].[persons] ([persons_ID])
GO

ALTER TABLE [dbo].[projectworker] CHECK CONSTRAINT [fkprojectworker_persons_id]
GO


 
GO

/****** Object:  Table [dbo].[worktime]    Script Date: 27.06.2016 16:05:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[worktime](
	[worktime_ID] [int] IDENTITY(1,1) NOT NULL,
	[start] [datetime] NOT NULL,
	[end] [datetime] NULL,
	[fk_Persons_ID] [int] NOT NULL,
	[comment] [nvarchar](30) NULL,
	[text] [nvarchar](30) NULL,
	[insert_User] [nvarchar](30) NULL,
	[insert_Date] [datetime] NULL,
	[update_Name] [nchar](30) NULL,
	[update_Date] [datetime] NULL,
 CONSTRAINT [pkworktime] PRIMARY KEY CLUSTERED 
(
	[worktime_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



INSERT INTO dbo.persons (Name, firstname)
VALUES ('Lüthke' ,'Matthias');

INSERT INTO dbo.persons (Name, firstname)
VALUES ('from Jupiter' ,'Fred');



