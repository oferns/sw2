CREATE TABLE [dbo].[ExternalAccounts] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [ProviderId] TINYINT          NOT NULL,
    [UserId]     UNIQUEIDENTIFIER NOT NULL,
    [RoleId]     TINYINT          NOT NULL,
    [Active]     BIT              NOT NULL,
    CONSTRAINT [PK_ExternalAccounts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ExternalAccounts_ExternalAccountOwnerRoles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[ExternalAccountOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_ExternalAccounts_ExternalAccountProviders] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[ExternalAccountProviders] ([Id]),
    CONSTRAINT [FK_ExternalAccounts_RoleMembers] FOREIGN KEY ([RoleId], [UserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

