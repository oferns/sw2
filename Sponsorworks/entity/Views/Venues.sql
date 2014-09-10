CREATE view entity.Venues with schemabinding as 
select
v.Id VenueId
, v.Name
, COUNT(DISTINCT rm.HashedId) OwnerCount
, COUNT(ISNULL(ev.EventId,0)) EventCount
from
dbo.VenueOwners vo
inner join dbo.Venues v
on vo.VenueId = v.Id
inner join id.RoleMembers rm
on vo.OwnerRoleId = rm.RoleId
and vo.OwnerUserId = rm.UserId
left join dbo.EventVenues ev
on v.Id = ev.VenueId
GROUP BY
v.Id
, v.Name