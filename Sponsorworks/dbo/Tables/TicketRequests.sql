CREATE TABLE [dbo].[TicketRequests] (
    [Id]               INT              IDENTITY (1, 1) NOT NULL,
    [TicketId]         INT              NOT NULL,
    [RequestStatusId]  INT              NOT NULL,
    [RequestorRoleId]  TINYINT          NOT NULL,
    [RequestorUserId]  UNIQUEIDENTIFIER NOT NULL,
    [EventId]          INT              NOT NULL,
    [EventOwnerRoleId] TINYINT          NOT NULL,
    [EventOwnerUserId] UNIQUEIDENTIFIER NOT NULL,
    [Amount]           INT              NOT NULL,
    CONSTRAINT [PK_TicketRequests] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TicketRequests_EventTickets] FOREIGN KEY ([EventId], [EventOwnerRoleId], [EventOwnerUserId], [TicketId]) REFERENCES [dbo].[EventTickets] ([EventId], [EventOwnerRoleId], [EventOwnerUserId], [TicketId]),
    CONSTRAINT [FK_TicketRequests_RequestStatus] FOREIGN KEY ([RequestStatusId]) REFERENCES [dbo].[RequestStatus] ([Id]),
    CONSTRAINT [FK_TicketRequests_TicketRequestRoles] FOREIGN KEY ([RequestorRoleId]) REFERENCES [dbo].[TicketRequestorRoles] ([RoleId]),
    CONSTRAINT [FK_TicketRequests_UserRelationships] FOREIGN KEY ([RequestorRoleId], [RequestorUserId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId])
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_TicketRequests]
    ON [dbo].[TicketRequests]([Id] ASC, [EventId] ASC, [TicketId] ASC, [EventOwnerRoleId] ASC, [EventOwnerUserId] ASC);

