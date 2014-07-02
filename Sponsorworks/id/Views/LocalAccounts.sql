
CREATE VIEW [id].[LocalAccounts] WITH SCHEMABINDING
AS
SELECT la.OwnerRoleId, r.Name, la.OwnerUserId, u.UserName, la.[Password], la.Active ActiveAccount, u.Active ActiveUser
FROM     dbo.LocalAccounts la
INNER JOIN dbo.Users u 
ON la.OwnerUserId = u.Id 
INNER JOIN dbo.Roles r 
ON la.OwnerRoleId = r.Id