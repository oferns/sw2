CREATE TABLE [dbo].[EventTickets] (
    [EventId]          INT              NOT NULL,
    [EventOwnerRoleId] TINYINT          NOT NULL,
    [EventOwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [TicketId]         INT              NOT NULL,
    [Allocation]       INT              CONSTRAINT [DF_EventTickets_Allocation] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_EventTickets] PRIMARY KEY CLUSTERED ([EventId] ASC, [EventOwnerRoleId] ASC, [EventOwnerUserId] ASC, [TicketId] ASC),
    CONSTRAINT [FK_EventTickets_Events] FOREIGN KEY ([EventId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[Events] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_EventTickets_TicketOwners] FOREIGN KEY ([TicketId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[TicketOwners] ([TicketId], [OwnerRoleId], [OwnerUserId])
);

