-- -----------------------------------------------------
-- Data for table `spotify`.`users`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`users`
(`user_id`, `email`, `password`, `date_birth`, `sex`, `country`, `postal_code`, `type`)
VALUES
(1, 'ana.martin@example.com', 'demo_hash_001', '1998-04-12', 'female', 'Spain', '08001', 'premium'),
(2, 'marc.garcia@example.com', 'demo_hash_002', '1995-09-23', 'male', 'Spain', '08002', 'free'),
(3, 'lucia.fernandez@example.com', 'demo_hash_003', '2001-01-17', 'female', 'Spain', '08003', 'premium'),
(4, 'david.lopez@example.com', 'demo_hash_004', '1992-06-08', 'male', 'Mexico', '06000', 'premium'),
(5, 'sofia.rodriguez@example.com', 'demo_hash_005', '1999-11-30', 'female', 'Argentina', 'C1000', 'free'),
(6, 'alex.smith@example.com', 'demo_hash_006', '1997-02-14', 'male', 'United Kingdom', 'SW1A', 'premium'),
(7, 'noa.cohen@example.com', 'demo_hash_007', '2000-07-05', 'female', 'Israel', '61000', 'free'),
(8, 'leo.martins@example.com', 'demo_hash_008', '1994-12-19', 'male', 'Portugal', '1000-001', 'premium'),
(9, 'emma.johnson@example.com', 'demo_hash_009', '2002-03-26', 'female', 'United States', '10001', 'free'),
(10, 'hugo.perez@example.com', 'demo_hash_010', '1996-08-11', 'male', 'Spain', '08010', 'premium');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`payments_info`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`payments_info` (`payment_info_id`, `type`)
VALUES
(1, 'credit_card'),
(2, 'credit_card'),
(3, 'credit_card'),
(4, 'credit_card'),
(5, 'credit_card'),
(6, 'paypal'),
(7, 'paypal'),
(8, 'paypal'),
(9, NULL);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`artists`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`artists` (`artist_id`, `name`)
VALUES
(1, 'Luna Rivera'),
(2, 'The Midnight Signals'),
(3, 'Kai Moreno'),
(4, 'Velvet Avenue'),
(5, 'Nora Blue'),
(6, 'Atlas Bloom'),
(7, 'Milo & The Waves'),
(8, 'Sienna Park'),
(9, 'Neon Orchard'),
(10, 'Oliver North');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`playlists`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`playlists`
(`playlist_id`, `name`, `count_recordings`, `created_at`, `update_at`)
VALUES
(1, 'Morning Focus', 3, '2026-01-05 08:30:00', '2026-01-05 08:30:00'),
(2, 'Late Night Drive', 3, '2026-01-12 21:15:00', '2026-01-12 21:15:00'),
(3, 'Indie Discoveries', 2, '2026-02-02 17:45:00', '2026-02-02 17:45:00'),
(4, 'Weekend Energy', 2, '2026-02-15 10:00:00', '2026-02-15 10:00:00'),
(5, 'Acoustic Calm', 2, '2026-03-01 19:20:00', '2026-03-01 19:20:00'),
(6, 'Electronic Pulse', 2, '2026-03-08 13:10:00', '2026-03-08 13:10:00'),
(7, 'Classic Favourites', 2, '2026-03-18 16:05:00', '2026-03-18 16:05:00'),
(8, 'Road Trip Mix', 2, '2026-04-04 09:00:00', '2026-04-04 09:00:00');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`credit_cards`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`credit_cards`
(`payment_info_id`, `card_number`, `expiry_month`, `expiry_year`, `security_code`)
VALUES
(1, '4111111111111111', 11, 2028, 123),
(2, '5555555555554444', 7, 2029, 456),
(3, '4000000000000002', 3, 2027, 789),
(4, '4242424242424242', 9, 2030, 321),
(5, '4000000000000069', 12, 2028, 654);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`paypals`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`paypals` (`payment_info_id`, `email`)
VALUES
(6, 'paypal.demo6@example.com'),
(7, 'paypal.demo7@example.com'),
(8, 'paypal.demo8@example.com');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`subscription`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`subscription`
(`subscription_id`, `user_id`, `payment_info_id`, `date_initial`, `date_renewal`)
VALUES
(1, 1, 1, '2026-01-05 10:00:00', '2026-11-05 10:00:00'),
(2, 3, 2, '2026-01-20 12:30:00', '2026-11-20 12:30:00'),
(3, 4, 6, '2026-02-01 09:15:00', '2026-11-01 09:15:00'),
(4, 6, 3, '2026-02-12 18:45:00', '2026-11-12 18:45:00'),
(5, 8, 7, '2026-03-03 14:00:00', '2026-11-03 14:00:00'),
(6, 10, 4, '2026-03-15 08:20:00', '2026-11-15 08:20:00'),
(7, 2, 8, '2026-04-01 11:10:00', '2026-11-01 11:10:00');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`albums`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`albums`
(`album_id`, `artist_id`, `title`, `duration`, `reproductions`)
VALUES
(1, 1, 'Paper Moons', 2340, 1250000),
(2, 2, 'Signals After Dark', 2680, 980000),
(3, 3, 'Northern Lights', 2210, 760000),
(4, 4, 'City in Bloom', 2495, 1430000),
(5, 5, 'Blue Hour', 2050, 620000),
(6, 6, 'Wild Geometry', 2740, 890000),
(7, 7, 'Saltwater Stories', 2310, 540000),
(8, 8, 'Soft Focus', 2160, 710000),
(9, 9, 'Electric Garden', 2590, 1120000),
(10, 10, 'Open Roads', 2420, 830000);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`recordings`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`recordings`
(`recording_id`, `album_id`, `title`, `date_publish`, `thumbnail`)
VALUES
(1, 1, 'First Light', '2025-01-10 00:00:00', 'first_light.jpg'),
(2, 1, 'Paper Moons', '2025-01-10 00:00:00', 'paper_moons.jpg'),
(3, 2, 'Signal Fire', '2025-02-14 00:00:00', 'signal_fire.jpg'),
(4, 2, 'After Midnight', '2025-02-14 00:00:00', 'after_midnight.jpg'),
(5, 3, 'Northbound', '2025-03-08 00:00:00', 'northbound.jpg'),
(6, 4, 'City in Bloom', '2025-04-21 00:00:00', 'city_in_bloom.jpg'),
(7, 4, 'Side Streets', '2025-04-21 00:00:00', 'side_streets.jpg'),
(8, 5, 'Blue Hour', '2025-05-02 00:00:00', 'blue_hour.jpg'),
(9, 6, 'Wild Geometry', '2025-06-17 00:00:00', 'wild_geometry.jpg'),
(10, 7, 'Saltwater', '2025-07-11 00:00:00', 'saltwater.jpg'),
(11, 8, 'Soft Focus', '2025-08-05 00:00:00', 'soft_focus.jpg'),
(12, 9, 'Electric Garden', '2025-09-19 00:00:00', 'electric_garden.jpg'),
(13, 10, 'Open Roads', '2025-10-03 00:00:00', 'open_roads.jpg'),
(14, 3, 'Winter Lines', '2025-03-08 00:00:00', 'winter_lines.jpg'),
(15, 6, 'Shape of Things', '2025-06-17 00:00:00', 'shape_of_things.jpg');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`payments`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`payments`
(`payments_id`, `subscription_id`, `payment_date`, `total_price`)
VALUES
(1, 1, '2026-02-05 10:00:00', 10.99),
(2, 1, '2026-03-05 10:00:00', 10.99),
(3, 2, '2026-02-20 12:30:00', 10.99),
(4, 2, '2026-03-20 12:30:00', 10.99),
(5, 3, '2026-03-01 09:15:00', 10.99),
(6, 4, '2026-03-12 18:45:00', 10.99),
(7, 5, '2026-04-03 14:00:00', 10.99),
(8, 6, '2026-04-15 08:20:00', 10.99),
(9, 7, '2026-05-01 11:10:00', 10.99);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`playlist_users`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`playlist_users`
(`playlist_user_id`, `playlist_id`, `user_id`, `type`)
VALUES
(1, 1, 1, 'admin'),
(2, 1, 2, 'add'),
(3, 2, 3, 'admin'),
(4, 2, 4, 'add'),
(5, 3, 5, 'admin'),
(6, 3, 6, 'add'),
(7, 4, 7, 'admin'),
(8, 4, 8, 'add'),
(9, 5, 9, 'admin'),
(10, 5, 10, 'add'),
(11, 6, 1, 'admin'),
(12, 6, 3, 'add'),
(13, 7, 4, 'admin'),
(14, 7, 6, 'add'),
(15, 8, 8, 'admin'),
(16, 8, 10, 'add');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`playlist_items`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`playlist_items`
(`playlist_item_id`, `playlist_user_id`, `recording_id`, `update_at`)
VALUES
(1, 1, 1, '2026-04-01 08:00:00'),
(2, 1, 2, '2026-04-01 08:05:00'),
(3, 1, 3, '2026-04-01 08:10:00'),
(4, 2, 4, '2026-04-02 09:00:00'),
(5, 3, 5, '2026-04-03 21:00:00'),
(6, 3, 6, '2026-04-03 21:05:00'),
(7, 4, 7, '2026-04-04 22:00:00'),
(8, 5, 8, '2026-04-05 18:00:00'),
(9, 5, 9, '2026-04-05 18:05:00'),
(10, 6, 10, '2026-04-06 19:00:00'),
(11, 7, 11, '2026-04-07 10:00:00'),
(12, 8, 12, '2026-04-08 11:00:00'),
(13, 9, 13, '2026-04-09 12:00:00'),
(14, 10, 14, '2026-04-10 13:00:00'),
(15, 11, 15, '2026-04-11 14:00:00'),
(16, 12, 1, '2026-04-12 15:00:00'),
(17, 13, 3, '2026-04-13 16:00:00'),
(18, 14, 5, '2026-04-14 17:00:00'),
(19, 15, 7, '2026-04-15 18:00:00'),
(20, 16, 9, '2026-04-16 19:00:00');

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`followers`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`followers`
(`followers_id`, `artist_artist_id`, `users_user_id`)
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 3),
(5, 5, 4),
(6, 6, 5),
(7, 7, 6),
(8, 8, 7),
(9, 9, 8),
(10, 10, 9),
(11, 1, 10),
(12, 3, 4),
(13, 5, 6),
(14, 7, 8),
(15, 9, 10);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`artists_similars`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`artists_similars` (`artist_id`, `similar_artist_id`)
VALUES
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 1);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`users_favourite_recordings`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`users_favourite_recordings`
(`users_favourite_recordings_id`, `user_id`, `recording_id`)
VALUES
(1, 1, 2),
(2, 1, 6),
(3, 2, 3),
(4, 2, 5),
(5, 3, 1),
(6, 3, 8),
(7, 4, 4),
(8, 4, 9),
(9, 5, 7),
(10, 5, 10),
(11, 6, 11),
(12, 6, 13),
(13, 7, 12),
(14, 8, 14),
(15, 9, 15),
(16, 10, 1);

COMMIT;

-- -----------------------------------------------------
-- Data for table `spotify`.`users_favourite_albums`
-- -----------------------------------------------------
START TRANSACTION;
USE `spotify`;

INSERT INTO `spotify`.`users_favourite_albums`
(`users_favourite_recordings_id`, `user_id`, `album_id`)
VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 2),
(4, 2, 3),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 1),
(12, 6, 3),
(13, 7, 4),
(14, 8, 6),
(15, 9, 8),
(16, 10, 2);

COMMIT;
