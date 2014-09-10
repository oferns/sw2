




CREATE view [entity].[Events] with schemabinding as

WITH EventTree (EventId, EventName, StartDate, EndDate, OwnerRoleId, OwnerUserId, ParentEventId, ParentEventName, Depth) AS
(
select 
e.Id EventId
, e.Name EventName
, e.StartDate
, e.EndDate
, e.OwnerRoleId
, e.OwnerUserId
, e.ParentId ParentEventId
, CAST(NULL as nvarchar(256)) ParentEventName
, 1 as Depth
from
dbo.Events e
WHERE e.ParentId IS NULL
UNION ALL
SELECT
e.id EventId
, e.Name EventName
, e.StartDate
, e.EndDate
, et.OwnerRoleId
, et.OwnerUserId
, et.EventId ParentEventId
, et.EventName ParentEventName
, et.Depth + 1
FROM dbo.Events e 
INNER JOIN EventTree et ON e.ParentId = et.EventId

)


SELECT 
e.Id EventId
, e.Name EventName
, e.StartDate
, e.EndDate
, prm.RoleId OwnerRoleId 
, prm.RoleName
, prm.UserId  OwnerUserId 
, prm.UserName
, et.ParentEventId
, et.ParentEventName
, ISNULL(Depth,1) Depth
, ISNULL(COUNT(ISNULL(et.EventId,0)),0) TicketCount
, ISNULL(SUM(ISNULL(ets.Allocation,0)),0) TotalAllocation
FROM dbo.Events e
INNER JOIN
EventTree et on e.Id = et.EventId
inner join id.RoleMembers prm
on e.OwnerRoleId = prm.RoleId
and e.OwnerUserId = prm.UserId
left join dbo.EventTickets ets
on ets.EventId = e.Id

group by
e.Id
, e.Name
, e.StartDate
, e.EndDate
, prm.RoleId 
, prm.RoleName
, prm.UserId
, prm.UserName
, et.ParentEventId
, et.ParentEventName
, Depth