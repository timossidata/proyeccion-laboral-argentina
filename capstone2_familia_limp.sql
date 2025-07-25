CREATE TABLE IF NOT EXISTS capstone.16_familia
AS
SELECT
  CODUSU,
  ANO4,
  REGION,
  AGLOMERADO,
  IX_TOT,
  IX_MEN10,
  IX_MAYEQ10,
  ITF
FROM
  `disco-parsec-461018-f6.capstone.2016_hogar`
WHERE
  ITF>0;

--esta tabla se queda con la informacion del hogar que interesa