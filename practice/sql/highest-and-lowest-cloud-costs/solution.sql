




  Select cost_id, amount, svc_name, 'Highest Cost' AS cost_type
  FROM cloud_costs
  WHERE amount = (Select MAX(amount) FROM cloud_costs)

  UNION

  Select cost_id, amount, svc_name, 'Lowest Cost' AS cost_type
  FROM cloud_costs
WHERE amount = (Select MIN(amount) FROM cloud_costs)
