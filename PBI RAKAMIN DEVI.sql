select "Marital Status" as marital_status,
		round(avg(age), 2) as avg_age
from customer 
where "Marital Status" !=''
group by marital_status
order by avg_age asc

SELECT gender, AVG(age) AS rata_rata_umur
FROM customer
GROUP BY gender;

SELECT st.storename as store_name, SUM(tr.qty) AS total_quantity
FROM "Transaction" as tr
join store as st on tr.storeid = st.storeid
GROUP BY storename 
ORDER BY total_quantity DESC
LIMIT 1;

SELECT pr."Product Name" as product_name, SUM(tr.totalamount) AS totalamount1
FROM product as pr
join "Transaction" as tr on pr.productid = tr.productid
GROUP BY product_name
ORDER BY totalamount1 DESC
LIMIT 1;

