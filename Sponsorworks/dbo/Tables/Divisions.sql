CREATE TABLE [dbo].[Divisions] (
    [Id]          INT                 IDENTITY (1, 1) NOT NULL,
    [Name]        [dbo].[ShortString] NOT NULL,
    [OwnerRoleId] TINYINT             NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Divisions_DivisionOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[DivisionOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_Divisions_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Divisions]
    ON [dbo].[Divisions]([Id] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC);

