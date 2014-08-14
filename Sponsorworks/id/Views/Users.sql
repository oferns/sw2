

CREATE VIEW [id].[Users] WITH SCHEMABINDING
AS
SELECT 
	la.OwnerUserId Id
	, u.UserName
	, la.EmailAddress
	, la.OwnerRoleId RoleId
	, r.Name RoleName
	, la.PasswordHash
	, la.EmailVerified
	, la.SecurityStamp
	, ISNULL(CAST(tfa.OwnerRoleId as bit),0) TwoFactorEnabled	
	, ISNULL(CAST(lal.OwnerRoleId as bit),0) LockoutEnabled
	, ISNULL(lal.FailedAccessCount,0) FailedAccessCount
	, lal.UnlockDate
	, (u.Active & la.Active & r.Active) Active
FROM dbo.Accounts la
INNER JOIN dbo.Roles r
ON la.OwnerRoleId = r.Id 
INNER JOIN dbo.Users u
ON la.OwnerUserId = u.Id
LEFT JOIN dbo.AccountLockOuts lal
on la.OwnerRoleId = lal.OwnerRoleId
AND la.OwnerUserId = lal.OwnerUserId
LEFT JOIN dbo.TwoFactorAccounts tfa
on la.OwnerRoleId = tfa.OwnerRoleId
AND la.OwnerUserId = tfa.OwnerUserId