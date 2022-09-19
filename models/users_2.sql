
WITH landing_users AS (
    SELECT * FROM {{  source('PC_FIVETRAN_DB', 'TB_TESTE')  }}
)

SELECT 
*
FROM
    landing_users
