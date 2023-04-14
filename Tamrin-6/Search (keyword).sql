-- جستجوی محصول با استفاده از نام آنها:

SELECT * FROM products WHERE product_Name LIKE '%keyword%';


-- مثال example:

SELECT * FROM products WHERE product_Name LIKE '%هدفون%';
