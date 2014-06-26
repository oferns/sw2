CREATE TABLE [dbo].[OwnedRoles] (
    [RoleId]      TINYINT          NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_OwnedRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [FK_OwnedRoles_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId]),
    CONSTRAINT [FK_OwnedRoles_RoleOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[RoleOwnerRoles] ([RoleId])
);



