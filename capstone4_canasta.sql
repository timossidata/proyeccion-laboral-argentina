CREATE TABLE IF NOT EXISTS capstone.24_cbf
AS

SELECT
  *,

CASE 
    WHEN IX_MEN10 = 0 THEN 797283 
    WHEN IX_MEN10 = 1 THEN 1001466  
    WHEN IX_MEN10 > 1 THEN 1053322  
    ELSE 0
  END AS CBF

FROM
  `disco-parsec-461018-f6.capstone.edufam_24`

