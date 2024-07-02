


-----order------

SELECT
    co.order_id,
    co.order_date,
    oh.history_id,
    oh.status_date,
    os.status_id,
    os.status_value,
    sm.method_id,
    sm.method_name,
    sm.cost

FROM

   gravity_books.dbo.cust_order co
LEFT JOIN
     gravity_books.dbo.shipping_method sm ON co.shipping_method_id = sm.method_id
LEFT JOIN

    gravity_books.dbo.order_history oh ON co.order_id = oh.order_id

LEFT JOIN

     gravity_books.dbo.order_status os ON oh.status_id = os.status_id;
