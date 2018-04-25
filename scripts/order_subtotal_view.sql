--訂單單號小記
CREATE VIEW order_subtotal_view AS
  SELECT
    a.shippeddate,
    a.orderid,
    b.subtotal,
    date_part('year' :: text, a.shippeddate) AS year
  FROM (orders a
    JOIN (SELECT
            order_details.orderid,
            sum(round((((order_details.unitprice * (order_details.quantity) :: double precision) *
                        ((1) :: double precision - order_details.discount))) :: numeric, 2)) AS subtotal
          FROM order_details
          GROUP BY order_details.orderid
          ORDER BY order_details.orderid) b ON ((a.orderid = b.orderid)))
  WHERE (a.shippeddate IS NOT NULL)
  ORDER BY a.shippeddate;
