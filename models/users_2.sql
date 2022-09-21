
WITH landing_users AS (
    SELECT * FROM {{  ref('orders')  }}
)

SELECT 
*
FROM
    landing_users
{% if is_incremental() %}
WHERE _FIVETRAN_SYNCED > (select max(_FIVETRAN_SYNCED) from {{ this }})
{% endif %}