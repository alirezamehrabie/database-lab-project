-- ایندکس کردن فیلدهای جدول محصولات طبق فیلد موجودیت:

ALTER TABLE products
ADD INDEX idx_product_status (product_Status);



-- ایندکس کردن فیلدهای جدول محصولات طبق فیلد نام کالا:

ALTER TABLE products
ADD INDEX idx_product_name (product_Name);
