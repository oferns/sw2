/* 
Sql to create the Sysadmin user
*/

PRINT 'Creating user/role record for Sysadmin...'
EXEC dbo.AddRoleMember NULL, 'Sysadmin', 1, 1, @ReturnUserId OUTPUT
SET @SysadminId = @ReturnUserId
PRINT 'Created Sysadmin user ' + CAST(@SysadminId as varchar(36))

PRINT 'Creating a Local Account for the Sysadmin user/role...'
INSERT [dbo].[Accounts] ([EmailAddress], [OwnerRoleId], [OwnerUserId], [PasswordHash], [EmailVerified], [SecurityStamp], [Active]) VALUES (
	'test@mba.co.uk' -- EmailAddress
	, 1 -- OwnerRoeleId : Sysadmin
	, @ReturnUserId -- OwnerUserId 
	, N'AGlm5R4e666j4HqaNBq34yrae8odbpfYU7/VCKlUsm3ZF05AXICP0L/wXoIjDcQWKg==' -- PasswordHash : CUbew0rks*
	, 1 -- EmailVerified
	, NEWID() -- SecurityStamp
	, 1 -- Active
)
