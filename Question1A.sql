USE [Coffe60DB]
GO

/****** Object:  StoredProcedure [dbo].[GenerateLoyaltyCardA]    Script Date: 2024/04/22 10:23:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--QUESTION 1 a)
CREATE PROCEDURE [dbo].[GenerateLoyaltyCardA]
	@CustomerIDs varchar(50)
AS
BEGIN
	DECLARE @Position int
	DECLARE @CustomerID varchar(50)
	
	SET @Position = CHARINDEX(',', @CustomerID)
	WHILE @Position > 0
	BEGIN
		SET @CustomerID = SUBSTRING(@CustomerIDs, 1, @Position -1)
		SET @Position = CHARINDEX(',', @CustomerIDs)

	END
	IF LEN(@CustomerIDs) > 0
	BEGIN
		SET @CustomerID = @CustomerIDs
	END
END
GO

