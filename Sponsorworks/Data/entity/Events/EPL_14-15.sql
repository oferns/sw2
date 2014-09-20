DECLARE @ParentId int
DECLARE @EventId int
DECLARE @VenueId int

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES 
(N'English Premier League (14/15)',5, @StandardCharteredId,null,'2014-08-16 00:00:00','2015-05-24 23:59:00') 

SET @ParentId = SCOPE_IDENTITY()

INSERT dbo.Venues ([Name]) VALUES ('Ashburton Grove (Emirates Stadium)')
SET @VenueId = SCOPE_IDENTITY()

INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Burnley',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Chelsea',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Everton',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Hull City',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Leicester City',5,@StandardCharteredId,@ParentId, '2015-02-10 20:00:00','2015-04-14 22:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Liverpool',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Manchester City',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Manchester United',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Southampton',5,@StandardCharteredId,@ParentId, '2014-12-02 19:45:00','2014-12-25 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Stoke City',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Sunderland',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Swansea City',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Arsenal v West Ham United',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets


INSERT dbo.Venues ([Name]) VALUES ('Villa Park')
SET @VenueId = SCOPE_IDENTITY()

INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 


INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Arsenal',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-09-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Burnley',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Chelsea',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Everton',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Hull City',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Leicester City',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Liverpool',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Manchester City',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Manchester United',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-08-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Southampton',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Stoke City',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Sunderland',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Swansea City',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-03-03 19:45:00','2015-05-14 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Aston Villa v West Ham United',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets


INSERT dbo.Venues ([Name]) VALUES ('Turf Moor')
SET @VenueId = SCOPE_IDENTITY()

INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 


INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Arsenal',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Chelsea',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Everton',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Hull City',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Leicester City',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Liverpool',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Manchester City',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Manchester United',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-12-02 20:00:00','2014-12-26 22:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Southampton',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Stoke City',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Sunderland',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-09-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Swansea City',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Burnley v West Ham United',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Arsenal',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('Stamford Bridge')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Burnley',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Everton',5,@StandardCharteredId,@ParentId, '2015-02-11 19:45:00','2015-04-21 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Hull City',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Leicester City',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-08-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Liverpool',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Manchester City',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Manchester United',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Southampton',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Stoke City',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Sunderland',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Swansea City',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-12-03 19:45:00','2015-01-01 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Chelsea v West Ham United',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('Selhurst Park')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 


INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Arsenal',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-12-02 19:45:00','2014-12-27 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Burnley',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Chelsea',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Everton',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Hull City',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Leicester City',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Liverpool',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Manchester City',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Manchester United',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-02-10 19:45:00','2015-04-15 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Southampton',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Stoke City',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Sunderland',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Swansea City',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Crystal Palace v West Ham United',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-08-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('Goodison Park')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Arsenal',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-08-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Burnley',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Chelsea',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-09-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Hull City',5,@StandardCharteredId,@ParentId, '2014-12-03 19:45:00','2015-01-02 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Leicester City',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Liverpool',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Manchester City',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Manchester United',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Southampton',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Stoke City',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Sunderland',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Swansea City',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Everton v West Ham United',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('The KC Stadium')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Arsenal',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-02-10 20:00:00','2015-04-16 22:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Burnley',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Chelsea',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Everton',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Leicester City',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Liverpool',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Manchester City',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Manchester United',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Southampton',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Stoke City',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-08-31 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Sunderland',5,@StandardCharteredId,@ParentId, '2015-03-03 20:00:00','2015-05-15 22:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Swansea City',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Hull City v West Ham United',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets


INSERT dbo.Venues ([Name]) VALUES ('The King Power Stadium')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Arsenal',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Burnley',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Chelsea',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Everton',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Hull City',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Liverpool',5,@StandardCharteredId,@ParentId, '2014-12-02 19:45:00','2014-12-28 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Manchester City',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Manchester United',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-09-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Southampton',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Stoke City',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Sunderland',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Swansea City',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Leicester City v West Ham United',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets


INSERT dbo.Venues ([Name]) VALUES ('Anfield')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Arsenal',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Burnley',5,@StandardCharteredId,@ParentId, '2015-03-03 19:45:00','2015-05-16 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Chelsea',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Everton',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Hull City',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Leicester City',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Manchester City',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Manchester United',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Southampton',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Stoke City',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Sunderland',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Swansea City',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-02-10 19:45:00','2015-04-17 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Liverpool v West Ham United',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets


