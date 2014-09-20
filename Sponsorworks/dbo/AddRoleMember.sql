CREATE PROCEDURE [dbo].[AddRoleMember] 
	@UserId uniqueidentifier
	, @UserName nvarchar(256)
	, @RoleId tinyint
	, @Active bit
	, @ReturnUserId uniqueidentifier OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;
	
	SET @ReturnUserId = COALESCE(@UserId,NEWID())
			
	BEGIN TRY		
		INSERT INTO dbo.Users VALUES (@ReturnUserId, @UserName, @Active)
	END TRY
	BEGIN CATCH
		IF @@ERROR <> 2627 -- This will be thrown if the userid already exists (PK Violation) so we can swallow it
		THROW;
	END CATCH

	INSERT INTO dbo.RoleMembers VALUES (@RoleId, @ReturnUserId, @Active)

END

GO
