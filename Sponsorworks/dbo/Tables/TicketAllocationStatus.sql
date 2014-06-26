CREATE TABLE [dbo].[TicketAllocationStatus] (
    [TicketId]           INT              NOT NULL,
    [AllocationStatusId] INT              NOT NULL,
    [EventId]            INT              NOT NULL,
    [EventOwnerRoleId]   TINYINT          NOT NULL,
    [EventOwnerUserId]   UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_TicketAllocationStatus] PRIMARY KEY CLUSTERED ([TicketId] ASC, [AllocationStatusId] ASC, [EventId] ASC, [EventOwnerRoleId] ASC, [EventOwnerUserId] ASC),
    CONSTRAINT [FK_TicketAllocationStatus_EventAllocationStatus] FOREIGN KEY ([EventId], [AllocationStatusId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[EventAllocationStatus] ([EventId], [AllocationStatusId], [EventOwnerRoleId], [EventOwnerUserId]),
    CONSTRAINT [FK_TicketAllocationStatus_EventTickets] FOREIGN KEY ([EventId], [EventOwnerRoleId], [EventOwnerUserId], [TicketId]) REFERENCES [dbo].[EventTickets] ([EventId], [EventOwnerRoleId], [EventOwnerUserId], [TicketId])
);

