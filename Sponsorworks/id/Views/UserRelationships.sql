create view id.UserRelationships as

select 
ur.RoleId
, rm.RoleName
, ur.UserId
, rm.UserName
, ur.PartnerRoleId
, prm.RoleName PartnerRoleName
, ur.PartnerUserId
, prm.UserName PartnerUserName
, (rm.Active & prm.Active & ur.Active) Active
from
dbo.UserRelationships ur
inner join 
id.RoleMembers rm 
on ur.RoleId = rm.RoleId
AND ur.UserId = rm.UserId
inner join
id.RoleMembers prm 
on ur.PartnerRoleId = prm.RoleId
AND ur.PartnerUserId = prm.UserId