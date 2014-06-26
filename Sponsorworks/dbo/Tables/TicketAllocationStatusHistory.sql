CREATE TABLE [dbo].[TicketAllocationStatusHistory] (
    [Id]                         INT              IDENTITY (1, 1) NOT NULL,
    [TicketAllocationId]         INT              NOT NULL,
    [NewAllocationStatusId]      INT              NOT NULL,
    [NewStatusUpdateRoleId]      TINYINT          NOT NULL,
    [NewStatusUpdateUserId]      UNIQUEIDENTIFIER NOT NULL,
    [PreviousAllocationStatusId] INT              NULL,
    [PreviousStatusUpdateRoleId] TINYINT          NULL,
    [PreviousStatusUpdateUserId] UNIQUEIDENTIFIER NULL,
    [DateChanged]                DATETIME         CONSTRAINT [DF_Table_1_ChangeDate] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_TicketAllocationStatusHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TicketAllocationStatusHistory_TicketAllocations] FOREIGN KEY ([TicketAllocationId]) REFERENCES [dbo].[TicketAllocations] ([Id])
);

