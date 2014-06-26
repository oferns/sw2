CREATE TABLE [dbo].[RoleOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_RoleOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_RoleOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

