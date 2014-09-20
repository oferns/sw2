

PRINT 'Creating user/role record for Synergy as a company...'

EXEC dbo.AddRoleMember 
	 @SynergyId -- We already have this from the reseller creation
	, 'Synergy' -- UserName
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId output -- UserId for Synergy 

SET @SynergyId = @ReturnUserId;

PRINT 'Created Synergy user ' + CAST(@SynergyId as varchar(36))

PRINT 'Creating Admin Brian Murphy for Synergy...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Brian Murphy' -- UserName
	, 3 -- RoleId : Admin
	, @SynergyId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Synergy Admin

PRINT 'Created Synergy Admin user Brian Murphy... ' + CAST(@ReturnUserId as varchar(36))


PRINT 'Creating User Tom Simpson for Synergy...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Tom Simpson' -- UserName
	, 6 -- RoleId : User
	, @SynergyId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Synergy Admin

PRINT 'Created Synergy User Tom Simpson... ' + CAST(@ReturnUserId as varchar(36))

PRINT 'Creating User Ravi Chandrhi for Synergy...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Ravi Chandrhi' -- UserName
	, 6 -- RoleId : User
	, @SynergyId -- OwnerUserId
	, 5 --RoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Synergy Admin

PRINT 'Created Synergy User Ravi Chandrhi... ' + CAST(@ReturnUserId as varchar(36))