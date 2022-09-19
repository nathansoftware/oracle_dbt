
WITH landing_users AS (
    SELECT * FROM {{  source('PC_FIVETRAN_DB', 'LANDING_USERS')  }}
)

SELECT 
*
FROM
    landing_users
