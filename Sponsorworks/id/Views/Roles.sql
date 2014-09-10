




CREATE VIEW [id].[Roles] WITH SCHEMABINDING
AS
SELECT 
r.Id
, r.Name
, r.[Description]
, (r.Active & ISNULL(rm.Active,1)) Active
, COUNT(rm.RoleId) Members
FROM dbo.Roles r
LEFT JOIN dbo.RoleMembers rm 
ON r.Id = rm.RoleId
GROUP BY r.Id
, r.Name
, r.Description
, r.Active 
, rm.Active