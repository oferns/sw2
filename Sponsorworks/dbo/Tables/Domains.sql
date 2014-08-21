CREATE TABLE [dbo].[Domains] (
    [Id]          INT                 IDENTITY (1, 1) NOT NULL,
    [Domain]        [dbo].[ShortString] NOT NULL,
    [Subdomain]        [dbo].[ShortString] NULL,
    [TopLevelDomain]        [dbo].[ShortString] NULL,
    [OwnerRoleId] TINYINT             NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    CONSTRAINT [PK_Domains] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Domains_DomainOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[DomainOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_Domains_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Domains]
    ON [dbo].[Domains]([Id] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC);

