create view entity.TicketAllocations with schemabinding as
select
ta.Id AllocationId
, t.Name Ticket
, e.Name EventName
, erm.UserName EventOwnerUserName
, erm.RoleName EventOwnerRole
, prm.UserName PatronUserName
, prm.RoleName RequestorRole
, ta.AllocationStatusId
, s.Name AllocationStatus
, tr.Amount RequestedAmount
, tr.EventOwnerRoleId
, tr.EventOwnerUserId
, ta.PatronRoleId
, ta.PatronUserId
from
dbo.TicketAllocations ta
INNER JOIN dbo.TicketRequests tr
on tr.Id = ta.TicketRequestId
INNER JOIN 
id.RoleMembers prm
ON prm.RoleId = ta.PatronRoleId
AND prm.UserId = ta.PatronUserId
INNER JOIN 
id.RoleMembers erm
ON erm.RoleId = tr.EventOwnerRoleId
AND erm.UserId = tr.EventOwnerUserId
INNER JOIN 
id.RoleMembers arm
ON arm.RoleId = ta.AllocatorRoleId
AND arm.UserId = ta.AllocatorUserId
INNER JOIN 
dbo.Tickets t
on tr.TicketId = t.Id
INNER JOIN dbo.[Events] e
ON e.Id = tr.EventId
INNER JOIN dbo.AllocationStatus s
ON ta.AllocationStatusId = s.Id