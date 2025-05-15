SELECT
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  o.Quantity * p.Price AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM
  `robots_sales_dataset.orders` o
JOIN
  `robots_sales_dataset.products` p
ON
  o.ProdNumber = p.ProdNumber
JOIN
  `robots_sales_dataset.product_category` pc
ON
  p.Category = pc.CategoryID
JOIN
  `robots_sales_dataset.customers` c
ON
  o.CustomerID = c.CustomerID
ORDER BY
  order_date;