CREATE TABLE [dbo].[OwnedResources] (
    [ResourceId]  INT              NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [Active]      BIT              NOT NULL,
    CONSTRAINT [PK_OwnedResources] PRIMARY KEY CLUSTERED ([ResourceId] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [FK_OwnedResources_ResourceOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[ResourceOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_OwnedResources_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