INSERT dbo.Venues ([Name]) VALUES ('The City of Manchester Stadium (Ethiad Stadium)')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Arsenal',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Burnley',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Chelsea',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-09-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Everton',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Hull City',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Leicester City',5,@StandardCharteredId,@ParentId, '2015-03-04 19:45:00','2015-05-20 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Liverpool',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-09-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Manchester United',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Southampton',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Stoke City',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Sunderland',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Swansea City',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-06 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester City v West Ham United',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Arsenal',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('Old Trafford')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Burnley',5,@StandardCharteredId,@ParentId, '2015-02-10 19:45:00','2015-04-18 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Chelsea',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Everton',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Hull City',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Leicester City',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Liverpool',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Manchester City',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Southampton',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Stoke City',5,@StandardCharteredId,@ParentId, '2014-12-02 19:45:00','2014-12-29 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Sunderland',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Swansea City',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Manchester United v West Ham United',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('St James'' Park (The Sports Direct Arena)')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Arsenal',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-07 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Burnley',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Chelsea',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Everton',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Hull City',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-10-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Leicester City',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-31 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Liverpool',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Manchester City',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Manchester United',5,@StandardCharteredId,@ParentId, '2015-03-04 19:45:00','2015-05-21 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Southampton',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Stoke City',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Sunderland',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Swansea City',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Newcastle United v West Ham United',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('Loftus Road')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Arsenal',5,@StandardCharteredId,@ParentId, '2015-03-03 19:45:00','2015-05-17 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Burnley',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Chelsea',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Everton',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-08 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Hull City',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Leicester City',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Liverpool',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-11-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Manchester City',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Manchester United',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Southampton',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Stoke City',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-10-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Sunderland',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Swansea City',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Queens Park Rangers v West Ham United',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('St Mary''s Stadium')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Arsenal',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-03-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-16 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Burnley',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Chelsea',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-03-03 19:45:00','2015-05-18 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Everton',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Hull City',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-27 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Leicester City',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Liverpool',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Manchester City',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Manchester United',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Stoke City',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-09 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Sunderland',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-11-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Swansea City',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-31 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-09-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Southampton v West Ham United',5,@StandardCharteredId,@ParentId, '2015-02-10 20:00:00','2015-04-19 22:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets


INSERT dbo.Venues ([Name]) VALUES ('Britannia Stadium')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Arsenal',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Burnley',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Chelsea',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-31 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Everton',5,@StandardCharteredId,@ParentId, '2015-03-04 19:45:00','2015-05-22 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Hull City',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Leicester City',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Liverpool',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Manchester City',5,@StandardCharteredId,@ParentId, '2015-02-11 19:45:00','2015-04-22 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Manchester United',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-03-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-04-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Southampton',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Sunderland',5,@StandardCharteredId,@ParentId, '2015-04-25 15:00:00','2015-07-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Swansea City',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-11-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Stoke City v West Ham United',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('The Stadium Of Light')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Arsenal',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-31 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Burnley',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-04-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Chelsea',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-28 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Everton',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-11-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Hull City',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-10 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Leicester City',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-17 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Liverpool',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Manchester City',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Manchester United',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-09-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Newcastle United',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-04-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Southampton',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Stoke City',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Swansea City',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-05-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Sunderland v West Ham United',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('Liberty Stadium')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Arsenal',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-12-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Burnley',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-09-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Chelsea',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Everton',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-29 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Hull City',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Leicester City',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Liverpool',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-06-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Manchester City',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-18 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Manchester United',5,@StandardCharteredId,@ParentId, '2015-02-21 15:00:00','2015-05-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-12-02 20:00:00','2014-12-30 22:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Southampton',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-10-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Stoke City',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Sunderland',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Swansea City v West Ham United',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('White Hart Lane')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Arsenal',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Aston Villa',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-30 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Burnley',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-02-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Chelsea',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-03-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-12-06 15:00:00','2015-01-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Everton',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Hull City',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-19 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Leicester City',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-11 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Liverpool',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Manchester City',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-31 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Manchester United',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-08-30 15:00:00','2014-09-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Southampton',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Stoke City',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-12-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Sunderland',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v Swansea City',5,@StandardCharteredId,@ParentId, '2015-03-14 15:00:00','2015-05-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-10-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('Tottenham Hotspur v West Ham United',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('The Hawthorns')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Arsenal',5,@StandardCharteredId,@ParentId, '2014-11-29 15:00:00','2014-12-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-12-20 15:00:00','2015-01-23 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Burnley',5,@StandardCharteredId,@ParentId, '2014-10-04 15:00:00','2014-10-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Chelsea',5,@StandardCharteredId,@ParentId, '2015-05-16 15:00:00','2015-08-20 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Crystal Palace',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Everton',5,@StandardCharteredId,@ParentId, '2014-09-20 15:00:00','2014-09-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Hull City',5,@StandardCharteredId,@ParentId, '2015-01-17 15:00:00','2015-03-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Leicester City',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-07-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Liverpool',5,@StandardCharteredId,@ParentId, '2015-05-02 15:00:00','2015-07-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Manchester City',5,@StandardCharteredId,@ParentId, '2014-12-28 15:00:00','2015-02-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Manchester United',5,@StandardCharteredId,@ParentId, '2014-10-25 15:00:00','2014-11-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-11-08 15:00:00','2014-12-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2015-04-11 15:00:00','2015-06-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Southampton',5,@StandardCharteredId,@ParentId, '2015-02-28 15:00:00','2015-05-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Stoke City',5,@StandardCharteredId,@ParentId, '2015-03-21 15:00:00','2015-06-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Sunderland',5,@StandardCharteredId,@ParentId, '2014-08-16 15:00:00','2014-08-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Swansea City',5,@StandardCharteredId,@ParentId, '2015-02-11 19:45:00','2015-04-20 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2015-02-07 15:00:00','2015-04-03 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Bromwich Albion v West Ham United',5,@StandardCharteredId,@ParentId, '2014-12-03 19:45:00','2014-12-31 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets

