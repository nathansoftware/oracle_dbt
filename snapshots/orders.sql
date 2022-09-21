{%  snapshot orders %}

{{
    config (
        target_database='PC_FIVETRAN_DB',
        target_schema='ORACLE_FIVETRAN',
        unique_key='id',
        strategy='timestamp',
        updated_at='_FIVETRAN_SYNCED',
    )

}}


            select * from PC_FIVETRAN_DB.ORACLE_FIVETRAN.USERS

{% endsnapshot %}