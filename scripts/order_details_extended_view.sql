CREATE VIEW order_detail_extended_view AS
-- 物品訂單詳細資訊
SELECT
	a.orderdate,
	a.orderid,
	b.productid,
	b.productname,
	ROUND(( b.unitprice ):: NUMERIC, 2 ) AS unitprice,
	c.quantity,
	ROUND(( c.discount ):: NUMERIC, 2 ) AS discount,
	ROUND((( b.unitprice * c.quantity * ( 1 - c.discount ))):: NUMERIC, 2 ) AS extendedprice
FROM
	orders a,
	products b,
	order_details c
WHERE
	a.orderid = c.orderid
	AND c.productid = b.productid
