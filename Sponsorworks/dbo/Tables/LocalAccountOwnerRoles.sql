CREATE TABLE [dbo].[LocalAccountOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_LocalAccountRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_LocalAccountRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

