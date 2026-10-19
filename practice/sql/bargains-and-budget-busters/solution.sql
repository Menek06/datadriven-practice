WITH combined AS (
    Select 
        region,
        svc_name,
        amount
    FROM cloud_costs
    
    UNION ALL
        
    Select
        region,
        svc_name,
        amount
    FROM cost_allocs
),

ranked AS (
    Select
        region,
        svc_name,
        amount,
        FIRST_VALUE(svc_name) OVER(
            PARTITION BY region
            ORDER BY amount DESC, svc_name
            ) AS most_expensive,
        FIRST_VALUE(svc_name) OVER(
            PARTITION BY region
            ORDER BY amount ASC, svc_name
            ) as cheapest
    FROM combined
)
    
Select DISTINCT
    region,
    most_expensive,
    cheapest
FROM ranked
