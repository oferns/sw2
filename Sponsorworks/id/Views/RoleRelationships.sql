
create view [id].[RoleRelationships] WITH SCHEMABINDING as
SELECT 
rr.RoleId
, r.Name
, r.[Description]
, r.Active 
, rr.PartnerRoleId
, pr.Name PartnerRoleName
, pr.[Description] PartnerRoleDescription
, pr.Active PartnerRoleActive
FROM 
dbo.RoleRelationships rr
INNER JOIN
dbo.Roles r
ON r.Id = rr.RoleId
INNER JOIN
dbo.Roles pr
ON pr.Id = rr.PartnerRoleId