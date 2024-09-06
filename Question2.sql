USE [Coffe60DB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateOrderTotal]    Script Date: 2024/04/22 10:24:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--QUESTION 2
CREATE PROCEDURE [dbo].[UpdateOrderTotal](@OrderID varchar)
AS
BEGIN
	DECLARE @NewTotal Decimal(18,2);

	SET @NewTotal = dbo.CalculateOrderTotal(@OrderID);

	UPDATE Orders
	SET  Order_TotalCost = @NewTotal
	WHERE Order_ID = @OrderID;
END;
GO

