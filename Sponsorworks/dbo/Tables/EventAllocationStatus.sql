CREATE TABLE [dbo].[EventAllocationStatus] (
    [EventId]            INT              NOT NULL,
    [AllocationStatusId] INT              NOT NULL,
    [EventOwnerRoleId]   TINYINT          NOT NULL,
    [EventOwnerUserId]   UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_EventAllocationStatus] PRIMARY KEY CLUSTERED ([EventId] ASC, [AllocationStatusId] ASC, [EventOwnerRoleId] ASC, [EventOwnerUserId] ASC),
    CONSTRAINT [FK_EventAllocationStatus_Events] FOREIGN KEY ([EventId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[Events] ([Id], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_EventAllocationStatus_UserAllocationStatus] FOREIGN KEY ([EventOwnerRoleId], [EventOwnerUserId], [AllocationStatusId]) REFERENCES [dbo].[UserAllocationStatus] ([OwnerRoleId], [OwnerUserId], [AllocationStatusId])
);

