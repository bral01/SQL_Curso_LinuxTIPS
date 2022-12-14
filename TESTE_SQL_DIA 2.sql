-- Databricks notebook source
  SELECT * FROM silver_olist.pedido
    

-- leia-se: selecione tudo da tabela silver_list










-- COMMAND ----------

SELECT idPedido,

FROM silver_olist.pedido

-- leia-se: Selecione a coluna "idpedido" da tabela "silver_olist"

-- COMMAND ----------

SELECT idPedido,
        descSituacao

FROM silver_olist.pedido

-- leia-se: Selecione as colunas "idpedido" e "descSituacao" da tabela "silver_olist"

-- COMMAND ----------

SELECT idPedido,
        descSituacao

FROM silver_olist.pedido

limit 5

-- leia-se: Selecione as colunas "idpedido" e "descSituacao" da tabela "silver_olist" com o numero de 5 linhas

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtEntregue) as qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 5

-- COMMAND ----------


