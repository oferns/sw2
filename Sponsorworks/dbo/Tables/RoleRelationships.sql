CREATE TABLE [dbo].[RoleRelationships] (
    [RoleId]        TINYINT NOT NULL,
    [PartnerRoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_RoleRelationships] PRIMARY KEY CLUSTERED ([RoleId] ASC, [PartnerRoleId] ASC),
    CONSTRAINT [FK_RoleRelationships_PartnerRoles] FOREIGN KEY ([PartnerRoleId]) REFERENCES [dbo].[Roles] ([Id]),
    CONSTRAINT [FK_RoleRelationships_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