INSERT dbo.Venues ([Name]) VALUES ('The Boleyn Ground (Upton Park)')
SET @VenueId = SCOPE_IDENTITY()
INSERT [dbo].[VenueOwners] VALUES (@VenueId, 5, @StandardCharteredId) 

INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Arsenal',5,@StandardCharteredId,@ParentId, '2015-01-01 15:00:00','2015-02-22 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Aston Villa',5,@StandardCharteredId,@ParentId, '2014-11-22 15:00:00','2014-12-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Burnley',5,@StandardCharteredId,@ParentId, '2015-05-09 15:00:00','2015-08-01 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Chelsea',5,@StandardCharteredId,@ParentId, '2015-03-04 19:45:00','2015-05-19 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Crystal Palace',5,@StandardCharteredId,@ParentId, '2015-03-03 19:45:00','2015-05-13 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Everton',5,@StandardCharteredId,@ParentId, '2015-05-24 15:00:00','2015-08-21 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Hull City',5,@StandardCharteredId,@ParentId, '2015-01-31 15:00:00','2015-03-24 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Leicester City',5,@StandardCharteredId,@ParentId, '2014-12-26 15:00:00','2015-02-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Liverpool',5,@StandardCharteredId,@ParentId, '2014-09-27 15:00:00','2014-10-05 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Manchester City',5,@StandardCharteredId,@ParentId, '2014-11-01 15:00:00','2014-11-14 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Manchester United',5,@StandardCharteredId,@ParentId, '2015-02-10 19:45:00','2015-04-13 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Newcastle United',5,@StandardCharteredId,@ParentId, '2014-12-02 19:45:00','2014-12-24 21:45:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Queens Park Rangers',5,@StandardCharteredId,@ParentId, '2014-10-18 15:00:00','2014-10-25 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Southampton',5,@StandardCharteredId,@ParentId, '2014-09-13 15:00:00','2014-09-15 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Stoke City',5,@StandardCharteredId,@ParentId, '2015-04-18 15:00:00','2015-07-02 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Sunderland',5,@StandardCharteredId,@ParentId, '2015-04-04 15:00:00','2015-06-12 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Swansea City',5,@StandardCharteredId,@ParentId, '2014-12-13 15:00:00','2015-01-13 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v Tottenham Hotspur',5,@StandardCharteredId,@ParentId, '2014-08-23 15:00:00','2014-08-26 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
INSERT [dbo].[Events] ([Name],[OwnerRoleId],[OwnerUserId],[ParentId], [StartDate], [EndDate]) VALUES
('West Ham United v West Bromwich Albion',5,@StandardCharteredId,@ParentId, '2015-01-10 15:00:00','2015-03-04 17:00:00')
SET @EventId = SCOPE_IDENTITY()
 INSERT [dbo].[EventVenues] (EventId, OwnerRoleId, OwnerUserId, VenueId) VALUES 
(@EventId,5, @StandardCharteredId,@VenueId)
INSERT [dbo].[EventTickets] (EventId, EventOwnerRoleId, EventOwnerUserId, TicketId, Allocation) VALUES 
(@EventId, 5, @StandardCharteredId, 1,100) --Allocation of 100 Standard Tickets
, (@EventId, 5, @StandardCharteredId, 2,50) --Allocation of 50 Premium Tickets
, (@EventId, 5, @StandardCharteredId, 3,15) --Allocation of 15 VIP Tickets
