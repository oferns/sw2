

create view [entity].[Domains] with schemabinding as
SELECT 
d.Id DomainId
, ISNULL(id.GetBaseClaim(d.Subdomain, d.Domain,d.TopLevelDomain),'') BaseClaim
, d.HttpPort
, d.HttpsPort
, d.Cookie
, d.OwnerRoleId
, rm.RoleName OwnerRole
, d.OwnerUserId
, rm.UserName OwnerUser
FROM 
dbo.Domains d
INNER JOIN id.RoleMembers rm
ON d.OwnerRoleId = rm.RoleId
AND d.OwnerUserId = rm.UserId