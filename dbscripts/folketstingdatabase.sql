USE [ftdb]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FTId] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPost](
	[BlogPostID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[WordpressId] [nvarchar](200) NULL,
	[Summary] [ntext] NULL,
	[Title] [ntext] NULL,
	[CommentCount] [int] NULL,
	[PermaLink] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogPostID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiUser]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApiUser](
	[CreatedDate] [datetime] NOT NULL,
	[ApiUserId] [int] IDENTITY(1,1) NOT NULL,
	[ApiKey] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](200) NOT NULL,
	[IntendedUse] [ntext] NULL,
 CONSTRAINT [PK_ApiUser] PRIMARY KEY CLUSTERED 
(
	[ApiUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Committee]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Committee](
	[CommitteeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommitteeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Image](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ContentType] [varchar](50) NULL,
	[Data] [varbinary](max) NULL,
 CONSTRAINT [PK_Images_1] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hit]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hit](
	[ContentId] [int] NOT NULL,
	[ContentType] [tinyint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[HitId] [bigint] IDENTITY(1,1) NOT NULL,
	[IP] [binary](4) NOT NULL,
 CONSTRAINT [PK_Hit] PRIMARY KEY CLUSTERED 
(
	[HitId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[ContentType] [varchar](50) NULL,
	[Data] [varbinary](max) NULL,
	[ScribdId] [int] NULL,
	[Uri] [nvarchar](250) NULL,
	[ScribdAccessKey] [nvarchar](50) NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ministry]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ministry](
	[MinistryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MinistryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionId] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[IsDone] [bit] NULL,
 CONSTRAINT [PK_samlinger] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](256) NOT NULL,
	[Aspnetuserid] [uniqueidentifier] NOT NULL,
	[Url] [nvarchar](256) NULL,
	[Pic] [varbinary](max) NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Party]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Party](
	[PartyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Initials] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PartyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommitteeTrip]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeTrip](
	[CommitteeTripId] [int] IDENTITY(1,1) NOT NULL,
	[CommitteeId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Place] [nvarchar](200) NULL,
	[Purpose] [ntext] NULL,
	[Budget] [decimal](18, 2) NULL,
	[ActualExpenses] [decimal](18, 2) NULL,
	[NonPolParticipants] [int] NULL,
	[FTId] [nvarchar](200) NULL,
	[Uri] [nvarchar](200) NULL,
 CONSTRAINT [PK_CommitteeTripId] PRIMARY KEY CLUSTERED 
(
	[CommitteeTripId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[UserId] [int] NULL,
	[Date] [datetime] NULL,
	[CommentText] [ntext] NULL,
	[ParentId] [int] NULL,
	[CommentType] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Politician]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Politician](
	[PoliticianId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](100) NULL,
	[BioText] [ntext] NULL,
	[Initials] [nvarchar](50) NULL,
	[JoinedString] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[EmailAdd] [nvarchar](200) NULL,
	[ImageId] [int] NULL,
	[Lastname] [nvarchar](100) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[PartyId] [int] NULL,
	[Homepage] [ntext] NULL,
	[Birthdate] [datetime] NULL,
 CONSTRAINT [PK__Politici__2123917F22AA2996] PRIMARY KEY CLUSTERED 
(
	[PoliticianId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[UserId] [int] NOT NULL,
	[ContentId] [int] NOT NULL,
	[ContentType] [tinyint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Law]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Law](
	[LawId] [int] IDENTITY(1,1) NOT NULL,
	[SessionId] [int] NULL,
	[MinistryId] [int] NULL,
	[Subtitle] [ntext] NULL,
	[ShortName] [ntext] NULL,
	[Summary] [ntext] NULL,
	[CommitteeId] [int] NULL,
	[FirstDeliberation] [date] NULL,
	[SecondDeliberation] [date] NULL,
	[Passed] [date] NULL,
	[Proposed] [date] NULL,
	[FtId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[LawId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemCommittee]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCommittee](
	[ItemId] [int] NOT NULL,
	[ItemType] [tinyint] NOT NULL,
	[CommitteeId] [int] NOT NULL,
	[ItemCommitteeId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ItemCommittee] PRIMARY KEY CLUSTERED 
(
	[ItemCommitteeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCategory](
	[ItemId] [int] NOT NULL,
	[ItemType] [tinyint] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemCategoryId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ItemCategory] PRIMARY KEY CLUSTERED 
(
	[ItemCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawVote]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawVote](
	[LawVoteId] [int] IDENTITY(1,1) NOT NULL,
	[LawId] [int] NULL,
	[Date] [datetime] NULL,
	[VoteText] [ntext] NULL,
	[IsFinal] [bit] NULL,
	[Stage] [smallint] NULL,
	[Name] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[LawVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawChapter]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawChapter](
	[LawChapterId] [int] IDENTITY(1,1) NOT NULL,
	[LawId] [int] NULL,
	[Number] [int] NULL,
	[Stage] [smallint] NULL,
	[Titel] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[LawChapterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliberation]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliberation](
	[DeliberationId] [int] IDENTITY(1,1) NOT NULL,
	[LawId] [int] NULL,
	[Date] [datetime] NULL,
	[Number] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliberationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommitteeTripParticipant]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeTripParticipant](
	[CommitteeTripParticipantId] [int] IDENTITY(1,1) NOT NULL,
	[CommitteeTripId] [int] NOT NULL,
	[ParticipantId] [int] NOT NULL,
 CONSTRAINT [PK_CommitteeTripParticipantId] PRIMARY KEY CLUSTERED 
(
	[CommitteeTripParticipantId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommitteeTripDestination]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeTripDestination](
	[CommitteeTripDestinationId] [int] IDENTITY(1,1) NOT NULL,
	[PlaceNameName] [nvarchar](100) NULL,
	[CommitteeTripId] [int] NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommitteeTripDestinationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentVote]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentVote](
	[CommentVoteId] [int] IDENTITY(1,1) NOT NULL,
	[CommentId] [int] NULL,
	[UserId] [int] NULL,
	[Date] [datetime] NULL,
	[Vote] [tinyint] NULL,
 CONSTRAINT [PK__CommentVote__55F4C372] PRIMARY KEY CLUSTERED 
(
	[CommentVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speaker]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speaker](
	[SpeakerId] [int] IDENTITY(1,1) NOT NULL,
	[PoliticianId] [int] NULL,
	[LawId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeakerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P20Question]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P20Question](
	[P20QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[SessionId] [int] NULL,
	[AskerPolId] [int] NULL,
	[AskeeId] [int] NULL,
	[FTId] [int] NULL,
	[AskDate] [datetime] NULL,
	[AnswerDate] [datetime] NULL,
	[Question] [ntext] NULL,
	[Background] [ntext] NULL,
	[AskeeTitle] [nvarchar](200) NULL,
	[Title] [ntext] NULL,
	[Type] [tinyint] NOT NULL,
	[AskerUserId] [int] NULL,
	[AnswerDocumentId] [int] NULL,
 CONSTRAINT [PK__P20Question__4C6B5938] PRIMARY KEY CLUSTERED 
(
	[P20QuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProposedLaw]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProposedLaw](
	[ProposedLawId] [int] IDENTITY(1,1) NOT NULL,
	[PoliticianId] [int] NULL,
	[LawId] [int] NULL,
	[IsMinister] [bit] NULL,
	[Title] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProposedLawId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLawVote]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLawVote](
	[UserLawVoteId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[LawVoteId] [int] NULL,
	[Vote] [tinyint] NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserLawVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PoliticianLawVote]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PoliticianLawVote](
	[PoliticianLawVoteId] [int] IDENTITY(1,1) NOT NULL,
	[PoliticianId] [int] NULL,
	[LawVoteId] [int] NULL,
	[Vote] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PoliticianLawVoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paragraph]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paragraph](
	[ParagraphId] [int] IDENTITY(1,1) NOT NULL,
	[LawId] [int] NULL,
	[Number] [int] NULL,
	[Stage] [smallint] NULL,
	[ChangeText] [ntext] NULL,
	[IsChange] [bit] NULL,
	[ChapterId] [int] NULL,
	[Letter] [nvarchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParagraphId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speech]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speech](
	[SpeechId] [int] IDENTITY(1,1) NOT NULL,
	[DeliberationId] [int] NULL,
	[PoliticianId] [int] NULL,
	[SpeechNr] [int] NULL,
	[SpeechTime] [datetime] NULL,
	[IsTemp] [bit] NULL,
	[ParentSpeechId] [int] NULL,
	[PoliticianTitle] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeechId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerPara]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerPara](
	[AnswerParaId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NULL,
	[ParText] [ntext] NULL,
	[Number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerParaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LawChange]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LawChange](
	[LawChangeId] [int] IDENTITY(1,1) NOT NULL,
	[ParagraphId] [int] NULL,
	[Number] [int] NULL,
	[NoformChangeText] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[LawChangeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeechPara]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeechPara](
	[SpeechParaId] [int] IDENTITY(1,1) NOT NULL,
	[SpeechId] [int] NULL,
	[ParText] [ntext] NULL,
	[Number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeechParaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[ParagraphId] [int] NULL,
	[Number] [int] NULL,
	[Text] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubChange]    Script Date: 01/30/2011 22:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubChange](
	[SubchangeId] [int] IDENTITY(1,1) NOT NULL,
	[LawchangeId] [int] NULL,
	[Number] [int] NULL,
	[Text] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubchangeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF_Hit_IP]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Hit] ADD  CONSTRAINT [DF_Hit_IP]  DEFAULT ((0)) FOR [IP]
GO
/****** Object:  Default [DF_P20Question_Type]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[P20Question] ADD  CONSTRAINT [DF_P20Question_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  ForeignKey [FK_AnswerPara_P20Question]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[AnswerPara]  WITH CHECK ADD  CONSTRAINT [FK_AnswerPara_P20Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[P20Question] ([P20QuestionId])
GO
ALTER TABLE [dbo].[AnswerPara] CHECK CONSTRAINT [FK_AnswerPara_P20Question]
GO
/****** Object:  ForeignKey [FK_Comment_Comment]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comment] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Comment] ([CommentId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comment]
GO
/****** Object:  ForeignKey [FK_Comment_User]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
/****** Object:  ForeignKey [FK_CommentVote_Comment]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[CommentVote]  WITH CHECK ADD  CONSTRAINT [FK_CommentVote_Comment] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comment] ([CommentId])
GO
ALTER TABLE [dbo].[CommentVote] CHECK CONSTRAINT [FK_CommentVote_Comment]
GO
/****** Object:  ForeignKey [FK_CommentVote_User]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[CommentVote]  WITH CHECK ADD  CONSTRAINT [FK_CommentVote_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[CommentVote] CHECK CONSTRAINT [FK_CommentVote_User]
GO
/****** Object:  ForeignKey [FK_CommitteeTrip_Committee]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[CommitteeTrip]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeTrip_Committee] FOREIGN KEY([CommitteeId])
REFERENCES [dbo].[Committee] ([CommitteeId])
GO
ALTER TABLE [dbo].[CommitteeTrip] CHECK CONSTRAINT [FK_CommitteeTrip_Committee]
GO
/****** Object:  ForeignKey [FK_CommitteeTripDestination_CommitteeTrip]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[CommitteeTripDestination]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeTripDestination_CommitteeTrip] FOREIGN KEY([CommitteeTripId])
REFERENCES [dbo].[CommitteeTrip] ([CommitteeTripId])
GO
ALTER TABLE [dbo].[CommitteeTripDestination] CHECK CONSTRAINT [FK_CommitteeTripDestination_CommitteeTrip]
GO
/****** Object:  ForeignKey [FK_CommitteeTripParticipant_CommitteeTrip]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[CommitteeTripParticipant]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeTripParticipant_CommitteeTrip] FOREIGN KEY([CommitteeTripId])
REFERENCES [dbo].[CommitteeTrip] ([CommitteeTripId])
GO
ALTER TABLE [dbo].[CommitteeTripParticipant] CHECK CONSTRAINT [FK_CommitteeTripParticipant_CommitteeTrip]
GO
/****** Object:  ForeignKey [FK_CommitteeTripParticipant_Politician]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[CommitteeTripParticipant]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeTripParticipant_Politician] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[CommitteeTripParticipant] CHECK CONSTRAINT [FK_CommitteeTripParticipant_Politician]
GO
/****** Object:  ForeignKey [FK_behandlinger_love]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Deliberation]  WITH CHECK ADD  CONSTRAINT [FK_behandlinger_love] FOREIGN KEY([LawId])
REFERENCES [dbo].[Law] ([LawId])
GO
ALTER TABLE [dbo].[Deliberation] CHECK CONSTRAINT [FK_behandlinger_love]
GO
/****** Object:  ForeignKey [FK_ItemCategory_Category]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[ItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_ItemCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[ItemCategory] CHECK CONSTRAINT [FK_ItemCategory_Category]
GO
/****** Object:  ForeignKey [FK_ItemCommittee_Committee]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[ItemCommittee]  WITH CHECK ADD  CONSTRAINT [FK_ItemCommittee_Committee] FOREIGN KEY([CommitteeId])
REFERENCES [dbo].[Committee] ([CommitteeId])
GO
ALTER TABLE [dbo].[ItemCommittee] CHECK CONSTRAINT [FK_ItemCommittee_Committee]
GO
/****** Object:  ForeignKey [FK_Law_Committee]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Law]  WITH CHECK ADD  CONSTRAINT [FK_Law_Committee] FOREIGN KEY([CommitteeId])
REFERENCES [dbo].[Committee] ([CommitteeId])
GO
ALTER TABLE [dbo].[Law] CHECK CONSTRAINT [FK_Law_Committee]
GO
/****** Object:  ForeignKey [FK_love_ministerium]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Law]  WITH CHECK ADD  CONSTRAINT [FK_love_ministerium] FOREIGN KEY([MinistryId])
REFERENCES [dbo].[Ministry] ([MinistryId])
GO
ALTER TABLE [dbo].[Law] CHECK CONSTRAINT [FK_love_ministerium]
GO
/****** Object:  ForeignKey [FK_love_samlinger]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Law]  WITH CHECK ADD  CONSTRAINT [FK_love_samlinger] FOREIGN KEY([SessionId])
REFERENCES [dbo].[Session] ([SessionId])
GO
ALTER TABLE [dbo].[Law] CHECK CONSTRAINT [FK_love_samlinger]
GO
/****** Object:  ForeignKey [FK_lawchange_paragraph]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[LawChange]  WITH CHECK ADD  CONSTRAINT [FK_lawchange_paragraph] FOREIGN KEY([ParagraphId])
REFERENCES [dbo].[Paragraph] ([ParagraphId])
GO
ALTER TABLE [dbo].[LawChange] CHECK CONSTRAINT [FK_lawchange_paragraph]
GO
/****** Object:  ForeignKey [FK_lawchapter_love]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[LawChapter]  WITH CHECK ADD  CONSTRAINT [FK_lawchapter_love] FOREIGN KEY([LawId])
REFERENCES [dbo].[Law] ([LawId])
GO
ALTER TABLE [dbo].[LawChapter] CHECK CONSTRAINT [FK_lawchapter_love]
GO
/****** Object:  ForeignKey [FK_LawVote_love]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[LawVote]  WITH CHECK ADD  CONSTRAINT [FK_LawVote_love] FOREIGN KEY([LawId])
REFERENCES [dbo].[Law] ([LawId])
GO
ALTER TABLE [dbo].[LawVote] CHECK CONSTRAINT [FK_LawVote_love]
GO
/****** Object:  ForeignKey [FK_P20Question_Document]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[P20Question]  WITH CHECK ADD  CONSTRAINT [FK_P20Question_Document] FOREIGN KEY([AnswerDocumentId])
REFERENCES [dbo].[Document] ([DocumentId])
GO
ALTER TABLE [dbo].[P20Question] CHECK CONSTRAINT [FK_P20Question_Document]
GO
/****** Object:  ForeignKey [FK_P20Question_Politician]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[P20Question]  WITH CHECK ADD  CONSTRAINT [FK_P20Question_Politician] FOREIGN KEY([AskerPolId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[P20Question] CHECK CONSTRAINT [FK_P20Question_Politician]
GO
/****** Object:  ForeignKey [FK_P20Question_Politician1]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[P20Question]  WITH CHECK ADD  CONSTRAINT [FK_P20Question_Politician1] FOREIGN KEY([AskeeId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[P20Question] CHECK CONSTRAINT [FK_P20Question_Politician1]
GO
/****** Object:  ForeignKey [FK_P20Question_Session]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[P20Question]  WITH CHECK ADD  CONSTRAINT [FK_P20Question_Session] FOREIGN KEY([SessionId])
REFERENCES [dbo].[Session] ([SessionId])
GO
ALTER TABLE [dbo].[P20Question] CHECK CONSTRAINT [FK_P20Question_Session]
GO
/****** Object:  ForeignKey [FK_P20Question_User]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[P20Question]  WITH CHECK ADD  CONSTRAINT [FK_P20Question_User] FOREIGN KEY([AskerUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[P20Question] CHECK CONSTRAINT [FK_P20Question_User]
GO
/****** Object:  ForeignKey [FK_paragraph_lawchapter]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Paragraph]  WITH CHECK ADD  CONSTRAINT [FK_paragraph_lawchapter] FOREIGN KEY([ChapterId])
REFERENCES [dbo].[LawChapter] ([LawChapterId])
GO
ALTER TABLE [dbo].[Paragraph] CHECK CONSTRAINT [FK_paragraph_lawchapter]
GO
/****** Object:  ForeignKey [FK_paragraph_love]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Paragraph]  WITH CHECK ADD  CONSTRAINT [FK_paragraph_love] FOREIGN KEY([LawId])
REFERENCES [dbo].[Law] ([LawId])
GO
ALTER TABLE [dbo].[Paragraph] CHECK CONSTRAINT [FK_paragraph_love]
GO
/****** Object:  ForeignKey [FK_Politician_Images]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Politician]  WITH CHECK ADD  CONSTRAINT [FK_Politician_Images] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Image] ([ImageId])
GO
ALTER TABLE [dbo].[Politician] CHECK CONSTRAINT [FK_Politician_Images]
GO
/****** Object:  ForeignKey [FK_Politician_Party]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Politician]  WITH CHECK ADD  CONSTRAINT [FK_Politician_Party] FOREIGN KEY([PartyId])
REFERENCES [dbo].[Party] ([PartyId])
GO
ALTER TABLE [dbo].[Politician] CHECK CONSTRAINT [FK_Politician_Party]
GO
/****** Object:  ForeignKey [FK_PoliticianLawVote_LawVote]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[PoliticianLawVote]  WITH CHECK ADD  CONSTRAINT [FK_PoliticianLawVote_LawVote] FOREIGN KEY([LawVoteId])
REFERENCES [dbo].[LawVote] ([LawVoteId])
GO
ALTER TABLE [dbo].[PoliticianLawVote] CHECK CONSTRAINT [FK_PoliticianLawVote_LawVote]
GO
/****** Object:  ForeignKey [FK_PoliticianLawVote_politiker]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[PoliticianLawVote]  WITH CHECK ADD  CONSTRAINT [FK_PoliticianLawVote_politiker] FOREIGN KEY([PoliticianId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[PoliticianLawVote] CHECK CONSTRAINT [FK_PoliticianLawVote_politiker]
GO
/****** Object:  ForeignKey [FK_proposedlaw_love]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[ProposedLaw]  WITH CHECK ADD  CONSTRAINT [FK_proposedlaw_love] FOREIGN KEY([LawId])
REFERENCES [dbo].[Law] ([LawId])
GO
ALTER TABLE [dbo].[ProposedLaw] CHECK CONSTRAINT [FK_proposedlaw_love]
GO
/****** Object:  ForeignKey [FK_proposedlaw_politiker]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[ProposedLaw]  WITH CHECK ADD  CONSTRAINT [FK_proposedlaw_politiker] FOREIGN KEY([PoliticianId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[ProposedLaw] CHECK CONSTRAINT [FK_proposedlaw_politiker]
GO
/****** Object:  ForeignKey [FK_section_paragraph]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_section_paragraph] FOREIGN KEY([ParagraphId])
REFERENCES [dbo].[Paragraph] ([ParagraphId])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_section_paragraph]
GO
/****** Object:  ForeignKey [FK_Speaker_Law]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Speaker]  WITH CHECK ADD  CONSTRAINT [FK_Speaker_Law] FOREIGN KEY([LawId])
REFERENCES [dbo].[Law] ([LawId])
GO
ALTER TABLE [dbo].[Speaker] CHECK CONSTRAINT [FK_Speaker_Law]
GO
/****** Object:  ForeignKey [FK_Speaker_Politician]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Speaker]  WITH CHECK ADD  CONSTRAINT [FK_Speaker_Politician] FOREIGN KEY([PoliticianId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[Speaker] CHECK CONSTRAINT [FK_Speaker_Politician]
GO
/****** Object:  ForeignKey [FK_Speech_Speech]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Speech]  WITH CHECK ADD  CONSTRAINT [FK_Speech_Speech] FOREIGN KEY([ParentSpeechId])
REFERENCES [dbo].[Speech] ([SpeechId])
GO
ALTER TABLE [dbo].[Speech] CHECK CONSTRAINT [FK_Speech_Speech]
GO
/****** Object:  ForeignKey [FK_tale_behandlinger]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Speech]  WITH CHECK ADD  CONSTRAINT [FK_tale_behandlinger] FOREIGN KEY([DeliberationId])
REFERENCES [dbo].[Deliberation] ([DeliberationId])
GO
ALTER TABLE [dbo].[Speech] CHECK CONSTRAINT [FK_tale_behandlinger]
GO
/****** Object:  ForeignKey [FK_tale_politiker]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Speech]  WITH CHECK ADD  CONSTRAINT [FK_tale_politiker] FOREIGN KEY([PoliticianId])
REFERENCES [dbo].[Politician] ([PoliticianId])
GO
ALTER TABLE [dbo].[Speech] CHECK CONSTRAINT [FK_tale_politiker]
GO
/****** Object:  ForeignKey [FK_speach_para_tale]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[SpeechPara]  WITH CHECK ADD  CONSTRAINT [FK_speach_para_tale] FOREIGN KEY([SpeechId])
REFERENCES [dbo].[Speech] ([SpeechId])
GO
ALTER TABLE [dbo].[SpeechPara] CHECK CONSTRAINT [FK_speach_para_tale]
GO
/****** Object:  ForeignKey [FK_subchange_lawchange]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[SubChange]  WITH CHECK ADD  CONSTRAINT [FK_subchange_lawchange] FOREIGN KEY([LawchangeId])
REFERENCES [dbo].[LawChange] ([LawChangeId])
GO
ALTER TABLE [dbo].[SubChange] CHECK CONSTRAINT [FK_subchange_lawchange]
GO
/****** Object:  ForeignKey [FK_Tag_User]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_User]
GO
/****** Object:  ForeignKey [FK_userlawvote_LawVote]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[UserLawVote]  WITH CHECK ADD  CONSTRAINT [FK_userlawvote_LawVote] FOREIGN KEY([LawVoteId])
REFERENCES [dbo].[LawVote] ([LawVoteId])
GO
ALTER TABLE [dbo].[UserLawVote] CHECK CONSTRAINT [FK_userlawvote_LawVote]
GO
/****** Object:  ForeignKey [FK_userlawvote_user]    Script Date: 01/30/2011 22:58:56 ******/
ALTER TABLE [dbo].[UserLawVote]  WITH CHECK ADD  CONSTRAINT [FK_userlawvote_user] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserLawVote] CHECK CONSTRAINT [FK_userlawvote_user]
GO
