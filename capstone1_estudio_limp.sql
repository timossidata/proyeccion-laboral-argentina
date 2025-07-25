CREATE TABLE IF NOT EXISTS capstone.16_educacion
AS
WITH estudio AS (
    SELECT
        *,
        ROW_NUMBER() OVER(PARTITION BY CODUSU ORDER BY NIVEL_ED DESC) as rn
    FROM
        `disco-parsec-461018-f6.capstone.2016_individual`
)
SELECT 
    CODUSU,
    NIVEL_ED,
    rn
FROM 
    estudio
WHERE 
    rn = 1;
    

--esta consulta se queda con el maximo nivel alcanzado de padres por hogar