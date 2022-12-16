-- Databricks notebook source
SELECT descUF,
  count (idVendedor) AS qtVendedorUF
  
FROM silver_olist.vendedor

WHERE descUF in ('SP', 'MG', 'RJ', 'ES')

GROUP BY descUF

HAVING COUNT (idVendedor) >= 100

ORDER BY qtVendedorUF DESC


-- where vem sempre entre o from e o group by


-- COMMAND ----------



