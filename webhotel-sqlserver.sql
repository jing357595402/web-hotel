SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customertype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[customertype](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[c_type] [varchar](20) NOT NULL,
	[discount] [int] NOT NULL,
	[remark] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[livein]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[livein](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[in_no] [int] NOT NULL,
	[r_no] [varchar](20) NOT NULL,
	[r_type_id] [int] NOT NULL,
	[c_type_id] [int] NOT NULL,
	[m_id] [varchar](20) NOT NULL,
	[renshu] [int] NOT NULL,
	[in_time] [varchar](20) NOT NULL,
	[daynum] [int] NOT NULL,
	[forefigt] [float] NOT NULL,
	[chk_no] [varchar](20) NOT NULL,
	[remark] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[engage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[engage](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[c_type_id] [int] NOT NULL,
	[m_id] [varchar](20) NOT NULL,
	[r_type_id] [int] NOT NULL,
	[r_no] [varchar](20) NOT NULL,
	[eng_time] [varchar](20) NOT NULL,
	[remark] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[checkout]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[checkout](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[chk_no] [int] NOT NULL,
	[in_no] [int] NOT NULL,
	[daynum] [int] NOT NULL,
	[money] [float] NOT NULL,
	[chk_time] [varchar](20) NOT NULL,
	[remark] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pwd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pwd](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[pwd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[customer](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[c_type_id] [int] NOT NULL,
	[m_id] [varchar](20) NOT NULL,
	[m_name] [varchar](20) NOT NULL,
	[sex] [varchar](20) NOT NULL,
	[zj_no] [varchar](20) NOT NULL,
	[m_tel] [varchar](20) NOT NULL,
	[remark] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roomtype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roomtype](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[roomtype] [varchar](20) NOT NULL,
	[bed] [int] NOT NULL,
	[price] [float] NOT NULL,
	[foregift] [float] NOT NULL,
	[cl_room] [varchar](20) NOT NULL CONSTRAINT [DF_clroom]  DEFAULT ('N'),
	[cl_price] [float] NULL,
	[remark] [varchar](40) NULL,
 CONSTRAINT [PK__roomtype__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roominfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roominfo](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[num] [varchar](20) NOT NULL,
	[r_type_id] [int] NOT NULL,
	[states] [int] NOT NULL CONSTRAINT [DF_state]  DEFAULT ((1)),
	[r_tel] [varchar](20) NOT NULL,
	[remark] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
