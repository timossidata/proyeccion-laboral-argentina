CREATE TABLE IF NOT EXISTS capstone.edufam_16
AS
SELECT
  NIVEL_ED,
  ANO4,
  REGION,
  AGLOMERADO,
  IX_TOT,
  IX_MEN10,
  IX_MAYEQ10,
  ITF
  
FROM
  `disco-parsec-461018-f6.capstone.16_educacion` AS e

RIGHT JOIN
  `disco-parsec-461018-f6.capstone.16_familia` AS f 
  ON e.CODUSU=f.CODUSU