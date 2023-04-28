--- Add Owner Product for Table Products

ALTER TABLE `products`
ADD COLUMN `product_Owner` VARCHAR(255) NOT NULL;
