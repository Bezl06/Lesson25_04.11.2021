USE [Users]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 01.11.2021 17:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([Id], [FirstName], [MiddleName], [LastName]) VALUES (1, N'Умед', N'Умедович', N'Умедов')
INSERT [dbo].[Persons] ([Id], [FirstName], [MiddleName], [LastName]) VALUES (2, N'Лоик', N'Лоикович', N'Лоиков')
INSERT [dbo].[Persons] ([Id], [FirstName], [MiddleName], [LastName]) VALUES (3, N'Рустам', N'Рустамович', N'Рустамов')
SET IDENTITY_INSERT [dbo].[Persons] OFF
GO
