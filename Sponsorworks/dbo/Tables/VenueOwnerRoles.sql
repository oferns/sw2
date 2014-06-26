CREATE TABLE [dbo].[VenueOwnerRoles] (
    [RoleId] TINYINT NOT NULL,
    CONSTRAINT [PK_VenueOwnerRoles] PRIMARY KEY CLUSTERED ([RoleId] ASC),
    CONSTRAINT [FK_VenueOwnerRoles_Roles] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])
);

