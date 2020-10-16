-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2020 a las 23:59:07
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `essentialmode`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'caution', 0, 'steam:110000141f2d55b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('bread', 'Pan', 10, 0, 1),
('bulletproof', 'Bullet-Proof Vest', -1, 0, 1),
('clip', 'Weapon Clip', -1, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('darknet', 'Dark Net', 1, 0, 1),
('diamond', 'Diamant', 50, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('firstaidkit', 'First Aid Kit', -1, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('gold', 'Or', 21, 0, 1),
('iron', 'Fer', 42, 0, 1),
('oxygen_mask', 'Oxygen Mask', -1, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1),
('water', 'Agua', 10, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('lumberjack', 'Bûcheron', 0),
('miner', 'Mineur', 0),
('reporter', 'Journaliste', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'ExtraItemsShop', 'oxygen_mask', 500),
(8, 'ExtraItemsShop', 'bulletproof', 2500),
(9, 'ExtraItemsShop', 'firstaidkit', 3000),
(10, 'ExtraItemsShop', 'darknet', 250),
(11, 'ExtraItemsShop', 'clip', 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`) VALUES
('steam:110000141f2d55b', 'license:280af643e1d430e8aac2135fbb905d1b200f9009', -500, 'el pelucas', '{\"makeup_1\":0,\"chest_1\":0,\"beard_3\":0,\"tshirt_1\":0,\"bodyb_1\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"eyebrows_1\":0,\"bodyb_2\":0,\"moles_1\":0,\"sex\":0,\"beard_1\":0,\"skin\":0,\"glasses_1\":0,\"watches_2\":0,\"sun_2\":0,\"hair_2\":0,\"blush_2\":0,\"chain_1\":0,\"lipstick_1\":0,\"tshirt_2\":0,\"age_2\":0,\"hair_1\":0,\"arms\":0,\"helmet_2\":0,\"chest_2\":0,\"sun_1\":0,\"bracelets_2\":0,\"ears_1\":-1,\"lipstick_3\":0,\"makeup_2\":0,\"chest_3\":0,\"shoes_2\":0,\"bproof_1\":0,\"chain_2\":0,\"moles_2\":0,\"ears_2\":0,\"pants_1\":0,\"bracelets_1\":-1,\"lipstick_4\":0,\"blush_3\":0,\"hair_color_1\":0,\"age_1\":0,\"bproof_2\":0,\"bags_2\":0,\"torso_2\":0,\"mask_1\":0,\"eye_color\":0,\"decals_1\":0,\"complexion_1\":0,\"mask_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"shoes_1\":0,\"lipstick_2\":0,\"beard_2\":0,\"helmet_1\":-1,\"bags_1\":0,\"decals_2\":0,\"blemishes_1\":0,\"beard_4\":0,\"complexion_2\":0,\"face\":4,\"blush_1\":0,\"blemishes_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"torso_1\":0,\"watches_1\":-1,\"arms_2\":0,\"glasses_2\":0,\"hair_color_2\":0}', 'unemployed', 0, '[{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistol\",\"components\":[\"clip_default\"],\"ammo\":227},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Assault rifle\",\"components\":[\"clip_default\"],\"ammo\":194}]', '{\"x\":-261.5,\"y\":-969.0,\"z\":31.2}', 600, 4, 'superadmin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:110000141f2d55b', 'black_money', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:110000141f2d55b', 'washed_stone', 0),
(2, 'steam:110000141f2d55b', 'alive_chicken', 0),
(3, 'steam:110000141f2d55b', 'fabric', 0),
(4, 'steam:110000141f2d55b', 'darknet', 0),
(5, 'steam:110000141f2d55b', 'essence', 0),
(6, 'steam:110000141f2d55b', 'slaughtered_chicken', 0),
(7, 'steam:110000141f2d55b', 'packaged_plank', 0),
(8, 'steam:110000141f2d55b', 'bread', 0),
(9, 'steam:110000141f2d55b', 'fish', 0),
(10, 'steam:110000141f2d55b', 'petrol', 0),
(11, 'steam:110000141f2d55b', 'bulletproof', 0),
(12, 'steam:110000141f2d55b', 'wool', 0),
(13, 'steam:110000141f2d55b', 'packaged_chicken', 0),
(14, 'steam:110000141f2d55b', 'diamond', 0),
(15, 'steam:110000141f2d55b', 'gold', 0),
(16, 'steam:110000141f2d55b', 'iron', 0),
(17, 'steam:110000141f2d55b', 'stone', 0),
(18, 'steam:110000141f2d55b', 'petrol_raffin', 0),
(19, 'steam:110000141f2d55b', 'wood', 0),
(20, 'steam:110000141f2d55b', 'copper', 0),
(21, 'steam:110000141f2d55b', 'oxygen_mask', 0),
(22, 'steam:110000141f2d55b', 'firstaidkit', 0),
(23, 'steam:110000141f2d55b', 'clothe', 0),
(24, 'steam:110000141f2d55b', 'cutted_wood', 0),
(25, 'steam:110000141f2d55b', 'water', 0),
(26, 'steam:110000141f2d55b', 'clip', 0),
(27, 'steam:110000141f2d55b', 'clip', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indices de la tabla `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indices de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
