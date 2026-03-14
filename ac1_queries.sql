-- Análise 1: Receita, lucro e margem por canal de venda

SELECT 
    c.ChannelName,
    SUM(f.SalesAmount) AS ReceitaTotal,
    SUM(f.TotalCost) AS CustoTotal,
    SUM(f.SalesAmount - f.TotalCost) AS LucroLiquido,
    CAST((SUM(f.SalesAmount - f.TotalCost) * 100.0) / SUM(f.SalesAmount) AS DECIMAL(5,2)) AS MargemPercentual
FROM FactSales f
INNER JOIN DimChannel c ON f.ChannelKey = c.ChannelKey
GROUP BY c.ChannelName
ORDER BY ReceitaTotal DESC;


-- Análise 2: Evolução anual de Receita e Lucro por Canal de venda

WITH ReceitaAnoCanal AS (
SELECT 
    d.CalendarYear,
    c.ChannelName,
    SUM(f.SalesAmount) AS ReceitaTotal,
    SUM(f.SalesAmount - f.TotalCost) AS LucroLiquido
FROM FactSales f
INNER JOIN DimChannel c ON f.ChannelKey = c.ChannelKey
INNER JOIN DimDate d    ON f.DateKey = d.DateKey
GROUP BY d.CalendarYear, c.ChannelName )

SELECT
    CalendarYear,
    ChannelName,
    ReceitaTotal,
    LucroLiquido,
CAST(
    (ReceitaTotal - 
	LAG(ReceitaTotal) OVER (PARTITION BY ChannelName ORDER BY CalendarYear)) * 100.0 /
    LAG(ReceitaTotal) OVER (PARTITION BY ChannelName ORDER BY CalendarYear) AS DECIMAL(6,2)) AS CrescimentoReceitaPercentual,
CAST((LucroLiquido - 
	LAG(LucroLiquido) OVER (PARTITION BY ChannelName ORDER BY CalendarYear)) * 100.0 /
    LAG(LucroLiquido) OVER (PARTITION BY ChannelName ORDER BY CalendarYear) AS DECIMAL(6,2)) AS CrescimentoLucroPercentual
FROM ReceitaAnoCanal
ORDER BY ChannelName, CalendarYear;
