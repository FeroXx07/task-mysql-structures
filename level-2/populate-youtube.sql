-- -----------------------------------------------------
-- Data for table `youtube`.`users`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`users` (`user_id`, `email`, `password`, `user_name`, `date_birth`, `sex`, `country`, `postal_code`) VALUES
(1, 'ana.martin@example.com', 'demo_hash_001', 'AnaMartin', '1995-03-12', 'Female', 'Spain', '08001'),
(2, 'marc.soler@example.com', 'demo_hash_002', 'MarcSoler', '1992-07-24', 'Male', 'Spain', '08911'),
(3, 'lucia.garcia@example.com', 'demo_hash_003', 'LuciaG', '2000-11-05', 'Female', 'Mexico', '03100'),
(4, 'pablo.ruiz@example.com', 'demo_hash_004', 'PabloRuiz', '1988-01-18', 'Male', 'Argentina', 'C1001'),
(5, 'emma.wilson@example.com', 'demo_hash_005', 'EmmaW', '1998-09-30', 'Female', 'United Kingdom', 'SW1A1AA'),
(6, 'youssef.ali@example.com', 'demo_hash_006', 'YoussefAli', '1994-05-09', 'Male', 'Morocco', '20000'),
(7, 'clara.pons@example.com', 'demo_hash_007', 'ClaraPons', '2001-02-14', 'Female', 'Spain', '17001'),
(8, 'diego.lopez@example.com', 'demo_hash_008', 'DiegoLopez', '1990-12-02', 'Male', 'Chile', '8320000'),
(9, 'nora.khan@example.com', 'demo_hash_009', 'NoraKhan', '1997-06-21', 'Female', 'India', '110001'),
(10, 'eric.font@example.com', 'demo_hash_010', 'EricFont', '1993-08-16', 'Male', 'Spain', '25001');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`videos`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`videos` (`video_id`, `title`, `description`, `file_name`, `width`, `height`, `duration`, `thumbnail`, `num_reproductions`, `num_likes`, `num_dislikes`) VALUES
(1, 'Easy Homemade Pizza', 'A simple pizza recipe', 'easy_pizza.mp4', 1920, 1080, 642, 'easy_pizza.jpg', 12450, 840, 12),
(2, 'Barcelona Walking Tour', 'Walk through old town', 'barcelona_walk.mp4', 1920, 1080, 1180, 'barcelona_walk.jpg', 34200, 2100, 34),
(3, 'Learn SQL Joins', 'SQL joins explained', 'sql_joins.mp4', 1280, 720, 905, 'sql_joins.jpg', 18700, 1450, 18),
(4, 'Beginner Guitar Lesson', 'Play your first chords', 'guitar_lesson.mp4', 1920, 1080, 760, 'guitar_lesson.jpg', 9800, 720, 9),
(5, 'Five Minute Workout', 'Quick home workout', 'quick_workout.mp4', 1280, 720, 330, 'quick_workout.jpg', 25300, 1900, 41),
(6, 'Mediterranean Pasta', 'Fresh pasta recipe', 'med_pasta.mp4', 1920, 1080, 515, 'med_pasta.jpg', 15100, 1100, 15),
(7, 'Python Basics', 'Variables and loops', 'python_basics.mp4', 1920, 1080, 1320, 'python_basics.jpg', 40500, 3200, 28),
(8, 'Mountain Sunrise', 'Sunrise timelapse', 'mountain_sunrise.mp4', 3840, 2160, 245, 'mountain_sunrise.jpg', 8900, 650, 6),
(9, 'Budget Travel Tips', 'Travel on a budget', 'travel_tips.mp4', 1280, 720, 700, 'travel_tips.jpg', 22100, 1670, 22),
(10, 'Home Coffee Guide', 'Make better coffee', 'coffee_guide.mp4', 1920, 1080, 480, 'coffee_guide.jpg', 13200, 930, 11),
(11, 'Digital Drawing Basics', 'Start drawing digitally', 'drawing_basics.mp4', 1920, 1080, 990, 'drawing_basics.jpg', 11600, 870, 13),
(12, 'Ocean Wildlife', 'Life beneath the waves', 'ocean_wildlife.mp4', 3840, 2160, 810, 'ocean_wildlife.jpg', 29800, 2450, 19);

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`video_meta`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`video_meta` (`video_meta_id`, `user_id`, `video_id`, `state`, `update_at`) VALUES
(1, 1, 1, 'public', '2026-09-01 10:00:00'),
(2, 2, 2, 'public', '2026-09-02 11:15:00'),
(3, 3, 3, 'public', '2026-09-03 12:30:00'),
(4, 4, 4, 'public', '2026-09-04 13:45:00'),
(5, 5, 5, 'public', '2026-09-05 14:00:00'),
(6, 6, 6, 'hidden', '2026-09-06 15:10:00'),
(7, 7, 7, 'public', '2026-09-07 16:20:00'),
(8, 8, 8, 'private', '2026-09-08 17:30:00'),
(9, 9, 9, 'public', '2026-09-09 18:40:00'),
(10, 10, 10, 'public', '2026-09-10 09:50:00'),
(11, 1, 11, 'public', '2026-09-11 10:05:00'),
(12, 2, 12, 'public', '2026-09-12 11:25:00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`tags`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`tags` (`tag_id`, `name`) VALUES
(1, 'cooking'),
(2, 'travel'),
(3, 'education'),
(4, 'music'),
(5, 'fitness'),
(6, 'programming'),
(7, 'lifestyle'),
(8, 'tutorial'),
(9, 'nature'),
(10, 'art');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`video_tags`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`video_tags` (`video_tag_id`, `video_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 8),
(3, 2, 2),
(4, 2, 9),
(5, 3, 3),
(6, 3, 6),
(7, 4, 4),
(8, 4, 8),
(9, 5, 5),
(10, 5, 7),
(11, 6, 1),
(12, 6, 7),
(13, 7, 3),
(14, 7, 6),
(15, 8, 9),
(16, 9, 2),
(17, 9, 7),
(18, 10, 7),
(19, 11, 10),
(20, 11, 8),
(21, 12, 9);

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`channels`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`channels` (`channel_id`, `user_id`, `name`, `description`, `created_at`) VALUES
(1, 1, 'Ana Cooks', 'Easy recipes at home', '2025-01-15 09:00:00'),
(2, 2, 'Marc Explores', 'City walks and travel', '2024-11-20 12:30:00'),
(3, 3, 'SQL with Lucia', 'Database learning tips', '2025-03-10 14:15:00'),
(4, 4, 'Guitar with Pablo', 'Guitar lessons for all', '2024-08-02 10:45:00'),
(5, 5, 'Emma Moves', 'Fitness and wellbeing', '2025-02-18 08:20:00'),
(6, 6, 'Youssef Kitchen', 'Food from many cultures', '2025-04-05 16:00:00'),
(7, 7, 'Clara Creates', 'Drawing and creative art', '2025-05-12 11:10:00'),
(8, 8, 'Diego Codes', 'Programming tutorials', '2024-12-01 13:00:00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`subscriptions`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`subscriptions` (`subscription_id`, `channel_id`, `user_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 2, 1),
(5, 2, 5),
(6, 3, 1),
(7, 3, 6),
(8, 4, 2),
(9, 5, 3),
(10, 5, 7),
(11, 6, 4),
(12, 7, 8),
(13, 8, 9),
(14, 8, 10),
(15, 2, 6);

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`video_interactions`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`video_interactions` (`video_interaction_id`, `user_id`, `video_id`, `type`) VALUES
(1, 2, 1, 'like'),
(2, 3, 1, 'like'),
(3, 4, 1, 'dislike'),
(4, 1, 2, 'like'),
(5, 5, 2, 'like'),
(6, 6, 3, 'like'),
(7, 7, 3, 'like'),
(8, 8, 4, 'like'),
(9, 9, 5, 'like'),
(10, 10, 5, 'dislike'),
(11, 1, 6, 'like'),
(12, 2, 7, 'like'),
(13, 3, 7, 'like'),
(14, 4, 8, 'like'),
(15, 5, 9, 'like'),
(16, 6, 10, 'dislike'),
(17, 7, 11, 'like'),
(18, 8, 12, 'like'),
(19, 9, 12, 'like'),
(20, 10, 2, 'like');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`video_comments`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`video_comments` (`video_comment_id`, `user_id`, `video_id`, `text`, `update_at`) VALUES
(1, 2, 1, 'Tried this recipe and loved it!', '2026-09-15 10:00:00'),
(2, 3, 1, 'Clear instructions, thank you.', '2026-09-15 10:20:00'),
(3, 1, 2, 'Beautiful views of Barcelona.', '2026-09-16 11:10:00'),
(4, 5, 2, 'Adding this walk to my list.', '2026-09-16 11:40:00'),
(5, 6, 3, 'The join examples helped a lot.', '2026-09-17 12:00:00'),
(6, 7, 3, 'Please make a video about indexes.', '2026-09-17 12:30:00'),
(7, 8, 4, 'Great lesson for beginners.', '2026-09-18 13:15:00'),
(8, 9, 5, 'Short and effective workout.', '2026-09-18 14:00:00'),
(9, 10, 6, 'Looks delicious!', '2026-09-19 15:05:00'),
(10, 1, 7, 'The Python explanation is easy to follow.', '2026-09-19 15:45:00'),
(11, 2, 8, 'Amazing sunrise footage.', '2026-09-20 16:10:00'),
(12, 3, 9, 'Useful tips for my next trip.', '2026-09-20 16:55:00'),
(13, 4, 10, 'The coffee ratios worked perfectly.', '2026-09-21 09:20:00'),
(14, 5, 11, 'Would love a follow-up tutorial.', '2026-09-21 10:10:00'),
(15, 6, 12, 'Incredible underwater scenes.', '2026-09-21 11:35:00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`video_comment_interactions`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`video_comment_interactions` (`video_comment_interactions_id`, `user_id`, `video_comment_id`, `type`, `update_at`) VALUES
(1, 1, 1, 'like', '2026-09-22 10:00:00'),
(2, 4, 1, 'like', '2026-09-22 10:05:00'),
(3, 5, 2, 'like', '2026-09-22 10:10:00'),
(4, 2, 3, 'like', '2026-09-22 10:15:00'),
(5, 6, 4, 'like', '2026-09-22 10:20:00'),
(6, 8, 5, 'like', '2026-09-22 10:25:00'),
(7, 9, 6, 'dislike', '2026-09-22 10:30:00'),
(8, 3, 7, 'like', '2026-09-22 10:35:00'),
(9, 10, 8, 'like', '2026-09-22 10:40:00'),
(10, 7, 9, 'like', '2026-09-22 10:45:00'),
(11, 5, 10, 'like', '2026-09-22 10:50:00'),
(12, 1, 11, 'like', '2026-09-22 10:55:00'),
(13, 4, 12, 'like', '2026-09-22 11:00:00'),
(14, 2, 13, 'like', '2026-09-22 11:05:00'),
(15, 8, 14, 'like', '2026-09-22 11:10:00');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`playlists`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`playlists` (`playlist_id`, `user_id`, `name`, `created_at`, `state`) VALUES
(1, 1, 'Recipes to Try', '2026-01-10 09:00:00', 'public'),
(2, 2, 'Weekend Travel', '2026-02-14 12:00:00', 'public'),
(3, 3, 'SQL Study List', '2026-03-05 15:30:00', 'private'),
(4, 4, 'Guitar Practice', '2026-03-18 18:00:00', 'public'),
(5, 5, 'Daily Fitness', '2026-04-01 07:30:00', 'public'),
(6, 6, 'World Food', '2026-04-20 13:15:00', 'hidden'),
(7, 7, 'Creative Inspiration', '2026-05-02 10:00:00', 'public'),
(8, 8, 'Coding Tutorials', '2026-05-17 16:45:00', 'private');

COMMIT;


-- -----------------------------------------------------
-- Data for table `youtube`.`playlist_item`
-- -----------------------------------------------------
START TRANSACTION;
USE `youtube`;

INSERT INTO `youtube`.`playlist_item` (`playlist_item_id`, `playlist_id`, `video_id`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 1, 10),
(4, 2, 2),
(5, 2, 8),
(6, 2, 9),
(7, 3, 3),
(8, 3, 7),
(9, 4, 4),
(10, 5, 5),
(11, 6, 1),
(12, 6, 6),
(13, 7, 11),
(14, 7, 8),
(15, 8, 3),
(16, 8, 7),
(17, 8, 10);

COMMIT;

