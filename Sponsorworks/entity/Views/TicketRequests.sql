
create view [entity].[TicketRequests] with schemabinding as 
select 
tr.Id RequestId
, t.Name Ticket
, e.Name EventName
, erm.UserName EventOwnerUserName
, erm.RoleName EventOwnerRole
, rrm.UserName RequestorUserName
, rrm.RoleName RequestorRole
, tr.Amount
, tr.EventOwnerRoleId
, tr.EventOwnerUserId
, tr.RequestorRoleId
, tr.RequestorUserId
, ISNULL(CAST((CASE WHEN ta.Id IS NULL THEN 1 ELSE 0 END) as bit),0) IsAllocated
from
[dbo].[TicketRequests] tr
INNER JOIN 
id.RoleMembers rrm
ON rrm.RoleId = tr.RequestorRoleId
AND rrm.UserId = tr.RequestorUserId
INNER JOIN 
id.RoleMembers erm
ON erm.RoleId = tr.EventOwnerRoleId
AND erm.UserId = tr.EventOwnerUserId
INNER JOIN 
dbo.Tickets t
on tr.TicketId = t.Id
INNER JOIN dbo.[Events] e
ON e.Id = tr.EventId
LEFT JOIN dbo.TicketAllocations ta
ON ta.TicketRequestId = tr.Id