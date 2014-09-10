
CREATE FUNCTION id.GetBaseClaim 
(
	@SubDomain nvarchar(256)
	, 	@Domain nvarchar(256)
	, 	@TopLevelDomain nvarchar(256)

)
RETURNS nvarchar(768) WITH SCHEMABINDING
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result nvarchar(768)
	
	IF LEN(@SubDomain) > 0
		SET @Result = @SubDomain + '.'
	ELSE
		SET @Result = ''


		SET @Result = @Result + @Domain

	IF LEN(@TopLevelDomain) > 0
	BEGIN
		SET @Result = @Result + '.' + @TopLevelDomain 
	END


	-- Return the result of the function
	RETURN @Result 

END