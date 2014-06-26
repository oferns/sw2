CREATE TABLE [dbo].[TicketAllocations] (
    [Id]                     INT              IDENTITY (1, 1) NOT NULL,
    [EventId]                INT              NOT NULL,
    [TicketId]               INT              NOT NULL,
    [TicketRequestId]        INT              NOT NULL,
    [EventOwnerRoleId]       TINYINT          NOT NULL,
    [EventOwnerUserId]       UNIQUEIDENTIFIER NOT NULL,
    [PatronRoleId]           TINYINT          NOT NULL,
    [PatronUserId]           UNIQUEIDENTIFIER NOT NULL,
    [AllocationStatusId]     INT              NOT NULL,
    [AllocatorRoleId]        TINYINT          NOT NULL,
    [AllocatorUserId]        UNIQUEIDENTIFIER NOT NULL,
    [LastStatusUpdateRoleId] TINYINT          NOT NULL,
    [LastStatusUpdateUserId] UNIQUEIDENTIFIER NOT NULL,
    [LastStatusUpdate]       DATETIME         CONSTRAINT [DF_TicketAllocations_LastStatusUpdate] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_TicketAllocations] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TicketAllocations_OwnerAllocatorRelationships] FOREIGN KEY ([EventOwnerRoleId], [EventOwnerUserId], [AllocatorRoleId], [AllocatorUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId]),
    CONSTRAINT [FK_TicketAllocations_OwnerPatronRelationships] FOREIGN KEY ([AllocatorRoleId], [AllocatorUserId], [PatronRoleId], [PatronUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId]),
    CONSTRAINT [FK_TicketAllocations_OwnerStatusUpdaterRelationships] FOREIGN KEY ([EventOwnerRoleId], [EventOwnerUserId], [LastStatusUpdateRoleId], [LastStatusUpdateUserId]) REFERENCES [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId]),
    CONSTRAINT [FK_TicketAllocations_TicketAllocationRoles] FOREIGN KEY ([PatronRoleId]) REFERENCES [dbo].[TicketAllocationRoles] ([RoleId]),
    CONSTRAINT [FK_TicketAllocations_TicketAllocationStatus] FOREIGN KEY ([TicketId], [AllocationStatusId], [EventId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[TicketAllocationStatus] ([TicketId], [AllocationStatusId], [EventId], [EventOwnerRoleId], [EventOwnerUserId]),
    CONSTRAINT [FK_TicketAllocations_TicketAllocatorRoles] FOREIGN KEY ([AllocatorRoleId]) REFERENCES [dbo].[TicketAllocatorRoles] ([RoleId]),
    CONSTRAINT [FK_TicketAllocations_TicketOwners] FOREIGN KEY ([TicketId], [PatronRoleId], [PatronUserId]) REFERENCES [dbo].[TicketOwners] ([TicketId], [OwnerRoleId], [OwnerUserId]),
    CONSTRAINT [FK_TicketAllocations_TicketPatronageRoles] FOREIGN KEY ([PatronRoleId]) REFERENCES [dbo].[TicketPatronageRoles] ([RoleId]),
    CONSTRAINT [FK_TicketAllocations_TicketRequests] FOREIGN KEY ([TicketRequestId], [EventId], [TicketId], [EventOwnerRoleId], [EventOwnerUserId]) REFERENCES [dbo].[TicketRequests] ([Id], [EventId], [TicketId], [EventOwnerRoleId], [EventOwnerUserId]),
    CONSTRAINT [FK_TicketAllocations_TicketStatusUpdaterRoles] FOREIGN KEY ([LastStatusUpdateRoleId]) REFERENCES [dbo].[TicketStatusUpdaterRoles] ([RoleId])
);




GO
CREATE TRIGGER dbo.TicketAllocationsAfterUpdate
   ON  dbo.TicketAllocations
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;

	DECLARE @PreviousStatusId int
	DECLARE @CurrentStatusId int
	DECLARE @PreviousStatusUpdateRoleId tinyint
	DECLARE @PreviousStatusUpdateUserId uniqueidentifier
	
	-- Get the old status and new status
	SELECT @PreviousStatusId = AllocationStatusId from deleted
	SELECT @CurrentStatusId = AllocationStatusId from inserted

	-- If there is no status change there is nothing to do
	IF @PreviousStatusId = @CurrentStatusId RETURN

	-- If there is a change, get the previous status changer role/user combo
	SELECT 
		@PreviousStatusUpdateRoleId  = [LastStatusUpdateRoleId]
		, @PreviousStatusUpdateUserId = [LastStatusUpdateUserId]
	FROM deleted

	-- Insert the history of the change
	INSERT INTO [dbo].[TicketAllocationStatusHistory] (
		TicketAllocationId
		, NewAllocationStatusId
		, NewStatusUpdateRoleId
		, NewStatusUpdateUserId
		, PreviousAllocationStatusId
		, PreviousStatusUpdateRoleId
		, PreviousStatusUpdateUserId)
		SELECT 
			[Id]
		,	[AllocationStatusId]
		,	[LastStatusUpdateRoleId]
		,	[LastStatusUpdateUserId]
		,	@PreviousStatusId
		,	@PreviousStatusUpdateRoleId
		,	@PreviousStatusUpdateUserId
		FROM inserted
END
GO
CREATE TRIGGER dbo.TicketAllocationsAfterInsert 
   ON  dbo.TicketAllocations
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;

	INSERT INTO [dbo].[TicketAllocationStatusHistory] (
		TicketAllocationId
		, NewAllocationStatusId
		, NewStatusUpdateRoleId
		, NewStatusUpdateUserId)
		SELECT 
			[Id]
		,	[AllocationStatusId]
		,	[LastStatusUpdateRoleId]
		,	[LastStatusUpdateUserId]
		FROM inserted
END