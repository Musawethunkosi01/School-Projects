USE [Coffe60DB]
GO

/****** Object:  Trigger [dbo].[UpdateLoyaltyBonus]    Script Date: 2024/04/22 10:26:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--QUESTION 3

CREATE TRIGGER [dbo].[UpdateLoyaltyBonus]
ON [dbo].[Orders]
AFTER UPDATE
AS
BEGIN
	IF UPDATE(IsPaid)
	BEGIN
		DECLARE @OrderId varchar, @CustomerID varchar, @OrderTotal Decimal(18,2), @LoyaltyBonus Decimal(18,2)
		
		SELECT @OrderId = Orders.Order_ID, @OrderTotal = Orders.Order_TotalCost, @CustomerID = Orders.Customer_ID
		FROM Orders;

		SET @LoyaltyBonus = 0.1 * @OrderTotal;

		UPDATE LoyaltyCard
		SET LCard_Value =	LCard_Value + @LoyaltyBonus
		

	END
END
GO

ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [UpdateLoyaltyBonus]
GO

