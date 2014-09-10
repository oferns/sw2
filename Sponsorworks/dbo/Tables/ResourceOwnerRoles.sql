CREATE TABLE [dbo].[ResourceOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_ResourceOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_ResourceOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

