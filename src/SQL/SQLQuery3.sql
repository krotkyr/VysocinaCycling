-- závody
CREATE TABLE [UserRaces] (
	[RaceId] INT IDENTITY(1,1) NOT NULL,
	[UserName] NVARCHAR(100) NOT NULL,
	[LastUpdate] DATETIME NULL,
  
	-- vlastní sloupce
	[RaceDate] DATE NOT NULL,
	[RaceVenue] NVARCHAR(100) NOT NULL,
	[RaceName] NVARCHAR(100) NOT NULL,
	[RaceDistance] SMALLINT NOT NULL,
	[RaceTime] TIME(0) NOT NULL,
	[RaceOverallPosition] SMALLINT NOT NULL,
	[UserCategory] NVARCHAR(100) NOT NULL,
	[RaceCategoryPosition] SMALLINT NOT NULL,
	-- konec vlastních sloupcù

	CONSTRAINT [PK_UserRaces] PRIMARY KEY CLUSTERED ([RaceId] ASC),
	CONSTRAINT [FK_UserRaces_Users] FOREIGN KEY ([UserName]) REFERENCES [dbo].[Users] ([UserName]) ON UPDATE CASCADE ON DELETE CASCADE
)

--novinky
CREATE TABLE [UserNews] (
	[NewsId] INT IDENTITY(1,1) NOT NULL,
	[UserName] NVARCHAR(100) NOT NULL,
	[LastUpdate] DATETIME NULL,
  
	-- vlastní sloupce
	[Published] BIT NOT NULL,
	[NewsTitle] NVARCHAR(100) NOT NULL,
	[NewsText] NVARCHAR(1500) NOT NULL,
	[NewsImage] IMAGE NULL,
	-- konec vlastních sloupcù

	CONSTRAINT [PK_UserNews] PRIMARY KEY CLUSTERED ([NewsId] ASC),
	CONSTRAINT [FK_UserNews_Users] FOREIGN KEY ([UserName]) REFERENCES [dbo].[Users] ([UserName]) ON UPDATE CASCADE ON DELETE CASCADE
)

--èlánky
CREATE TABLE [UserArticles] (
	[ArticlesId] INT IDENTITY(1,1) NOT NULL,
	[UserName] NVARCHAR(100) NOT NULL,
	[LastUpdate] DATETIME NULL,
  
	-- vlastní sloupce
	[Published] BIT NOT NULL,
	[ArticleTitle] NVARCHAR(100) NOT NULL,
	[ArticleForeword] NVARCHAR(2000) NOT NULL,
	[ArticleText] NVARCHAR(4000) NOT NULL,
	[ArticleImage] IMAGE NULL,
	-- konec vlastních sloupcù

	CONSTRAINT [PK_UserArticles] PRIMARY KEY CLUSTERED ([ArticlesId] ASC),
	CONSTRAINT [FK_UserArticles_Users] FOREIGN KEY ([UserName]) REFERENCES [dbo].[Users] ([UserName]) ON UPDATE CASCADE ON DELETE CASCADE
)