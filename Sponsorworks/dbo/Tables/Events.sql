CREATE TABLE [dbo].[Events] (
    [Id]          INT                 IDENTITY (1, 1) NOT NULL,
    [Name]        [dbo].[ShortString] NOT NULL,
    [OwnerRoleId] TINYINT             NOT NULL,
    [OwnerUserId] UNIQUEIDENTIFIER    NOT NULL,
    [ParentId]    INT                 NULL,
    [StartDate]   DATETIME            NULL,
    [EndDate]     DATETIME            NULL,
    CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Event_Start_Before_End] CHECK (coalesce([StartDate],'1753-01-01')<coalesce([EndDate],'9999-12-31')),
    CONSTRAINT [FK_Events_EventOwnerRoles] FOREIGN KEY ([OwnerRoleId]) REFERENCES [dbo].[EventOwnerRoles] ([RoleId]),
    CONSTRAINT [FK_Events_ParentEvents] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Events] ([Id]),
    CONSTRAINT [FK_Events_RoleMembers] FOREIGN KEY ([OwnerRoleId], [OwnerUserId]) REFERENCES [dbo].[RoleMembers] ([RoleId], [UserId])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_EventOwners]
    ON [dbo].[Events]([Id] ASC, [OwnerRoleId] ASC, [OwnerUserId] ASC);


GO
CREATE TRIGGER dbo.EventsParentOwnerCheck
   ON  dbo.Events
   AFTER INSERT, UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	SET NOCOUNT ON;

	DECLARE @ParentId int

	-- Get the inserted/updated parent Id
	SELECT @ParentId = ParentId FROM INSERTED

	-- If the parent Id is null there is nothing to check
	if @ParentId IS NULL RETURN

	-- I think it is OK just to check the Owner GUIDs here. 
	-- A user in any role can own events
	DECLARE @ParentOwnerUserId uniqueidentifier
	DECLARE @EventOwnerUserId uniqueidentifier

	SELECT @ParentOwnerUserId = OwnerUserId FROM dbo.Events WHERE Id = @ParentId
	SELECT @EventOwnerUserId  = OwnerUserId FROM inserted
	
	IF @ParentOwnerUserId != @EventOwnerUserId
		BEGIN
			RAISERROR  ('Parent Event Owner must be the same as Event owner', 16, 1 ) 
		END
		
END