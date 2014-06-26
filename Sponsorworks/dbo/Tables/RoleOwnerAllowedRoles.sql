CREATE TABLE [dbo].[RoleOwnerAllowedRoles] (
    [AllowedRoleId]   TINYINT NOT NULL,
    [RoleOwnerRoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_RoleOwnerAllowedRoles] PRIMARY KEY CLUSTERED ([RoleOwnerRoleId] ASC, [AllowedRoleId] ASC),
    CONSTRAINT [FK_RoleOwnerAllowedRoles_RoleOwnerRoles] FOREIGN KEY ([RoleOwnerRoleId]) REFERENCES [dbo].[RoleOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_RoleOwnerAllowedRoles_Roles] FOREIGN KEY ([AllowedRoleId]) REFERENCES [dbo].[Roles] ([Id])
);



