

PRINT 'Creating user/role record for Acme...'

EXEC dbo.AddRoleMember 
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, 'Acme' -- UserName
	, 2 -- RoleId : Reseller
	, 1 -- Active
	, @ReturnUserId output -- UserId for Acme 

SET @AcmeId = @ReturnUserId;

PRINT 'Created Acme user ' + CAST(@AcmeId as varchar(36))

PRINT 'Creating Admin Micheal Bradbury for Acme...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Micheal Bradbury' -- UserName
	, 3 -- RoleId : Admin
	, @AcmeId -- OwnerUserId
	, 2 -- OwnerRoleId : Reseller
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Acme Admin

PRINT 'Created Acme Admin user Micheal Bradbury... ' + CAST(@ReturnUserId as varchar(36))


PRINT 'Creating User Mauroune Fellani for Acme...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Mauroune Fellani' -- UserName
	, 6 -- RoleId : User
	, @AcmeId -- OwnerUserId
	, 2 -- OwnerRoleId : Reseller
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Acme Admin

PRINT 'Created Acme User Mauroune Fellani... ' + CAST(@ReturnUserId as varchar(36))

PRINT 'Creating User Mark Bolan for Acme...'

EXEC entity.AddNewMember	
	 NULL -- Let the sp create the id, we could pass it but we dont need it and we have to declare a variable and set it, we cant just use newid()
	, N'Mark Bolan' -- UserName
	, 6 -- RoleId : User
	, @AcmeId -- OwnerUserId
	, 2 -- OwnerRoleId : Reseller
	, 1 -- Active
	, @ReturnUserId OUTPUT -- UserId for Acme Admin

PRINT 'Created Acme User Mark Bolani... ' + CAST(@ReturnUserId as varchar(36))