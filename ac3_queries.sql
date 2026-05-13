-- Análise Desempenho Produtos

WITH ProdutoPerformance AS (
SELECT
    p.ProductName,
    pc.ProductCategoryName,
    ps.ProductSubcategoryName,
    SUM(f.SalesQuantity) AS QuantidadeVendida,
    SUM(f.SalesAmount) AS ReceitaTotal,
    SUM(f.TotalCost) AS CustoTotal,
    SUM(f.SalesAmount - f.TotalCost) AS LucroTotal
FROM FactSales f
INNER JOIN DimProduct p ON f.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
INNER JOIN DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY 
    p.ProductName, pc.ProductCategoryName, ps.ProductSubcategoryName)
SELECT
    ProductName,
    ProductCategoryName,
    ProductSubcategoryName,
    QuantidadeVendida,
    ReceitaTotal,
    CustoTotal,
    LucroTotal,
CAST((LucroTotal * 100.0) / ReceitaTotal AS DECIMAL(6,2)) AS MargemPercentual,
RANK() OVER (ORDER BY ReceitaTotal DESC) AS RankingReceita,
RANK() OVER (ORDER BY LucroTotal DESC) AS RankingLucro,
CAST(ReceitaTotal * 100.0 / SUM(ReceitaTotal) OVER () AS DECIMAL(6,2)) AS ParticipacaoReceitaPercentual
FROM ProdutoPerformance
ORDER BY ReceitaTotal DESC;