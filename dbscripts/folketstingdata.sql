USE [ftdb]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 02/03/2011 12:43:38 ******/
INSERT [dbo].[Session] ([SessionId], [Year], [Number], [IsDone]) VALUES (0, 2009, 1, 1)
INSERT [dbo].[Session] ([SessionId], [Year], [Number], [IsDone]) VALUES (1, 2010, 1, 0)
/****** Object:  Table [dbo].[Party]    Script Date: 02/03/2011 12:43:38 ******/
SET IDENTITY_INSERT [dbo].[Party] ON
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (18, N'Dansk Folkeparti', N'DF')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (19, N'Det Konservative Folkeparti', N'KF')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (20, N'Det Radikale Venstre', N'RV')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (21, N'Enhedslisten', N'EL')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (22, N'Inuit Ataqatigiit', N'IA')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (23, N'Liberal Alliance', N'LA')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (24, N'Sambandsflokkurin', N'SP')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (25, N'Siumut', N'SIU')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (26, N'Socialdemokratiet', N'S')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (27, N'Socialistisk Folkeparti', N'SF')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (28, N'Tjóðveldisflokkurin', N'TF')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (29, N'Uden for folketingsgrupperne', N'UFG')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (30, N'Venstre', N'V')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (31, N'Fólkaflokkurin', N'FF')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (32, N'Kristendemokraterne', N'KD')
INSERT [dbo].[Party] ([PartyId], [Name], [Initials]) VALUES (33, N'Siumut', N'SI')
SET IDENTITY_INSERT [dbo].[Party] OFF
