
SELECT
  orders.*,                                         
  int_orders_items_summary.gross_item_sales_amount, 
  int_orders_items_summary.item_discount_amount   
FROM
  {{ ref('stg_tpch_orders') }} AS orders       
JOIN
  {{ ref('int_orders_items_summary') }} AS int_orders_items_summary
  ON orders.order_key = int_orders_items_summary.order_key
ORDER BY
  order_date