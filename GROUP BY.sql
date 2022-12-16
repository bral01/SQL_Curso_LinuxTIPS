-- Databricks notebook source
-- terceira 

SELECT 
      descUF,
      count (distinct idClienteUnico) as qtClienteEstado
      
    FROM silver_olist.cliente
    
    group by descUF
    order by qtClienteEstado DESC
    LIMIT 1

-- COMMAND ----------


