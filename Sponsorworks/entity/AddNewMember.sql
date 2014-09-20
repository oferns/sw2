CREATE PROCEDURE [entity].[AddNewMember]
	@UserId uniqueidentifier
	, @UserName nvarchar(256)
	, @RoleId tinyint
	, @OwnerUserId uniqueidentifier
	, @OwnerRoleId tinyint
	, @Active bit
	, @ReturnUserId uniqueidentifier OUTPUT

AS
BEGIN

	SET NOCOUNT ON;
	SET XACT_ABORT ON;
		
	BEGIN TRANSACTION
	EXEC dbo.AddRoleMember @UserId, @UserName, @RoleId, @Active, @ReturnUserId OUTPUT 
	
	INSERT [dbo].[UserRelationships] ([RoleId], [UserId], [PartnerRoleId], [PartnerUserId], [Active]) VALUES (
		@OwnerRoleId
		, @OwnerUserId
		, @RoleId
		, @ReturnUserId
		, @Active
	)
	COMMIT TRANSACTION

END