CREATE PROCEDURE dbo.SearchProducts
    @ProductName NVARCHAR(100) = NULL,
    @Size NVARCHAR(50) = NULL,
    @Price DECIMAL = NULL,
    @MfgDate DATETIME = NULL,
    @Category NVARCHAR(50) = NULL,
    @Conjunction NVARCHAR(3) = 'AND'
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT *
    FROM tbl_Product
    WHERE
        (@ProductName IS NULL OR ProductName LIKE '%' + @ProductName + '%')
        AND (@Size IS NULL OR Size = @Size)
        AND (@Price IS NULL OR Price = @Price)
        AND (@MfgDate IS NULL OR MfgDate = @MfgDate)
        AND (@Category IS NULL OR Category = @Category)
END
