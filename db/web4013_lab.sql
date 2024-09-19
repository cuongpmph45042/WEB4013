-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2024 at 03:21 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web4013_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` datetime NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `author`, `publisher`, `publication`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Quo blanditiis quod numquam nihil quam.', 'https://via.placeholder.com/640x480.png/007744?text=id', 'Johnathan Rolfson', 'O\'Hara, Murray and Boehm', '1970-11-06 00:00:00', 247242.38, 123, 4, NULL, NULL),
(2, 'Impedit deleniti ipsa accusantium.', 'https://via.placeholder.com/640x480.png/002255?text=nemo', 'Amina Jaskolski', 'Armstrong LLC', '2023-09-26 00:00:00', 184973.8, 117, 5, NULL, NULL),
(3, 'Qui qui autem facere omnis rerum.', 'https://via.placeholder.com/640x480.png/00ee00?text=alias', 'Mr. Amos Streich I', 'Boyer-Kuhlman', '2016-03-28 00:00:00', 98454.9, 330, 1, NULL, NULL),
(4, 'Ut pariatur id architecto expedita.', 'https://via.placeholder.com/640x480.png/001100?text=vel', 'Miss Leta Wyman Jr.', 'Hegmann, Wilderman and Langworth', '2000-08-26 00:00:00', 208722.03, 477, 2, NULL, NULL),
(5, 'Modi in aut consequatur qui.', 'https://via.placeholder.com/640x480.png/0044bb?text=dolor', 'Pearline Conroy DDS', 'Mante, Ratke and Parisian', '2024-03-17 00:00:00', 278888.15, 276, 3, NULL, NULL),
(6, 'Placeat est molestias id non ut qui.', 'https://via.placeholder.com/640x480.png/002299?text=ipsum', 'Kolby Walsh Sr.', 'Kshlerin LLC', '1973-06-22 00:00:00', 251869.4, 403, 5, NULL, NULL),
(7, 'Non eligendi rerum necessitatibus non.', 'https://via.placeholder.com/640x480.png/0099aa?text=possimus', 'Amina Schmeler', 'Simonis-Donnelly', '2006-05-27 00:00:00', 203805.11, 395, 5, NULL, NULL),
(8, 'Optio officiis hic pariatur voluptatem.', 'https://via.placeholder.com/640x480.png/0011bb?text=veritatis', 'Winfield Littel', 'Skiles-Considine', '1988-01-01 00:00:00', 116843.22, 63, 2, NULL, NULL),
(9, 'Ex pariatur cumque at aliquam odit.', 'https://via.placeholder.com/640x480.png/004444?text=dolores', 'Ellen Brown', 'Schaefer Inc', '2010-02-24 00:00:00', 142250.71, 207, 5, NULL, NULL),
(10, 'Nulla omnis consectetur nobis iste.', 'https://via.placeholder.com/640x480.png/001177?text=nobis', 'Genesis Schultz', 'Wiegand LLC', '2002-07-18 00:00:00', 120510.87, 167, 2, NULL, NULL),
(11, 'Nobis voluptatem quo aut sunt placeat.', 'https://via.placeholder.com/640x480.png/0000dd?text=in', 'Mr. Nasir Waelchi', 'Yundt and Sons', '1998-04-03 00:00:00', 237416.06, 255, 4, NULL, NULL),
(12, 'Atque error sit atque.', 'https://via.placeholder.com/640x480.png/00ee11?text=aliquam', 'Mateo Stracke PhD', 'Pollich, Mueller and Hansen', '1977-05-08 00:00:00', 150950.25, 307, 3, NULL, NULL),
(13, 'Ea hic quia illo molestiae ea fugit.', 'https://via.placeholder.com/640x480.png/00bb00?text=delectus', 'Richmond Muller', 'Davis-Brakus', '2007-09-24 00:00:00', 27039.42, 254, 2, NULL, NULL),
(14, 'Maiores aut aut sed quae.', 'https://via.placeholder.com/640x480.png/005599?text=asperiores', 'Morton Howe', 'Schimmel-Ritchie', '2004-02-23 00:00:00', 277568.69, 3, 4, NULL, NULL),
(15, 'Fugiat id est ut dolores et.', 'https://via.placeholder.com/640x480.png/003399?text=laborum', 'Margarita Swift', 'Kerluke-Boyle', '2008-10-01 00:00:00', 151580.72, 178, 2, NULL, NULL),
(16, 'Et maiores itaque officiis nulla.', 'https://via.placeholder.com/640x480.png/002244?text=quam', 'Walton Wolff', 'Gleason Inc', '1981-02-15 00:00:00', 68567.82, 183, 2, NULL, NULL),
(17, 'Nemo quia voluptate ipsa vel enim.', 'https://via.placeholder.com/640x480.png/0099bb?text=optio', 'Monserrat Schmitt', 'Metz-Hills', '1972-08-14 00:00:00', 63853.02, 118, 3, NULL, NULL),
(18, 'Nisi alias ut quasi est.', 'https://via.placeholder.com/640x480.png/009944?text=consequatur', 'Bette Dach', 'Rohan, Rolfson and Treutel', '1970-12-15 00:00:00', 74708.38, 292, 3, NULL, NULL),
(19, 'Et culpa officiis aperiam aliquid.', 'https://via.placeholder.com/640x480.png/00aaaa?text=quia', 'Annalise Bogan', 'Ondricka-Douglas', '1979-08-21 00:00:00', 253063.48, 154, 5, NULL, NULL),
(20, 'Quia error est eos ut.', 'https://via.placeholder.com/640x480.png/00ff66?text=eius', 'Marlin Bogisich', 'Hettinger, Ruecker and Haag', '2014-04-15 00:00:00', 119278.99, 79, 4, NULL, NULL),
(21, 'Et et qui voluptatum in.', 'https://via.placeholder.com/640x480.png/003311?text=eligendi', 'Opal Ferry Sr.', 'Langworth, Pagac and Sawayn', '2017-12-20 00:00:00', 60510.86, 469, 5, NULL, NULL),
(22, 'Qui nesciunt impedit consequatur.', 'https://via.placeholder.com/640x480.png/00cccc?text=excepturi', 'Gaylord Leffler', 'Rippin Inc', '1989-02-10 00:00:00', 175846.24, 286, 5, NULL, NULL),
(23, 'Quis pariatur magni temporibus odit.', 'https://via.placeholder.com/640x480.png/00cc77?text=autem', 'Mrs. Adrienne Prosacco DDS', 'Kulas and Sons', '2015-11-03 00:00:00', 39173.3, 484, 5, NULL, NULL),
(24, 'Eum et reiciendis occaecati.', 'https://via.placeholder.com/640x480.png/005544?text=est', 'Leslie Hills', 'Sauer, Veum and Will', '1987-06-22 00:00:00', 254254.12, 329, 2, NULL, NULL),
(25, 'Facere ut ipsam necessitatibus id enim.', 'https://via.placeholder.com/640x480.png/0033ff?text=laudantium', 'Chanel Reilly', 'Fahey Ltd', '1982-03-14 00:00:00', 218771.42, 406, 5, NULL, NULL),
(26, 'Sapiente quo quis nesciunt voluptatem.', 'https://via.placeholder.com/640x480.png/00ee11?text=pariatur', 'Anastacio Lowe', 'Zulauf, Rohan and Trantow', '1974-08-10 00:00:00', 185392.4, 156, 4, NULL, NULL),
(27, 'Quia sed illo rerum et accusantium.', 'https://via.placeholder.com/640x480.png/003377?text=est', 'Prof. Crystal Conn', 'Dietrich and Sons', '1976-03-16 00:00:00', 183488.99, 168, 3, NULL, NULL),
(28, 'Omnis similique iste minus qui.', 'https://via.placeholder.com/640x480.png/00aaff?text=molestiae', 'Natalia Hand', 'DuBuque, Bode and Gislason', '1976-12-04 00:00:00', 109871.54, 450, 5, NULL, NULL),
(29, 'Nostrum id molestiae maxime itaque nam.', 'https://via.placeholder.com/640x480.png/00aadd?text=soluta', 'Tremayne Greenholt', 'Runte, Brown and Bradtke', '2016-07-12 00:00:00', 27509.84, 162, 3, NULL, NULL),
(30, 'Consectetur ut minus a et aut.', 'https://via.placeholder.com/640x480.png/00ccdd?text=consequuntur', 'Michel Hand II', 'Gottlieb and Sons', '2018-04-12 00:00:00', 20145.13, 173, 4, NULL, NULL),
(31, 'Illum maiores cumque esse.', 'https://via.placeholder.com/640x480.png/0088ee?text=assumenda', 'Virgil Schmidt', 'Braun LLC', '2020-08-29 00:00:00', 68527.79, 376, 5, NULL, NULL),
(32, 'Vero in amet ipsa.', 'https://via.placeholder.com/640x480.png/0088dd?text=iste', 'Samir Volkman', 'Schaefer Inc', '1977-04-16 00:00:00', 107513.34, 119, 5, NULL, NULL),
(33, 'Ea minus dicta id placeat non.', 'https://via.placeholder.com/640x480.png/00ffcc?text=inventore', 'Jean Corkery', 'Hackett-Brakus', '1971-10-30 00:00:00', 74112.93, 77, 4, NULL, NULL),
(34, 'Quia quis rerum quia.', 'https://via.placeholder.com/640x480.png/005577?text=quo', 'Dr. Ashleigh Moen Jr.', 'Stracke-Tillman', '2007-04-28 00:00:00', 28976.51, 361, 4, NULL, NULL),
(35, 'Et et earum ipsam quam ratione enim.', 'https://via.placeholder.com/640x480.png/0055bb?text=aut', 'Lora Nicolas', 'Lynch-Jacobs', '2001-06-05 00:00:00', 273939.88, 384, 1, NULL, NULL),
(36, 'Praesentium ad ut quis voluptates.', 'https://via.placeholder.com/640x480.png/0000ee?text=quidem', 'Corrine McLaughlin', 'Stoltenberg and Sons', '1986-07-06 00:00:00', 120678.15, 434, 2, NULL, NULL),
(37, 'Debitis aliquid dolores qui.', 'https://via.placeholder.com/640x480.png/002277?text=magni', 'Madilyn Lynch', 'Hand PLC', '2010-02-04 00:00:00', 42925.62, 352, 2, NULL, NULL),
(38, 'Ex maxime animi dolorem.', 'https://via.placeholder.com/640x480.png/00cc33?text=quidem', 'Ava Kulas', 'Ullrich, Kling and Streich', '2017-09-23 00:00:00', 292467.68, 49, 4, NULL, NULL),
(39, 'Enim eum eveniet quae ut reiciendis.', 'https://via.placeholder.com/640x480.png/0033cc?text=qui', 'Prof. Sarai Runolfsson', 'Treutel and Sons', '2003-04-01 00:00:00', 105384.48, 295, 3, NULL, NULL),
(40, 'Voluptatem culpa molestiae ut dolores.', 'https://via.placeholder.com/640x480.png/006688?text=facere', 'Dr. Genesis Grimes I', 'Rath, Hane and Christiansen', '1999-09-10 00:00:00', 30375.65, 443, 2, NULL, NULL),
(41, 'In sunt libero recusandae.', 'https://via.placeholder.com/640x480.png/00ddff?text=non', 'Dr. Sarah Padberg PhD', 'Auer LLC', '1970-07-05 00:00:00', 32388.18, 292, 4, NULL, NULL),
(42, 'Non in dolore sint error et sunt.', 'https://via.placeholder.com/640x480.png/0000cc?text=quos', 'Mr. Karson Boehm', 'Daugherty-Maggio', '2021-03-08 00:00:00', 83138.72, 287, 3, NULL, NULL),
(43, 'Iusto ut omnis amet. Quo beatae ut non.', 'https://via.placeholder.com/640x480.png/00dd22?text=odit', 'Dr. Kali Pfeffer', 'Bernier, Will and Gottlieb', '2002-01-29 00:00:00', 130760.1, 79, 4, NULL, NULL),
(44, 'Eum tempora ullam et aut.', 'https://via.placeholder.com/640x480.png/0000ee?text=ut', 'Genoveva Kuhn', 'Bartoletti Inc', '2016-05-21 00:00:00', 207709.69, 439, 4, NULL, NULL),
(45, 'Quod ipsam occaecati voluptatum eius.', 'https://via.placeholder.com/640x480.png/00cc88?text=facere', 'Dr. Daren O\'Keefe IV', 'Haag, Mante and Toy', '1988-03-26 00:00:00', 104624.49, 97, 5, NULL, NULL),
(46, 'Incidunt velit nam pariatur aperiam.', 'https://via.placeholder.com/640x480.png/0077ee?text=quo', 'Prof. June Reinger IV', 'Smith Inc', '1994-11-09 00:00:00', 196772.3, 424, 5, NULL, NULL),
(47, 'Soluta rerum rerum aperiam ea.', 'https://via.placeholder.com/640x480.png/0022ee?text=ipsa', 'Mr. Antonio Durgan Jr.', 'Cremin and Sons', '2013-03-14 00:00:00', 73129.62, 157, 3, NULL, NULL),
(48, 'Autem omnis id unde.', 'https://via.placeholder.com/640x480.png/0099aa?text=ut', 'Abel Nolan MD', 'Thompson-Borer', '1975-05-29 00:00:00', 208766.03, 276, 3, NULL, NULL),
(49, 'Dolor in eos impedit.', 'https://via.placeholder.com/640x480.png/007799?text=et', 'Miss Catharine Schiller', 'Volkman Group', '1985-02-11 00:00:00', 252157.34, 159, 3, NULL, NULL),
(50, 'Veniam ut assumenda qui.', 'https://via.placeholder.com/640x480.png/006611?text=et', 'Arlie Kuhn', 'Braun and Sons', '1982-02-22 00:00:00', 177710.75, 388, 1, NULL, NULL),
(51, 'Et fugiat optio vitae.', 'https://via.placeholder.com/640x480.png/00ff33?text=impedit', 'Aiden Huel', 'O\'Reilly PLC', '1982-03-22 00:00:00', 274875.23, 334, 3, NULL, NULL),
(52, 'Voluptatem quas nemo tempora eos hic.', 'https://via.placeholder.com/640x480.png/0055ee?text=ratione', 'Prof. Dell Fisher MD', 'Emmerich-Franecki', '2007-06-11 00:00:00', 137555.35, 339, 3, NULL, NULL),
(53, 'Iste quidem voluptatem et ipsam.', 'https://via.placeholder.com/640x480.png/0088ff?text=et', 'Josephine Nienow', 'Schmeler, Jacobs and Schamberger', '1989-06-08 00:00:00', 210582.82, 416, 1, NULL, NULL),
(54, 'Et veritatis est consequatur.', 'https://via.placeholder.com/640x480.png/00bb22?text=consectetur', 'Stephen Howe', 'Marvin Inc', '1972-01-12 00:00:00', 104235.88, 99, 1, NULL, NULL),
(55, 'Rerum eos sit officia aliquam repellat.', 'https://via.placeholder.com/640x480.png/0022cc?text=aspernatur', 'Sunny Harber', 'Ernser, Sawayn and Parker', '2009-12-07 00:00:00', 129706.04, 204, 2, NULL, NULL),
(56, 'Qui ullam omnis est accusantium est.', 'https://via.placeholder.com/640x480.png/00dd77?text=occaecati', 'Ms. Shany Bruen III', 'Orn-Kertzmann', '2001-11-15 00:00:00', 173241.05, 321, 3, NULL, NULL),
(57, 'Dolore dolor sequi enim rem.', 'https://via.placeholder.com/640x480.png/002233?text=facere', 'Brandon Renner Jr.', 'Brekke-Gutkowski', '2010-10-05 00:00:00', 26499.13, 224, 2, NULL, NULL),
(58, 'Corporis sint quia qui odio numquam.', 'https://via.placeholder.com/640x480.png/00ee11?text=dolorum', 'Torrey Abbott', 'Reynolds Group', '1996-03-07 00:00:00', 260295.48, 313, 2, NULL, NULL),
(59, 'Qui nobis cumque eos dolor quo.', 'https://via.placeholder.com/640x480.png/0088cc?text=vel', 'Jettie O\'Kon III', 'Cartwright-Stark', '2022-08-28 00:00:00', 244368.26, 208, 2, NULL, NULL),
(60, 'Odit tenetur perferendis et rem.', 'https://via.placeholder.com/640x480.png/002222?text=laborum', 'Georgette Greenfelder V', 'Marvin-Predovic', '2004-10-19 00:00:00', 223856.89, 350, 2, NULL, NULL),
(61, 'Quis possimus optio quasi.', 'https://via.placeholder.com/640x480.png/003300?text=at', 'Cleta Bechtelar', 'Moen and Sons', '2013-02-26 00:00:00', 64390.97, 216, 1, NULL, NULL),
(62, 'Aut in nihil nihil est.', 'https://via.placeholder.com/640x480.png/00cc11?text=ut', 'Dr. Cyrus Batz', 'Lindgren, Kuphal and Cruickshank', '2004-11-24 00:00:00', 92981.3, 448, 1, NULL, NULL),
(63, 'Quaerat beatae autem ex assumenda.', 'https://via.placeholder.com/640x480.png/00bb66?text=consequuntur', 'Eleonore Strosin', 'Swift, Schumm and Schinner', '1978-11-10 00:00:00', 220890.54, 397, 2, NULL, NULL),
(64, 'Ut qui molestiae alias.', 'https://via.placeholder.com/640x480.png/008822?text=autem', 'Prof. Furman Nienow', 'Ledner-Rodriguez', '1995-01-27 00:00:00', 24624.92, 337, 3, NULL, NULL),
(65, 'Et excepturi dolorem voluptatibus.', 'https://via.placeholder.com/640x480.png/0033dd?text=eum', 'Clotilde Jones', 'Corwin, Veum and Haley', '2008-03-03 00:00:00', 246259.45, 86, 1, NULL, NULL),
(66, 'Eius dolores repellat tempora hic.', 'https://via.placeholder.com/640x480.png/008811?text=labore', 'Elmer Will', 'Schumm Inc', '2018-06-23 00:00:00', 201226.94, 444, 5, NULL, NULL),
(67, 'Omnis amet explicabo omnis iusto.', 'https://via.placeholder.com/640x480.png/005533?text=alias', 'Dr. Adrienne Blick', 'Kuhn-Feest', '1995-02-14 00:00:00', 153817.28, 168, 1, NULL, NULL),
(68, 'Eos quis qui voluptatibus id.', 'https://via.placeholder.com/640x480.png/002288?text=sunt', 'Ryleigh Mayert III', 'Toy, Bauch and Berge', '2009-12-22 00:00:00', 114196.01, 143, 5, NULL, NULL),
(69, 'Dolorem et quod a cum.', 'https://via.placeholder.com/640x480.png/005577?text=rem', 'Miss Julie Emmerich DDS', 'Reichert Group', '2016-07-09 00:00:00', 125922.32, 253, 5, NULL, NULL),
(70, 'Harum voluptatem voluptate sit a.', 'https://via.placeholder.com/640x480.png/004433?text=sit', 'Julie Bailey', 'Wehner-Jacobi', '1999-04-08 00:00:00', 203616.27, 409, 4, NULL, NULL),
(71, 'Voluptas eos mollitia a atque id.', 'https://via.placeholder.com/640x480.png/00cc77?text=aliquam', 'Regan Carroll', 'Ziemann Inc', '1999-10-19 00:00:00', 68828.9, 248, 2, NULL, NULL),
(72, 'Rerum sit aut et nam sed.', 'https://via.placeholder.com/640x480.png/00bb77?text=fuga', 'Kiana Smith', 'Cormier-Kohler', '1972-02-07 00:00:00', 298646.46, 181, 1, NULL, NULL),
(73, 'Sunt et voluptate perferendis.', 'https://via.placeholder.com/640x480.png/007777?text=et', 'Cornell Rempel', 'Ledner Inc', '1987-05-17 00:00:00', 277626.43, 24, 1, NULL, NULL),
(74, 'Fuga maiores et in id.', 'https://via.placeholder.com/640x480.png/006655?text=consequatur', 'Prof. Brooklyn Wiegand PhD', 'Littel, Crona and Schiller', '1983-04-17 00:00:00', 267872.09, 199, 4, NULL, NULL),
(75, 'Minima deleniti ab corporis fugit.', 'https://via.placeholder.com/640x480.png/003311?text=consequuntur', 'Sasha Cremin', 'Eichmann Ltd', '2020-05-28 00:00:00', 226935.73, 146, 5, NULL, NULL),
(76, 'Debitis commodi corrupti temporibus.', 'https://via.placeholder.com/640x480.png/004477?text=corrupti', 'Prof. Maddison Davis II', 'Zemlak-Hermiston', '1990-07-17 00:00:00', 77933.03, 11, 3, NULL, NULL),
(77, 'Dicta non aut velit illo.', 'https://via.placeholder.com/640x480.png/00dd55?text=voluptatem', 'Mr. Emanuel Schoen Jr.', 'Macejkovic-Watsica', '2019-12-11 00:00:00', 102822.59, 101, 5, NULL, NULL),
(78, 'Provident quo animi blanditiis.', 'https://via.placeholder.com/640x480.png/00ccee?text=natus', 'Brenden Prosacco', 'Treutel-Kassulke', '1972-12-17 00:00:00', 180709.47, 138, 2, NULL, NULL),
(79, 'Officiis similique ea enim.', 'https://via.placeholder.com/640x480.png/00cc88?text=quo', 'Gerson Hyatt DVM', 'Feest and Sons', '1997-05-08 00:00:00', 278040.83, 331, 3, NULL, NULL),
(80, 'Iusto suscipit quasi et repellendus.', 'https://via.placeholder.com/640x480.png/00cc66?text=corrupti', 'Thaddeus Adams', 'Bode-Cronin', '1976-02-16 00:00:00', 268970.54, 207, 3, NULL, NULL),
(81, 'Animi aut a et.', 'https://via.placeholder.com/640x480.png/005599?text=minima', 'Dr. Eva Jerde II', 'White LLC', '1978-12-29 00:00:00', 124835.12, 412, 3, NULL, NULL),
(82, 'Quae hic quidem repudiandae.', 'https://via.placeholder.com/640x480.png/005511?text=culpa', 'Dr. Lula Beahan Jr.', 'Trantow Ltd', '1990-09-08 00:00:00', 81259.46, 146, 2, NULL, NULL),
(83, 'Dicta odit libero facilis illo error.', 'https://via.placeholder.com/640x480.png/00cc33?text=ut', 'Jeremy Buckridge', 'Fay-Gleichner', '2022-04-12 00:00:00', 209938.33, 11, 5, NULL, NULL),
(84, 'Aut est magnam est.', 'https://via.placeholder.com/640x480.png/00aadd?text=voluptas', 'Prof. Morgan Cronin', 'Mann, Lubowitz and O\'Conner', '1971-08-06 00:00:00', 66478.24, 172, 4, NULL, NULL),
(85, 'Quo omnis ut aut at.', 'https://via.placeholder.com/640x480.png/0033ee?text=eius', 'Alfonzo Von', 'Hegmann, Bashirian and Gerlach', '1988-05-08 00:00:00', 236966.11, 407, 5, NULL, NULL),
(86, 'Earum ut quas eum labore quia.', 'https://via.placeholder.com/640x480.png/00ffcc?text=eius', 'Christelle Abshire PhD', 'Kuhlman Inc', '1983-01-25 00:00:00', 51926.8, 493, 5, NULL, NULL),
(87, 'Corporis dolore numquam in sunt sed.', 'https://via.placeholder.com/640x480.png/0000dd?text=aliquam', 'Stan Russel', 'Johnson, Bartell and Bednar', '2008-12-05 00:00:00', 294924.78, 143, 3, NULL, NULL),
(88, 'Voluptatem quisquam omnis ipsam.', 'https://via.placeholder.com/640x480.png/00ccaa?text=in', 'Mr. Jordi Macejkovic', 'Stehr-Bailey', '1994-05-08 00:00:00', 117590.56, 209, 5, NULL, NULL),
(89, 'Omnis quae quia voluptates.', 'https://via.placeholder.com/640x480.png/001177?text=ratione', 'Dalton Dickens', 'King-Harris', '2014-04-19 00:00:00', 71731.46, 355, 3, NULL, NULL),
(90, 'Ut ea est quo minima et.', 'https://via.placeholder.com/640x480.png/00ee22?text=nobis', 'Georgiana Treutel', 'Kuhic, Konopelski and Dicki', '1991-11-04 00:00:00', 97036.47, 205, 1, NULL, NULL),
(91, 'Commodi aut facilis modi et.', 'https://via.placeholder.com/640x480.png/00bb66?text=quisquam', 'Michael Hodkiewicz', 'Bednar-Daugherty', '1984-08-06 00:00:00', 227084.22, 40, 2, NULL, NULL),
(92, 'Sapiente cum voluptatum sed corporis.', 'https://via.placeholder.com/640x480.png/0011dd?text=qui', 'Joy Conn', 'Johnston, Krajcik and Okuneva', '2022-01-14 00:00:00', 115376.98, 3, 1, NULL, NULL),
(93, 'Fugit id id omnis iste.', 'https://via.placeholder.com/640x480.png/00aa66?text=eos', 'Augustus Hagenes', 'Dickens, Streich and Torphy', '1994-04-13 00:00:00', 46842.33, 175, 2, NULL, NULL),
(94, 'Est enim aut eligendi dolores nihil ut.', 'https://via.placeholder.com/640x480.png/0099ff?text=et', 'Javon Kertzmann Sr.', 'Gulgowski Inc', '1974-11-06 00:00:00', 243868.22, 222, 3, NULL, NULL),
(95, 'Animi hic nisi neque quo.', 'https://via.placeholder.com/640x480.png/0011cc?text=voluptas', 'Eloisa Donnelly', 'Langworth-Dietrich', '1988-02-18 00:00:00', 233937.94, 433, 2, NULL, NULL),
(96, 'Quo ab eaque ullam quaerat non.', 'https://via.placeholder.com/640x480.png/00ee22?text=distinctio', 'Ludie Kub', 'Hintz-Rogahn', '1976-02-12 00:00:00', 188939.06, 67, 3, NULL, NULL),
(97, 'Beatae aut ut rem adipisci omnis.', 'https://via.placeholder.com/640x480.png/00eeee?text=maiores', 'Dr. Frank King PhD', 'Wunsch-Herzog', '2012-09-18 00:00:00', 137835.71, 40, 2, NULL, NULL),
(98, 'Provident sed non et delectus.', 'https://via.placeholder.com/640x480.png/0000bb?text=et', 'Miss Marietta Carroll', 'Emard, Treutel and Weissnat', '1986-12-16 00:00:00', 220076.67, 468, 1, NULL, NULL),
(99, 'Sunt est debitis vel omnis omnis fugit.', 'https://via.placeholder.com/640x480.png/0055ff?text=eius', 'Mr. King Brakus', 'Herzog-Cronin', '2019-03-21 00:00:00', 201335.24, 138, 4, NULL, NULL),
(100, 'Hic quidem in enim.', 'https://via.placeholder.com/640x480.png/00eecc?text=ab', 'Carson Schneider', 'Okuneva, Effertz and Pacocha', '2015-11-05 00:00:00', 152673.05, 200, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu thuyết', NULL, NULL),
(2, 'Khoa học', NULL, NULL),
(3, 'Lịch sử', NULL, NULL),
(4, 'Hồi kí', NULL, NULL),
(5, 'Kinh tế', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2024_09_17_141727_create_flights_table', 1),
(20, '2024_09_17_143115_create_categories_table', 1),
(21, '2024_09_17_143352_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
