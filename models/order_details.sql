select
    date_date
    , orders_id
    , SUM(revenue) as total_revenue
    , SUM(quantity) as total_quantity
    , COUNT(*) as nb_products
FROM {{ ref("stg_raw__sales") }}
GROUP BY date_date, orders_id