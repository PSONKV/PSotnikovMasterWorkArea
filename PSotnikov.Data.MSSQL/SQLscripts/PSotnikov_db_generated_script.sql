use PSotnikov_SQLdb

/****** Object:  Table [dbo].[Cases]    Script Date: 02.10.2016 0:52:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cases](
	[ID] [uniqueidentifier] NOT NULL,
	[CaseName] [nvarchar](256) NULL,
	[CaseDescription] [nvarchar](256) NULL,
	[CreationDT] [datetime2](7) NULL,
 CONSTRAINT [PK_Cases] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)
GO

/****** Object:  Table [dbo].[ChatMessages]    Script Date: 02.10.2016 0:52:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatMessages](
	[MessageID] [uniqueidentifier] NOT NULL,
	[MessageDateTime] [datetime] NOT NULL,
	[MessageText] [nvarchar](max) NULL,
	[MessageAuthor] [nvarchar](max) NOT NULL,
	[AuthorCity] [nvarchar](max) NULL,
	[MessageIP] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ChatMessages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)
GO

/* Seeding and updates */

INSERT [dbo].[Cases] ([ID], [CaseName], [CaseDescription], [CreationDT]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f71ab', N'SignalRChat', N'Web chat based on SignlR real-time functionality.', CAST(N'2016-09-28T10:20:12.0000000' AS DateTime2))
INSERT [dbo].[Cases] ([ID], [CaseName], [CaseDescription], [CreationDT]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f71aa', N'ComplexModel', N'Case with a complex data model', CAST(N'2016-09-29T17:08:00.0000000' AS DateTime2))
INSERT [dbo].[Cases] ([ID], [CaseName], [CaseDescription], [CreationDT]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f71ac', N'SQLqueries', N'Some queries to analyze plan/perfomance', CAST(N'2016-09-24T22:04:00.0000000' AS DateTime2))
INSERT [dbo].[Cases] ([ID], [CaseName], [CaseDescription], [CreationDT]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f71bb', N'NumPad', N'ASP.NET snippet to be used when an input is allowed only by buttons clicking', CAST(N'2016-09-30T13:14:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ChatMessages] ON 

INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f7111', CAST(N'2016-09-03T16:20:12.167' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f7112', CAST(N'2016-09-03T16:20:19.467' AS DateTime), N'SDFHS', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f7103', CAST(N'2016-09-03T16:20:33.290' AS DateTime), N'started.', N'Pavel', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f7104', CAST(N'2016-09-03T16:20:53.083' AS DateTime), N'VXZsggg', N'Pavel', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES ('0bdc288a-f84c-44ba-ba45-47cb4e6f7105', CAST(N'2016-09-04T15:45:01.677' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')

/*
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (6, CAST(N'2016-09-04T15:45:09.383' AS DateTime), N'gfhzj', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (7, CAST(N'2016-09-04T15:45:12.303' AS DateTime), N'gfhdj', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (8, CAST(N'2016-09-04T19:02:04.427' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (9, CAST(N'2016-09-04T19:02:16.737' AS DateTime), N'6e768 new msg', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (10, CAST(N'2016-09-04T19:03:35.117' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (11, CAST(N'2016-09-04T19:03:52.567' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (12, CAST(N'2016-09-04T19:03:55.557' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (13, CAST(N'2016-09-05T09:50:54.097' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (14, CAST(N'2016-09-05T09:51:04.847' AS DateTime), N'test ,sg', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (15, CAST(N'2016-09-05T09:51:10.537' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (16, CAST(N'2016-09-05T09:53:00.787' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (17, CAST(N'2016-09-05T09:53:05.213' AS DateTime), N'5474676', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (18, CAST(N'2016-09-05T09:53:08.517' AS DateTime), N'6858', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (19, CAST(N'2016-09-05T09:53:10.393' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (20, CAST(N'2016-09-05T09:56:39.577' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (21, CAST(N'2016-09-05T09:56:42.687' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (22, CAST(N'2016-09-05T09:56:44.287' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (23, CAST(N'2016-09-05T09:56:46.657' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (24, CAST(N'2016-09-05T09:56:47.673' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (25, CAST(N'2016-09-05T10:05:00.440' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (26, CAST(N'2016-09-05T10:12:10.027' AS DateTime), N'started.', N'Pavel2', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (27, CAST(N'2016-09-05T10:12:10.800' AS DateTime), N'disconnected.', N'Pavel2', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (28, CAST(N'2016-09-05T10:12:27.207' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (29, CAST(N'2016-09-05T10:12:32.720' AS DateTime), N'tgb66e', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (30, CAST(N'2016-09-05T10:12:34.163' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (31, CAST(N'2016-09-05T10:12:36.763' AS DateTime), N'started.', N'Pavel2', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (32, CAST(N'2016-09-05T10:12:37.610' AS DateTime), N'disconnected.', N'Pavel2', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (33, CAST(N'2016-09-05T10:12:38.197' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (34, CAST(N'2016-09-05T10:12:38.600' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (35, CAST(N'2016-09-05T10:13:39.547' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (36, CAST(N'2016-09-05T10:13:40.297' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (37, CAST(N'2016-09-05T10:13:40.900' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (38, CAST(N'2016-09-05T10:13:41.427' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (39, CAST(N'2016-09-05T10:13:41.927' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (40, CAST(N'2016-09-05T10:13:42.377' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (41, CAST(N'2016-09-05T10:13:42.827' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (42, CAST(N'2016-09-05T10:13:43.347' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (43, CAST(N'2016-09-05T10:14:16.077' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (44, CAST(N'2016-09-05T10:14:16.827' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (45, CAST(N'2016-09-05T10:14:17.377' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (46, CAST(N'2016-09-05T10:14:17.817' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (47, CAST(N'2016-09-05T10:14:18.220' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (48, CAST(N'2016-09-05T10:14:18.437' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (49, CAST(N'2016-09-05T10:14:18.643' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (50, CAST(N'2016-09-05T10:14:59.010' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (51, CAST(N'2016-09-05T10:15:03.730' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (52, CAST(N'2016-09-05T10:23:35.240' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (53, CAST(N'2016-09-05T10:23:50.703' AS DateTime), N'jxf', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (54, CAST(N'2016-09-05T10:24:44.307' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (55, CAST(N'2016-09-05T10:38:21.113' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (56, CAST(N'2016-09-05T10:38:24.933' AS DateTime), N'7876rkj', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (57, CAST(N'2016-09-05T10:38:26.803' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (58, CAST(N'2016-09-05T10:39:04.807' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (59, CAST(N'2016-09-05T10:41:21.567' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (60, CAST(N'2016-09-05T10:41:28.350' AS DateTime), N'54y4ggdj', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (61, CAST(N'2016-09-05T10:41:33.163' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (62, CAST(N'2016-09-05T16:17:45.400' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (63, CAST(N'2016-09-05T16:17:45.827' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (64, CAST(N'2016-09-05T16:17:46.623' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (65, CAST(N'2016-09-05T16:17:49.493' AS DateTime), N'xbcxbx', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (66, CAST(N'2016-09-05T16:17:53.090' AS DateTime), N'57w547', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (67, CAST(N'2016-09-05T16:17:55.927' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (68, CAST(N'2016-09-05T18:54:00.793' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (69, CAST(N'2016-09-05T18:54:35.303' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (70, CAST(N'2016-09-05T18:54:36.503' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (71, CAST(N'2016-09-06T09:50:48.087' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (72, CAST(N'2016-09-06T09:50:55.377' AS DateTime), N'boroda', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (73, CAST(N'2016-09-06T09:52:26.333' AS DateTime), N'started.', N'Pavel2', N'Kursk', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (74, CAST(N'2016-09-06T09:52:58.023' AS DateTime), N'Hi everyone! Not a bad day today', N'Pavel2', N'Kursk', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (75, CAST(N'2016-09-06T09:53:09.533' AS DateTime), N'Yep', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (76, CAST(N'2016-09-06T09:54:29.323' AS DateTime), N'started.', N'Jen', N'New York', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (77, CAST(N'2016-09-06T09:54:47.957' AS DateTime), N'Hu guys!', N'Jen', N'New York', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (78, CAST(N'2016-09-06T09:55:13.527' AS DateTime), N'I''ve a question on SignalR library', N'Jen', N'New York', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (79, CAST(N'2016-09-06T09:55:34.553' AS DateTime), N'Which one?', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (80, CAST(N'2016-09-06T09:55:54.863' AS DateTime), N'Have to leave... :(', N'Pavel2', N'Kursk', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (81, CAST(N'2016-09-06T09:55:57.017' AS DateTime), N'disconnected.', N'Pavel2', N'Kursk', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (82, CAST(N'2016-09-06T09:56:10.173' AS DateTime), N'Bye', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (83, CAST(N'2016-09-06T09:56:21.057' AS DateTime), N'disconnected.', N'Jen', N'New York', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (84, CAST(N'2016-09-06T09:56:30.823' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (85, CAST(N'2016-09-06T09:58:51.047' AS DateTime), N'started.', N'Jen', N'New York', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (86, CAST(N'2016-09-06T09:59:03.877' AS DateTime), N'started.', N'Pavel2', N'Kursk', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (87, CAST(N'2016-09-06T09:59:11.483' AS DateTime), N'Hi, buddy!', N'Pavel2', N'Kursk', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (88, CAST(N'2016-09-06T10:05:42.560' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (89, CAST(N'2016-09-06T10:05:59.050' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (90, CAST(N'2016-09-06T10:06:16.850' AS DateTime), N'Nice connection', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (91, CAST(N'2016-09-06T10:09:24.733' AS DateTime), N'just checked. Is this SignalR?', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (92, CAST(N'2016-09-06T10:09:41.817' AS DateTime), N'Yes, it is!', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (93, CAST(N'2016-09-06T10:09:50.110' AS DateTime), N'disconnected.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (94, CAST(N'2016-09-06T10:59:21.957' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (95, CAST(N'2016-09-06T11:01:59.730' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (96, CAST(N'2016-09-06T11:02:23.940' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (97, CAST(N'2016-09-06T11:03:06.117' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (98, CAST(N'2016-09-06T11:04:16.857' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (99, CAST(N'2016-09-06T11:06:24.267' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
GO
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (100, CAST(N'2016-09-06T11:06:54.523' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (101, CAST(N'2016-09-06T11:07:15.183' AS DateTime), N'444444', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (102, CAST(N'2016-09-06T11:07:21.690' AS DateTime), N'disconnected.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (103, CAST(N'2016-09-06T11:07:46.930' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (104, CAST(N'2016-09-06T11:07:49.007' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (105, CAST(N'2016-09-06T11:08:05.633' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (106, CAST(N'2016-09-06T11:09:02.773' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (107, CAST(N'2016-09-06T11:10:03.170' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (108, CAST(N'2016-09-06T11:10:19.327' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (109, CAST(N'2016-09-06T11:13:01.587' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (110, CAST(N'2016-09-06T11:13:28.993' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (111, CAST(N'2016-09-06T11:13:40.397' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (112, CAST(N'2016-09-06T11:13:51.573' AS DateTime), N'rrty6ujyrjydj', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (113, CAST(N'2016-09-06T11:14:43.340' AS DateTime), N'zzzzzzzzzzzz', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (114, CAST(N'2016-09-06T11:14:48.457' AS DateTime), N'check', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (115, CAST(N'2016-09-06T11:14:57.023' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (116, CAST(N'2016-09-06T11:15:33.950' AS DateTime), N'check', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (117, CAST(N'2016-09-06T11:16:44.187' AS DateTime), N'77777?', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (118, CAST(N'2016-09-06T11:17:05.590' AS DateTime), N'550u', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (119, CAST(N'2016-09-06T11:28:44.027' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (120, CAST(N'2016-09-06T11:28:44.160' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (121, CAST(N'2016-09-06T11:28:45.607' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (122, CAST(N'2016-09-06T11:29:05.173' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (123, CAST(N'2016-09-06T11:29:10.333' AS DateTime), N'new msg', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (124, CAST(N'2016-09-06T11:29:49.157' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (125, CAST(N'2016-09-06T11:29:53.910' AS DateTime), N'disconnected.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (126, CAST(N'2016-09-06T11:45:59.610' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (127, CAST(N'2016-09-06T11:46:18.560' AS DateTime), N'Proper datetime format', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (128, CAST(N'2016-09-06T11:46:27.290' AS DateTime), N'started.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (129, CAST(N'2016-09-06T11:46:36.263' AS DateTime), N'Age, nice', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (130, CAST(N'2016-09-06T11:46:48.010' AS DateTime), N'пробуем по-русски', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (131, CAST(N'2016-09-06T11:46:57.440' AS DateTime), N'работает', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (132, CAST(N'2016-09-06T11:47:18.197' AS DateTime), N'disconnected.', N'VitalyS', N'Voronezh', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (133, CAST(N'2016-09-06T11:47:26.870' AS DateTime), N'678967', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (134, CAST(N'2016-09-06T11:47:29.177' AS DateTime), N'disconnected.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (135, CAST(N'2016-09-06T11:49:23.770' AS DateTime), N'started.', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (136, CAST(N'2016-09-06T11:49:30.997' AS DateTime), N'Nice to meet you', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (137, CAST(N'2016-09-06T11:49:32.887' AS DateTime), N'!!!!', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (138, CAST(N'2016-09-06T11:49:55.553' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (139, CAST(N'2016-09-06T11:50:01.590' AS DateTime), N'Hi!', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (140, CAST(N'2016-09-06T12:01:50.087' AS DateTime), N'disconnected.', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (141, CAST(N'2016-09-06T14:37:09.233' AS DateTime), N'started.', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (142, CAST(N'2016-09-06T14:37:18.083' AS DateTime), N'testing...', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (143, CAST(N'2016-09-06T14:37:45.880' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (144, CAST(N'2016-09-06T14:37:54.923' AS DateTime), N'???', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (145, CAST(N'2016-09-06T15:02:10.413' AS DateTime), N'4444', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (146, CAST(N'2016-09-06T15:02:28.757' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (147, CAST(N'2016-09-06T15:04:39.187' AS DateTime), N'hshjjjkkk', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (148, CAST(N'2016-09-06T16:23:10.780' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (149, CAST(N'2016-09-06T16:23:42.910' AS DateTime), N'43ygfds', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (150, CAST(N'2016-09-06T16:31:24.837' AS DateTime), N'started.', N'Zinaida', N'Belgorod', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (151, CAST(N'2016-09-06T16:36:57.707' AS DateTime), N'started.', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (152, CAST(N'2016-09-06T16:37:09.313' AS DateTime), N'svscvfs', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (153, CAST(N'2016-09-06T16:40:33.933' AS DateTime), N'54wwwh61', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (154, CAST(N'2016-09-06T16:40:40.223' AS DateTime), N'222222222222222', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (155, CAST(N'2016-09-06T16:40:56.167' AS DateTime), N'3333333333333', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (156, CAST(N'2016-09-06T16:40:59.253' AS DateTime), N'newww', N'Admin', N'AdminCity', N'127.0.0.1')
INSERT [dbo].[ChatMessages] ([MessageID], [MessageDateTime], [MessageText], [MessageAuthor], [AuthorCity], [MessageIP]) VALUES (157, CAST(N'2016-09-06T16:41:03.270' AS DateTime), N'4366', N'Admin', N'AdminCity', N'127.0.0.1')

*/

SET IDENTITY_INSERT [dbo].[ChatMessages] OFF

ALTER TABLE [dbo].[ChatMessages] ADD  DEFAULT ('') FOR [MessageAuthor]
GO