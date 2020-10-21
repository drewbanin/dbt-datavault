with customers_unioned as (

    select
        'LLC' as data_source,
        id as id,
        name,
        created_at

    from quickbooks_llc.customers
    where deleted_at is null

    union all

    select
        'INC' as data_source,
        id as id,
        name,
        created_at

    from quickbooks_inc.customers
    where deleted_at is null

)

select *
from customers_unioned