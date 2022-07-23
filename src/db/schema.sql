USE [testing-api]

IF NOT EXISTS(SELECT * FROM sys.objects WHERE object_id=OBJECT_ID('Users'))
BEGIN
CREATE TABLE [dbo].[Users](
	Id INT IDENTITY(1,1) NOT NULL,
	EmailId VARCHAR(24) NOT NULL,
	PasswordHash VARCHAR(128) NOT NULL,
	CreatedOn DATETIME NOT NULL,
	UpdatedOn DATETIME NULL,
	IsActive BIT DEFAULT 0 NOT NULL,

	CONSTRAINT [PK_Users] PRIMARY KEY (Id),
	CONSTRAINT [UK_EmailId] UNIQUE (EmailId)
)
END
GO

IF NOT EXISTS(SELECT * FROM sys.objects WHERE object_id=OBJECT_ID('UserProfiles'))
BEGIN
CREATE TABLE [dbo].[UserProfiles](
	Id INT IDENTITY(1,1) NOT NULL,
	UserId INT NOT NULL,
	FirstName VARCHAR(64) NOT NULL,
	LastName VARCHAR(64) NOT NULL,
	AddressLine VARCHAR(512) NOT NULL,
	MobileNo VARCHAR(11) NOT NULL,
	CreatedOn DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedOn DATETIME NULL,

	CONSTRAINT [PK_UserProfiles] PRIMARY KEY (Id),
	CONSTRAINT [FK_UserProfiles_Users] FOREIGN KEY (UserId) REFERENCES Users(Id),
	CONSTRAINT [UK_Mobile] UNIQUE (MobileNo)
)
END
GO