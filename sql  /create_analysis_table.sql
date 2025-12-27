CREATE OR REPLACE TABLE kimia_farma.tabel_analisa AS SELECT
t.transaction_id, t.date, k.branch_name, k.kota, k.provinsi, 
k.rating AS rating_cabang, t.customer_name, p.product_id, p.product_name, p.price as actual_price, t.rating as rating_transaksi,

CASE
  WHEN p.price <= 50000 THEN 0.10
  WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
  WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
  WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
  ELSE 0.30
END AS persentase_gross_laba,

p.price-(p.price * t.discount_percentage / 100) AS nett_sales,

(p.price - (p.price * t.discount_percentage / 100)) *
CASE
  WHEN p.price <= 50000 THEN 0.10
  WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
  WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
  WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
  ELSE 0.30
END AS nett_profit,

FROM `kimia_farma.kf_final_transaction` AS t INNER JOIN
`kimia_farma.kf_kantor_cabang` AS k ON  t.branch_id = k.branch_id 
INNER JOIN `kimia_farma.kf_product` AS p ON t.product_id = p.product_id;
