CREATE TABLE [dbo].[EventVenues] (
    [EventId]     INT              NOT NULL,
    [OwnerRoleId] TINYINT          NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [VenueId]     INT              NOT NULL,
    CONSTRAINT [PK_EventVenues] PRIMARY KEY CLUSTERED ([EventId] ASC, [VenueId] ASC),
    CONSTRAINT [FK_EventVenues_Events] FOREIGN KEY ([EventId], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[Events] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_EventVenues_VenueOwners] FOREIGN KEY ([VenueId], [OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[VenueOwners] ([VenueId], [OwnerRoleId], [OwnerUserId])
);



