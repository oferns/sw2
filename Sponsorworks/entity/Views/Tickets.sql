create view entity.Tickets with schemabinding as 
select 
et.EventId
, et.TicketId
, e.Name EventName
, t.Name TicketName
, et.Allocation
, e.OwnerRoleId
, rm.RoleName
, e.OwnerUserId
, rm.UserName
from dbo.EventTickets et
inner join dbo.Events e
on et.EventId = e.Id
inner join dbo.Tickets t
on et.TicketId = t.Id
inner join id.RoleMembers rm
on e.OwnerRoleId = rm.RoleId
and e.OwnerUserId = rm.UserId