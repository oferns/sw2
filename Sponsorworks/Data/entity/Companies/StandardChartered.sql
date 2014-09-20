

PRINT 'Creating user/role record for Standard Chartered...'

EXEC dbo.AddRoleMember 
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, 'Standard Chartered' -- UserName
	, 5 -- RoleId : Company
	, 1 -- Active
	, @ReturnUserId output -- UserId for Standard Chartered 

SET @StandardCharteredId = @ReturnUserId;

PRINT 'Created Standard Chartered user ' + CAST(@StandardCharteredId as varchar(36))

PRINT 'Creating Admin Romelu Lukaku for Standard Chartered...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Romelu Lukaku' -- UserName
	, 3 -- RoleId : Admin
	, @StandardCharteredId -- OwnerUserId
	, 5 -- OwnerRoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Standard Chartered Admin

PRINT 'Created Standard Chartered Admin user Romelu Lukaku... ' + CAST(@ReturnUserId as varchar(36))


PRINT 'Creating User Eden Hazard for Standard Chartered...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Eden Hazard' -- UserName
	, 6 -- RoleId : User
	, @StandardCharteredId -- OwnerUserId
	, 5 -- OwnerRoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Standard Chartered Admin

PRINT 'Created Standard Chartered User Eden Hazard... ' + CAST(@ReturnUserId as varchar(36))

PRINT 'Creating User Matt Munroe for Standard Chartered...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Matt Munroe' -- UserName
	, 6 -- RoleId : User
	, @StandardCharteredId -- OwnerUserId
	, 5 -- OwnerRoleId : Company
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Standard Chartered Admin

PRINT 'Created Standard Chartered User Matt Munroe... ' + CAST(@ReturnUserId as varchar(36))