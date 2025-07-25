CREATE TABLE IF NOT EXISTS capstone.final_16
AS

SELECT
  *,

CASE 
    WHEN ITF-CBF < 0 THEN "debajo" 
    WHEN ITF-CBF >= 0 THEN "sobre"  
    ELSE ""
  END AS linea_pobreza

FROM
  `disco-parsec-461018-f6.capstone.cbf_16`
