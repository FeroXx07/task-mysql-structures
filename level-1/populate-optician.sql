-- -----------------------------------------------------
-- Data for table `optician`.`opticians`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`opticians` (`optician_id`, `name`) VALUES (1, 'Cul d\'Ampolla');

INSERT INTO `optician`.`opticians` (`optician_id`, `name`) VALUES
(2, 'Vista Clara'),
(3, 'Òptica Mediterrània');

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`addresses`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`addresses` (`address_id`, `country`, `city`, `postal_code`, `street`, `number`, `level`, `apartment`) VALUES (1, 'Spain', 'Barcelona', '08018', 'Carrer de Roc Boronat', '116, 126', '0', '0');
INSERT INTO `optician`.`addresses` (`address_id`, `country`, `city`, `postal_code`, `street`, `number`, `level`, `apartment`) VALUES (2, 'Spain', 'Barcelona', '08005', 'Carrer de Pujades', '156', '0', '0');
INSERT INTO `optician`.`addresses` (`address_id`, `country`, `city`, `postal_code`, `street`, `number`, `level`, `apartment`) VALUES (3, 'Spain', 'Barcelona', '08012', 'Carrer de les Carolines', '20-26', '0', '0');

INSERT INTO `optician`.`addresses` (`address_id`, `country`, `city`, `postal_code`, `street`, `number`, `level`, `apartment`) VALUES
(4, 'Spain', 'Barcelona', '08007', 'Rambla de Catalunya', '42', '0', NULL),
(5, 'Spain', 'Badalona', '08912', 'Carrer de Mar', '18', '0', NULL),
(6, 'Spain', 'Barcelona', '08029', 'Carrer de Numància', '71', '1', '2'),
(7, 'Spain', 'L''Hospitalet de Llobregat', '08902', 'Avinguda del Carrilet', '205', '0', NULL),
(8, 'Spain', 'Barcelona', '08025', 'Carrer de Provença', '388', '0', NULL),
(9, 'Spain', 'Santa Coloma de Gramenet', '08921', 'Avinguda de la Generalitat', '56', '0', NULL),
(10, 'Spain', 'Barcelona', '08003', 'Carrer de la Princesa', '24', '0', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`providers`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`providers` (`provider_id`, `optician_id`, `address_id`, `name`, `fax`, `phone`, `nif`) VALUES (1, 1, 2, 'Lens Infinite Limited', '123456789', '+34666222111', '01234567A');

INSERT INTO `optician`.`providers` (`provider_id`, `optician_id`, `address_id`, `name`, `fax`, `phone`, `nif`) VALUES
(2, 1, 4, 'Iberia Optical Supplies', '+34930000102', '+34930000102', 'B12345678'),
(3, 2, 5, 'Mediterrània Lens Distribució', '+34930000103', '+34930000103', 'B23456789'),
(4, 3, 7, 'Visió Professional SL', '+34930000104', '+34930000104', 'B34567890'),
(5, 2, 9, 'Òptica Components BCN', '+34930000105', '+34930000105', 'B45678901');

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`brand`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`brand` (`brand_id`, `provider_id`, `name`) VALUES
(1, 1, 'RayBan'),
(2, 1, 'EyeWorks'),
(3, 2, 'Nordic Vision'),
(4, 2, 'Urban Focus'),
(5, 3, 'Mediterrània'),
(6, 3, 'ClearView'),
(7, 4, 'Solare'),
(8, 5, 'Nova Optics');

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`lenses`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`lenses` (`lenses_id`, `brand_id`, `graduation_left`, `graduation_right`, `frame_material`, `frame_color`, `lens_color_left`, `lens_color_right`, `price`) VALUES (1, 1, '+2.25', '+2.10', 'floating', 'red', 'gray', 'gray', 80);
INSERT INTO `optician`.`lenses` (`lenses_id`, `brand_id`, `graduation_left`, `graduation_right`, `frame_material`, `frame_color`, `lens_color_left`, `lens_color_right`, `price`) VALUES (2, 2, '+2.25', '+2.10', 'metal', 'green', 'white', 'white', 100);

INSERT INTO `optician`.`lenses` (`lenses_id`, `brand_id`, `graduation_left`, `graduation_right`, `frame_material`, `frame_color`, `lens_color_left`, `lens_color_right`, `price`) VALUES
(3, 1, '-1.25', '-1.00', 'metal', 'black', 'clear', 'clear', 89.90),
(4, 1, '+0.75', '+1.00', 'paste', 'tortoiseshell', 'clear', 'clear', 119.50),
(5, 2, '-2.00', '-1.75', 'floating', 'blue', 'gray', 'gray', 105.00),
(6, 3, '-0.50', '-0.75', 'metal', 'silver', 'clear', 'clear', 94.90),
(7, 3, '+1.50', '+1.25', 'paste', 'brown', 'clear', 'clear', 129.00),
(8, 4, '-3.00', '-2.75', 'metal', 'gold', 'clear', 'clear', 149.90),
(9, 4, '+0.25', '+0.50', 'floating', 'transparent', 'clear', 'clear', 79.90),
(10, 5, '-1.75', '-1.50', 'paste', 'black', 'green', 'green', 99.00),
(11, 5, '+2.00', '+1.75', 'metal', 'bronze', 'brown', 'brown', 139.90),
(12, 6, '-0.75', '-1.00', 'floating', 'navy', 'clear', 'clear', 84.50),
(13, 7, '0.00', '0.00', 'metal', 'black', 'gray', 'gray', 69.90),
(14, 8, '-2.25', '-2.00', 'paste', 'red', 'clear', 'clear', 114.00);

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`persons`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`persons` (`person_id`, `address_id`, `name`, `phone`, `email`) VALUES (1, 2, 'Miguel Lozano', '+34625142845', 'm.lozano@yahool.com');
INSERT INTO `optician`.`persons` (`person_id`, `address_id`, `name`, `phone`, `email`) VALUES (2, 3, 'Juan Pablo', '+34628455142', 'j.pablo@gmail.com');
INSERT INTO `optician`.`persons` (`person_id`, `address_id`, `name`, `phone`, `email`) VALUES (3, 1, 'Lucia Hernandez', '+34612345678', 'l.hern@hotmail.com');

INSERT INTO `optician`.`persons` (`person_id`, `address_id`, `name`, `phone`, `email`) VALUES
(4, 4, 'Marta Soler', '+34600000004', 'marta.soler@example.com'),
(5, 5, 'Pau Ferrer', '+34600000005', 'pau.ferrer@example.com'),
(6, 6, 'Núria Costa', '+34600000006', 'nuria.costa@example.com'),
(7, 7, 'Marc Vidal', '+34600000007', 'marc.vidal@example.com'),
(8, 8, 'Clara Roca', '+34600000008', 'clara.roca@example.com'),
(9, 9, 'Eric Navarro', '+34600000009', 'eric.navarro@example.com'),
(10, 10, 'Laia Serra', '+34600000010', 'laia.serra@example.com'),
(11, 4, 'Anna Puig', '+34600000011', 'anna.puig@example.com'),
(12, 5, 'David Moreno', '+34600000012', 'david.moreno@example.com'),
(13, 6, 'Irene Gil', '+34600000013', 'irene.gil@example.com'),
(14, 8, 'Pol Martín', '+34600000014', 'pol.martin@example.com'),
(15, 10, 'Sofia Romero', '+34600000015', 'sofia.romero@example.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`customers`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`customers` (`customer_id`, `person_id`, `recommended_by_id`, `registered_at`) VALUES (1, 2, NULL, '2026-10-03 16:22:11');

INSERT INTO `optician`.`customers` (`customer_id`, `person_id`, `recommended_by_id`, `registered_at`) VALUES
(2, 4, 1, '2026-01-12 10:15:00'),
(3, 5, 1, '2026-02-03 12:40:00'),
(4, 6, 2, '2026-02-18 09:30:00'),
(5, 7, NULL, '2026-03-05 16:05:00'),
(6, 8, 3, '2026-03-21 11:20:00'),
(7, 9, 2, '2026-04-02 14:10:00'),
(8, 10, NULL, '2026-04-19 17:25:00'),
(9, 11, 5, '2026-05-08 10:00:00'),
(10, 12, 4, '2026-05-27 13:45:00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`employee`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`employee` (`employee_id`, `person_id`, `optician_id`) VALUES (1, 3, 1);

INSERT INTO `optician`.`employee` (`employee_id`, `person_id`, `optician_id`) VALUES
(2, 4, 1),
(3, 7, 1),
(4, 8, 2),
(5, 10, 2),
(6, 11, 3),
(7, 13, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `optician`.`ticket`
-- -----------------------------------------------------
START TRANSACTION;
USE `optician`;
INSERT INTO `optician`.`ticket` (`ticket_id`, `lenses_id`, `customer_id`, `employee_id`, `created_at`) VALUES (1, 1, 1, 1, DEFAULT);
INSERT INTO `optician`.`ticket` (`ticket_id`, `lenses_id`, `customer_id`, `employee_id`, `created_at`) VALUES (2, 2, 1, 1, DEFAULT);

INSERT INTO `optician`.`ticket` (`ticket_id`, `lenses_id`, `customer_id`, `employee_id`, `created_at`) VALUES
(3, 3, 2, 2, '2026-01-12 10:45:00'),
(4, 4, 3, 1, '2026-02-03 13:10:00'),
(5, 5, 4, 2, '2026-02-18 10:05:00'),
(6, 6, 5, 3, '2026-03-05 16:30:00'),
(7, 7, 6, 4, '2026-03-21 11:55:00'),
(8, 8, 7, 3, '2026-04-02 14:45:00'),
(9, 9, 8, 5, '2026-04-19 17:50:00'),
(10, 10, 9, 6, '2026-05-08 10:35:00'),
(11, 11, 10, 7, '2026-05-27 14:15:00'),
(12, 12, 1, 1, '2026-06-04 09:40:00'),
(13, 13, 2, 2, '2026-06-18 12:25:00'),
(14, 14, 3, 3, '2026-07-02 15:05:00'),
(15, 3, 4, 4, '2026-07-15 10:20:00'),
(16, 5, 5, 5, '2026-07-29 16:10:00'),
(17, 7, 6, 6, '2026-08-11 11:30:00'),
(18, 9, 7, 7, '2026-08-25 13:55:00'),
(19, 11, 8, 1, '2026-09-07 17:15:00'),
(20, 12, 9, 2, '2026-09-19 09:50:00'),
(21, 14, 10, 4, '2026-10-02 14:05:00'),
(22, 4, 1, 5, '2026-10-12 12:00:00');

COMMIT;