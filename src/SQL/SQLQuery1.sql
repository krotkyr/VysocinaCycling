-- uživatelé
CREATE TABLE [Users] (
	[UserId] INT NOT NULL IDENTITY(1,1),
    [UserName] NVARCHAR(100) NOT NULL UNIQUE,
    [PasswordHash] BINARY(64) NOT NULL,
    [PasswordSalt] BINARY(128) NOT NULL,
    [Email] NVARCHAR(100) NOT NULL,
    [Comment] NVARCHAR(MAX) NULL,
    [IsApproved] BIT NOT NULL,   
    [DateCreated] DATETIME NOT NULL,   
    [DateLastLogin] DATETIME NULL,   
    [DateLastActivity] DATETIME NULL,   
    [DateLastPasswordChange] DATETIME NOT NULL,
    CONSTRAINT PK_Users PRIMARY KEY CLUSTERED (UserId ASC),
    CONSTRAINT IX_Users_UserName UNIQUE NONCLUSTERED ([UserName] ASC)
)
-- role
CREATE TABLE [Roles] (
	[RoleName] NVARCHAR(100) NOT NULL,
	CONSTRAINT PK_Roles PRIMARY KEY CLUSTERED ([RoleName] ASC)
)
-- uživatelé v rolích
CREATE TABLE [UsersInRoles] (
	[HashId] INT NOT NULL IDENTITY(1,1),
    [UserName] NVARCHAR(100) NOT NULL,
    [RoleName] NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_UsersInRoles PRIMARY KEY CLUSTERED ([HashId] ASC),
    CONSTRAINT FK_UsersInRoles_Roles FOREIGN KEY ([RoleName]) REFERENCES [dbo].[Roles] ([RoleName]) ON UPDATE CASCADE ON DELETE CASCADE
)
-- profily
CREATE TABLE [UserProfiles] (
	[UserName] NVARCHAR(100) NOT NULL,
	[LastUpdate] DATETIME NULL,
  
	-- vlastní sloupce
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[BirthDate] DATETIME NULL,
	[TrainingLocality] NVARCHAR(50) NULL,
	[TrainingRegion] NVARCHAR(50) NULL,
	[MemberType] NVARCHAR(50) NULL,
	[SportClass] NVARCHAR(50) NULL,
	[PreferredDiscipline] NVARCHAR(50) NULL,
	[Points] INT NOT NULL,
	-- konec vlastních sloupcù

	CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED ([UserName] ASC),
	CONSTRAINT [FK_UserProfiles_Users] FOREIGN KEY ([UserName]) REFERENCES [dbo].[Users] ([UserName]) ON UPDATE CASCADE ON DELETE CASCADE
)