-- -----------------------------------------------------
-- Data for table `pizza`.`provinces`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`provinces` (`province_id`, `name`) VALUES
(1, 'Barcelona'),
(2, 'Girona'),
(3, 'Tarragona'),
(4, 'Lleida');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`localities`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`localities` (`locality_id`, `province_id`, `name`) VALUES
(1, 1, 'Barcelona'),
(2, 1, 'Badalona'),
(3, 1, 'L Hospitalet de Llobregat'),
(4, 1, 'Terrassa'),
(5, 2, 'Girona'),
(6, 2, 'Figueres'),
(7, 3, 'Tarragona'),
(8, 3, 'Reus'),
(9, 4, 'Lleida'),
(10, 1, 'Sabadell');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`addresses`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`addresses` (`address_id`, `locality_id`, `full_address`, `postal_code`) VALUES
(1, 1, 'Carrer de Mallorca 120', '08036'),
(2, 1, 'Carrer de Sants 45', '08014'),
(3, 1, 'Carrer de Pujades 88', '08005'),
(4, 2, 'Carrer del Mar 22', '08911'),
(5, 2, 'Avinguda de Martí Pujol 101', '08912'),
(6, 3, 'Carrer Major 17', '08901'),
(7, 4, 'Rambla d Egara 90', '08221'),
(8, 5, 'Carrer Nou 31', '17001'),
(9, 6, 'Carrer de la Jonquera 14', '17600'),
(10, 7, 'Rambla Nova 56', '43003'),
(11, 8, 'Avinguda de Prat de la Riba 9', '43201'),
(12, 9, 'Carrer Major 63', '25007'),
(13, 10, 'Via de Massague 28', '08202'),
(14, 1, 'Carrer de Balmes 210', '08006'),
(15, 2, 'Carrer de la Creu 8', '08912');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`customers`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`customers` (`customer_id`, `address_id`, `first_name`, `last_name`, `phone`) VALUES
(1, 1, 'Laura', 'Martínez', '+34611000001'),
(2, 4, 'Marc', 'Soler', '+34611000002'),
(3, 2, 'Núria', 'Vidal', '+34611000003'),
(4, 6, 'Jordi', 'Ferrer', '+34611000004'),
(5, 5, 'Clara', 'Pujol', '+34611000005'),
(6, 8, 'Pau', 'Serra', '+34611000006'),
(7, 3, 'Marta', 'Ribas', '+34611000007'),
(8, 10, 'Arnau', 'Costa', '+34611000008'),
(9, 11, 'Irene', 'Navarro', '+34611000009'),
(10, 12, 'Oriol', 'Prat', '+34611000010'),
(11, 7, 'Aina', 'Casals', '+34611000011'),
(12, 14, 'Pol', 'Domènech', '+34611000012'),
(13, 9, 'Sílvia', 'Molina', '+34611000013'),
(14, 13, 'Adrià', 'Font', '+34611000014'),
(15, 15, 'Emma', 'García', '+34611000015');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`restaurant`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`restaurant` (`restaurant_id`, `address_id`, `name`) VALUES
(1, 1, 'Pizza Barri Eixample'),
(2, 4, 'Pizza Badalona Centre'),
(3, 8, 'Pizza Girona'),
(4, 10, 'Pizza Tarragona'),
(5, 12, 'Pizza Lleida'),
(6, 7, 'Pizza Terrassa');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`employees`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`employees` (`employee_id`, `restaurant_id`, `first_name`, `last_name`, `phone`, `nif`, `role`) VALUES
(1, 1, 'Daniel', 'Roca', '+34622000001', '48200001A', 'front-kitchen'),
(2, 1, 'Sergi', 'Munt', '+34622000002', '48200002B', 'delivery'),
(3, 2, 'Carla', 'Vila', '+34622000003', '48200003C', 'front-kitchen'),
(4, 2, 'Ivan', 'Rey', '+34622000004', '48200004D', 'delivery'),
(5, 3, 'Helena', 'Bosch', '+34622000005', '48200005E', 'front-kitchen'),
(6, 3, 'Roger', 'Gil', '+34622000006', '48200006F', 'delivery'),
(7, 4, 'Berta', 'López', '+34622000007', '48200007G', 'front-kitchen'),
(8, 4, 'Adrià', 'Mas', '+34622000008', '48200008H', 'delivery'),
(9, 5, 'Mireia', 'Sanz', '+34622000009', '48200009J', 'front-kitchen'),
(10, 5, 'Nil', 'Pons', '+34622000010', '48200010K', 'delivery'),
(11, 6, 'Laia', 'Valls', '+34622000011', '48200011L', 'front-kitchen'),
(12, 6, 'Eric', 'Sala', '+34622000012', '48200012M', 'delivery');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`categories`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`categories` (`category_id`, `name`) VALUES
(1, 'Pizzas clásicas'),
(2, 'Pizzas especiales'),
(3, 'Pizzas vegetarianas'),
(4, 'Entrantes'),
(5, 'Bebidas'),
(6, 'Postres');

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`products`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`products` (`product_id`, `category_id`, `name`, `description`, `image`, `price`) VALUES
(1, 1, 'Margarita', 'Tomate, mozzarella y albahaca', 'margarita.jpg', 8.50),
(2, 1, 'Prosciutto', 'Tomate, mozzarella y jamón', 'prosciutto.jpg', 9.50),
(3, 1, 'Diavola', 'Tomate, mozzarella y pepperoni', 'diavola.jpg', 10.50),
(4, 1, 'Quattro Formaggi', 'Mezcla de cuatro quesos', 'quattro_formaggi.jpg', 11.50),
(5, 2, 'Barbacoa', 'Pollo, bacon y salsa barbacoa', 'barbacoa.jpg', 12.50),
(6, 2, 'Carbonara', 'Nata, bacon, huevo y parmesano', 'carbonara.jpg', 12.00),
(7, 2, 'Marinera', 'Atún, gambas y cebolla', 'marinera.jpg', 13.00),
(8, 3, 'Verdure', 'Calabacín, pimiento y champiñón', 'verdure.jpg', 10.00),
(9, 3, 'Mediterránea', 'Tomate, aceitunas y queso feta', 'mediterranea.jpg', 10.50),
(10, 4, 'Pan de ajo', 'Pan tostado con ajo y perejil', 'pan_ajo.jpg', 4.00),
(11, 4, 'Alitas', 'Seis alitas de pollo al horno', 'alitas.jpg', 6.50),
(12, 5, 'Agua', 'Agua mineral 500 ml', 'agua.jpg', 1.80),
(13, 5, 'Refresco', 'Refresco lata 330 ml', 'refresco.jpg', 2.20),
(14, 5, 'Cerveza sin alcohol', 'Cerveza 0,0 botella', 'cerveza_00.jpg', 2.50),
(15, 6, 'Tiramisú', 'Postre italiano de café', 'tiramisu.jpg', 4.50),
(16, 6, 'Cheesecake', 'Tarta cremosa de queso', 'cheesecake.jpg', 4.80);

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`orders`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`orders` (`order_id`, `restaurant_id`, `customer_id`, `time`, `type`, `total_price`) VALUES
(1, 1, 1, '2026-10-01 13:10:00', 'house', 10.30),
(2, 1, 3, '2026-10-01 20:15:00', 'take-away', 18.00),
(3, 2, 2, '2026-10-02 19:05:00', 'delivery', 19.00),
(4, 2, 5, '2026-10-03 20:30:00', 'delivery', 25.00),
(5, 3, 6, '2026-10-04 13:25:00', 'house', 16.00),
(6, 3, 8, '2026-10-05 21:10:00', 'take-away', 15.30),
(7, 4, 9, '2026-10-06 14:00:00', 'house', 17.50),
(8, 4, 11, '2026-10-07 21:20:00', 'delivery', 23.00),
(9, 5, 10, '2026-10-08 20:05:00', 'delivery', 17.80),
(10, 5, 13, '2026-10-09 13:40:00', 'take-away', 14.50),
(11, 6, 4, '2026-10-10 19:45:00', 'delivery', 22.50),
(12, 6, 14, '2026-10-11 20:10:00', 'house', 14.50),
(13, 1, 7, '2026-10-12 12:55:00', 'delivery', 21.00),
(14, 2, 12, '2026-10-13 20:35:00', 'take-away', 13.50),
(15, 3, 15, '2026-10-14 19:25:00', 'delivery', 26.50),
(16, 4, 1, '2026-10-15 13:15:00', 'house', 12.50),
(17, 5, 3, '2026-10-16 21:00:00', 'delivery', 20.50),
(18, 6, 5, '2026-10-17 20:40:00', 'take-away', 18.50),
(19, 1, 9, '2026-10-18 14:05:00', 'delivery', 24.00),
(20, 2, 6, '2026-10-19 19:50:00', 'house', 16.50);

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`order_items`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`order_items` (`order_items_id`, `product_id`, `order_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 12, 1, 1),
(3, 3, 2, 1),
(4, 10, 2, 1),
(5, 13, 2, 1),
(6, 2, 3, 1),
(7, 5, 3, 1),
(8, 12, 3, 1),
(9, 5, 4, 1),
(10, 7, 4, 1),
(11, 13, 4, 1),
(12, 4, 5, 1),
(13, 8, 5, 1),
(14, 15, 5, 1),
(15, 3, 6, 1),
(16, 9, 6, 1),
(17, 12, 6, 1),
(18, 2, 7, 1),
(19, 8, 7, 1),
(20, 16, 7, 1),
(21, 6, 8, 1),
(22, 7, 8, 1),
(23, 13, 8, 1),
(24, 1, 9, 1),
(25, 5, 9, 1),
(26, 15, 9, 1),
(27, 4, 10, 1),
(28, 10, 10, 1),
(29, 12, 10, 1),
(30, 5, 11, 1),
(31, 11, 11, 1),
(32, 13, 11, 1),
(33, 3, 12, 1),
(34, 9, 12, 1),
(35, 15, 12, 1),
(36, 7, 13, 1),
(37, 8, 13, 1),
(38, 13, 13, 1),
(39, 2, 14, 1),
(40, 10, 14, 1),
(41, 12, 14, 1),
(42, 5, 15, 1),
(43, 6, 15, 1),
(44, 16, 15, 1),
(45, 1, 16, 1),
(46, 11, 16, 1),
(47, 13, 16, 1),
(48, 4, 17, 1),
(49, 5, 17, 1),
(50, 15, 17, 1),
(51, 3, 18, 1),
(52, 10, 18, 1),
(53, 12, 18, 1),
(54, 6, 19, 1),
(55, 7, 19, 1),
(56, 16, 19, 1),
(57, 2, 20, 1),
(58, 8, 20, 1),
(59, 13, 20, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `pizza`.`order_deliveries`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizza`;

INSERT INTO `pizza`.`order_deliveries` (`order_delivery_id`, `order_id`, `employee_delivery_id`, `delivery_time`) VALUES
(1, 3, 4, '2026-10-02 19:45:00'),
(2, 4, 4, '2026-10-03 21:10:00'),
(3, 8, 8, '2026-10-07 21:55:00'),
(4, 9, 10, '2026-10-08 20:45:00'),
(5, 11, 12, '2026-10-10 20:30:00'),
(6, 13, 2, '2026-10-12 13:35:00'),
(7, 15, 6, '2026-10-14 20:05:00'),
(8, 17, 10, '2026-10-16 21:40:00'),
(9, 19, 2, '2026-10-18 14:50:00');

COMMIT;
