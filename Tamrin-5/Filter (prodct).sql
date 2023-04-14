-- فیلتر کردن بر اساس محصولاتی که در انبار موجود هستند:

SELECT * FROM products WHERE product_Status = 'Available';



-- فیلتر کردن بر اساس محدوده قیمتی که در فروشگاه:

SELECT * FROM products WHERE product_Price >= 50 AND product_Price <= 100;



-- فیلتر کردن براساس تعداد محصولاتی که موجود است:

SELECT * FROM products WHERE product_Quantity >= 10;