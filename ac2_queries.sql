-- Análise de Participação de Receita e Lucro por País

SELECT 
    g.RegionCountryName AS pais,
    SUM(s.SalesAmount) AS receita_pais,
    SUM(s.SalesAmount - s.TotalCost) AS lucro_pais,
    SUM(SUM(s.SalesAmount)) OVER() AS receita_total_empresa,
    SUM(SUM(s.SalesAmount - s.TotalCost)) OVER() AS lucro_total_empresa,
    (SUM(s.SalesAmount) * 100.0 / SUM(SUM(s.SalesAmount)) OVER()) AS perc_receita,
    (SUM(s.SalesAmount - s.TotalCost) * 100.0 / SUM(SUM(s.SalesAmount - s.TotalCost)) OVER()) AS perc_lucro
FROM FactSales s
JOIN DimStore st ON s.StoreKey = st.StoreKey
JOIN DimGeography g ON st.GeographyKey = g.GeographyKey
GROUP BY g.RegionCountryName
ORDER BY receita_pais DESC;