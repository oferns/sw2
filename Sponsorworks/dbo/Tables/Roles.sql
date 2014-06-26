CREATE TABLE [dbo].[Roles] (
    [Id]           TINYINT             NOT NULL,
    [Name]         [dbo].[ShortString] NOT NULL,
    [Description]  [dbo].[LongString]  NOT NULL,
    [IsSystemRole] BIT                 NOT NULL,
    [OwnerRoleId]  TINYINT             NOT NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Roles_OwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[Roles] ([Id])
);





