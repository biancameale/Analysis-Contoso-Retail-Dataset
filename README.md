## Análise de Dados

## Descrição do Projeto
Projeto de análise exploratória dos dados de vendas da base Contoso utilizando SQL para identificar padrões de receita, lucro e desempenho dos canais de vendas para tomada de decisões estratégicas.

## Tecnologias utilizadas
- SQL
- SQL Server

## Sobre a base de dados
A base Contoso é um conjunto de dados fictício que simula as operações de uma empresa de varejo chamada Contoso, criado pela Microsoft para fins educacionais e de demonstração. Ela representa os dados de uma empresa de varejo que vende produtos por diferentes canais, permitindo analisar o funcionamento do negócio e o desempenho das vendas.

Link Base de Dados Contoso: https://www.microsoft.com/en-us/download/details.aspx?id=18279

## Tabelas utilizadas
- FactSales: A tabela FactSales é a tabela de fatos responsável por armazenar as informações de vendas realizadas pela empresa. Ela contém os registros das transações e métricas quantitativas relacionadas às vendas.
- DimChannel: A tabela DimChannel é uma tabela de dimensão que contém informações sobre os diferentes canais de venda da empresa.
- DimDate: A tabela DimDate é uma dimensão de tempo utilizada para organizar e analisar as vendas ao longo do tempo.

## Análises realizadas
- Receita por canal de vendas
- Margem de lucro por canal
- Crescimento de receita por ano

## Principais Insights
- O canal Store concentra a maior parte da receita, representando maior volume de vendas.
- As margens de lucro são consistentes (~56%) em todos os canais de vendas.
- O canal de vendas Online foi o único que apresentou crescimento consistente.
- A análise indica uma mudança gradual no comportamento de compras, sugerindo uma oportunidade de fortalecer e investir no canal Online.
