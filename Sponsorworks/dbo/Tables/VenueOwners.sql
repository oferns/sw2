CREATE TABLE [dbo].[VenueOwners] (
    [VenueId] INT              NOT NULL,
    [OwnerRoleId]  TINYINT          NOT NULL,
    [OwnerUserId]  UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_VenueOwners] PRIMARY KEY CLUSTERED ([VenueId] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC),
    CONSTRAINT [FK_VenueOwners_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId]),
    CONSTRAINT [FK_VenueOwners_VenueOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[VenueOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_VenueOwners_Venues] FOREIGN KEY ([VenueId]) REFERENCES [dbo].[Venues] ([Id])
);

