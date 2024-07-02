



-----customer-----
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    ca.address_id,
    a.street_number,
    a.street_name,
    a.city,
    co.country_id,
    co.country_name,
    ca.status_id,
    ads.address_status
FROM
    gravity_books.dbo.customer c
LEFT JOIN
    gravity_books.dbo.customer_address ca ON c.customer_id = ca.customer_id
LEFT JOIN
    gravity_books.dbo.address a ON ca.address_id = a.address_id
LEFT JOIN
    gravity_books.dbo.country co ON a.country_id = co.country_id
LEFT JOIN
    gravity_books.dbo.address_status ads ON ca.status_id = ads.status_id;
 