CREATE TABLE [dbo].[UserRelationships] (
    [RoleId]        TINYINT          NOT NULL,
    [UserId]        UNIQUEIDENTIFIER NOT NULL,
    [PartnerRoleId] TINYINT          NOT NULL,
    [PartnerUserId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_UserRelationships] PRIMARY KEY CLUSTERED ([RoleId] ASC, [UserId] ASC, [PartnerRoleId] ASC, [PartnerUserId] ASC),
    CONSTRAINT [FK_UserRelationships_PartnerRoleMembers] FOREIGN KEY ([PartnerRoleId], [PartnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId]),
    CONSTRAINT [FK_UserRelationships_RoleRelationships] FOREIGN KEY ([RoleId], [PartnerRoleId]) REFERENCES [dbo].[RoleRelationships] ([RoleId], [PartnerRoleId]),
    CONSTRAINT [FK_UserRelationships_RoleMembers] FOREIGN KEY ([RoleId], [UserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);

