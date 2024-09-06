USE [Coffe60DB]
GO

/****** Object:  UserDefinedFunction [dbo].[CalculateOrderTotal]    Script Date: 2024/04/22 10:26:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--QUESTION 2
CREATE FUNCTION [dbo].[CalculateOrderTotal](@OrderID varchar)
RETURNS Decimal(18,2)
AS
BEGIN 
	DECLARE @Total Decimal(18,2)

	SELECT @Total = SUM(Order_TotalCost)
	FROM Orders
	Where Orders.Order_ID = @OrderID;

	RETURN @Total;

END
GO

