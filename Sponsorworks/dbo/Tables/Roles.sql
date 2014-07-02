CREATE TABLE [dbo].[Roles] (
    [Id]           TINYINT             NOT NULL,
    [Name]         [dbo].[ShortString] NOT NULL,
    [Description]  [dbo].[LongString]  NOT NULL,
    [IsSystemRole] BIT                 NOT NULL,
    [OwnerRoleId]  TINYINT             NOT NULL,
    [Active]       BIT                 CONSTRAINT [DF_Roles_Active] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Roles_OwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[Roles] ([Id])
);










GO



CREATE TRIGGER dbo.CannotDeleteSystemRoles
ON dbo.Roles AFTER DELETE
AS

DECLARE @IsSystem BIT
SELECT @IsSystem = IsSystemRole FROM deleted

IF @IsSystem = 1 
	BEGIN
	ROLLBACK;
	THROW 50000, 'You cannot delete a system role', 1;	
	END