USE [Coffe60DB]
GO

/****** Object:  StoredProcedure [dbo].[GenerateLoyaltyCradsB]    Script Date: 2024/04/22 10:24:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--QUESTION 1 b)

CREATE PROCEDURE [dbo].[GenerateLoyaltyCradsB]
	@CustomerIDs varchar(50)
AS
BEGIN
	DECLARE @CustomerID varchar(50)
	SELECT @CustomerID = value
	FROM string_split(@CustomerIDs, ',')

END
GO

