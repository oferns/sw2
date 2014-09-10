
CREATE view [id].[RoleMembers] with schemabinding as
select
rm.UserId
, u.UserName
, rm.RoleId
, r.Name RoleName
, (CAST(rm.RoleId as VARCHAR(2)) + ':' + CAST(rm.UserId as VARCHAR(36))) HashedId
, (u.Active & r.Active & rm.Active) Active
from dbo.RoleMembers rm
inner join dbo.Users u
on rm.UserId = u.Id
inner join dbo.Roles r
on rm.RoleId = r.Id