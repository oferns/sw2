CREATE TABLE [dbo].[ExternalAccountProviderOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    [Active] BIT     NOT NULL,
    CONSTRAINT [PK_ExternalAccountProviderOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_ExternalAccountProviderOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

