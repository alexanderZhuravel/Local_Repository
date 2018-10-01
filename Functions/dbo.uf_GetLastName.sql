SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[uf_GetLastName] 
(
	@ID INT
)
RETURNS NVARCHAR(100)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @LName NVARCHAR(100)

	-- Add the T-SQL statements to compute the return value here
	SELECT @LName = LName FROM dbo.People where ID = @ID

	-- Return the result of the function
	RETURN @LName

END
GO
