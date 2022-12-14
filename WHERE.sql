-- Databricks notebook source
SELECT * 
FROM silver_olist.PEDIDO

WHERE descSituacao = 'shipped'



-- limit 100

-- leia-se: selecione todas as colunas da tabela silve_olist.pedido onde os pedidos são entregues

-- COMMAND ----------

SELECT * 
FROM silver_olist.PEDIDO

WHERE descSituacao = 'shipped'
AND year(dtPedido) =  '2018'

-- leia-se: selecione todas as colunas da tabela, filtrando os pedidos shipped de 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.PEDIDO

WHERE (descSituacao = 'shipped' or descSituacao = 'canceled')
AND year(dtPedido) =  '2018'

-- COMMAND ----------

SELECT * 
FROM silver_olist.PEDIDO

WHERE descSituacao in ('shipped','canceled')
AND year(dtPedido) =  '2018'

-- COMMAND ----------

SELECT * ,
      datediff(dtEstimativaEntrega, dtAprovado)
FROM silver_olist.PEDIDO

WHERE descSituacao in ('shipped','canceled')
AND year(dtPedido) =  '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- COMMAND ----------



