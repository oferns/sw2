CREATE TABLE [dbo].[ResourceOverrides] (
    [ResourceId]  INT               NOT NULL,
    [OwnerRoleId] TINYINT           NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER  NOT NULL,
    [Value]       [dbo].[MaxString] NOT NULL,
    CONSTRAINT [PK_ResourceOverrides] PRIMARY KEY CLUSTERED ([ResourceId] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [FK_ResourceOverrides_ResourceOverridesOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[ResourceOverridesOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_ResourceOverrides_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

