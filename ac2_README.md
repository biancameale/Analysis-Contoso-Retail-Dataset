## Análise de Dados

## Descrição do Projeto
Projeto de análise exploratória de dados utilizando a base Contoso. A análise tem como objetivo avaliar o desempenho de vendas e lucratividade, considerando a distribuição de receita e lucro por país. A proposta é fornecer uma visão clara de como os resultados estão distribuídos globalmente e identificar possíveis oportunidades de melhoria e crescimento.

## Tecnologias utilizadas
- SQL
- SQL Server

## Sobre a base de dados
A base Contoso é um conjunto de dados fictício que simula as operações de uma empresa de varejo chamada Contoso, criado pela Microsoft para fins educacionais e de demonstração. Ela representa os dados de uma empresa de varejo que vende produtos por diferentes canais, permitindo analisar o funcionamento do negócio e o desempenho das vendas.

Link Base de Dados Contoso: https://www.microsoft.com/en-us/download/details.aspx?id=18279

## Tabelas utilizadas
- FactSales: A tabela FactSales é a tabela de fatos responsável por armazenar as informações de vendas realizadas pela empresa. Ela contém os registros das transações e métricas quantitativas relacionadas às vendas.
- DimStore: A tabela DimStore é uma tabela de dimensão que armazena informações relacionadas às lojas da empresa. Ela contém dados descritivos que permitem identificar e contextualizar onde as vendas foram realizadas.
- DimGeography: A tabela DimGeography é uma tabela de dimensão responsável por armazenar os dados geográficos, como país e região. Ela permite analisar as vendas sob a perspectiva geográfica, sendo essencial para identificar o desempenho por país.

## Análise realizada
Os dados demonstram que a operação apresenta forte concentração de receita em poucos países, com destaque para os Estados Unidos, que representam aproximadamente 56% do faturamento total, seguidos por China e Alemanha, com participações significativamente menores.

Observa-se também que a maior parte dos países possui baixa participação no faturamento total, indicando uma baixa diversificação geográfica.

Além disso, há consistência entre receita e lucro nos principais mercados, sugerindo que os países com maior volume de vendas também são os mais rentáveis para o negócio.

Esse cenário evidencia um modelo de negócio eficiente nos principais mercados, porém altamente concentrado, o que representa um risco estratégico, já que a empresa depende fortemente de um único país para sustentar seus resultados.

## Principais insights:
- Forte concentração de receita nos Estados Unidos (~56%)
- Alta dependência de um único mercado (risco para o negócio)
- Mercados secundários com potencial de crescimento (China e Alemanha)
- Baixa diversificação geográfica

## Planos de ação
- Reduzir a dependência do mercado principal: diminuir a exposição a riscos concentrados nos Estados Unidos
- Expandir mercados secundários: acelerar o crescimento em países como China e Alemanha
- Desenvolver mercados com baixa participação: explorar regiões ainda pouco representativas
- Otimizar estratégias por região: adaptar produtos e abordagem conforme a demanda local
- Implementar monitoramento contínuo: acompanhar KPIs para uma tomada de decisão mais rápida

