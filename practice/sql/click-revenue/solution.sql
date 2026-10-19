WITH cte AS (
    SELECT 
        ad_campaign,
        SUM(revenue) OVER(PARTITION BY ad_campaign) AS click_revenue
    FROM ad_impressions
)

Select 
    DISTINCT
    ad_campaign,
    click_revenue
FROM cte 
WHERE click_revenue > 5
ORDER BY click_revenue DESC
