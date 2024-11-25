-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-11-2024 a las 05:37:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `freshCoffe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `icono` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `icono`, `created_at`, `updated_at`) VALUES
(1, 'Café', 'cafe', '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(2, 'Hamburguesas', 'hamburguesa', '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(3, 'Pizzas', 'pizza', '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(4, 'Donas', 'dona', '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(5, 'Pasteles', 'pastel', '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(6, 'Galletas', 'galletas', '2024-11-22 01:46:44', '2024-11-22 01:46:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2024_11_20_211018_create_categorias_table', 1),
(12, '2024_11_21_184646_create_productos_table', 1),
(13, '2024_11_23_200336_create_pedidos_table', 2),
(14, '2024_11_23_203924_create_pedido_productos_table', 3),
(15, '2024_11_24_061145_add_admin_column_to_users_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `user_id`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(19, 8, 279.6, 0, '2024-11-25 10:21:07', '2024-11-25 10:21:07'),
(20, 11, 179.6, 0, '2024-11-25 10:33:36', '2024-11-25 10:33:36'),
(21, 10, 199.6, 0, '2024-11-25 10:34:55', '2024-11-25 10:34:55'),
(22, 12, 179.5, 0, '2024-11-25 10:36:22', '2024-11-25 10:36:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_productos`
--

CREATE TABLE `pedido_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pedido_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido_productos`
--

INSERT INTO `pedido_productos` (`id`, `pedido_id`, `producto_id`, `cantidad`, `created_at`, `updated_at`) VALUES
(30, 19, 54, 3, '2024-11-25 10:21:07', '2024-11-25 10:21:07'),
(31, 19, 57, 1, '2024-11-25 10:21:07', '2024-11-25 10:21:07'),
(32, 20, 10, 1, '2024-11-25 10:33:36', '2024-11-25 10:33:36'),
(33, 20, 44, 2, '2024-11-25 10:33:36', '2024-11-25 10:33:36'),
(34, 20, 12, 1, '2024-11-25 10:33:36', '2024-11-25 10:33:36'),
(35, 21, 41, 1, '2024-11-25 10:34:56', '2024-11-25 10:34:56'),
(36, 21, 42, 1, '2024-11-25 10:34:56', '2024-11-25 10:34:56'),
(37, 21, 6, 2, '2024-11-25 10:34:56', '2024-11-25 10:34:56'),
(38, 22, 25, 1, '2024-11-25 10:36:22', '2024-11-25 10:36:22'),
(39, 22, 22, 2, '2024-11-25 10:36:22', '2024-11-25 10:36:22'),
(40, 22, 48, 2, '2024-11-25 10:36:22', '2024-11-25 10:36:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 3, 'token', '819cd336aaf892d2e1143ddb29197a0a3c1fc350627188943cf7a23e09de7661', '[\"*\"]', NULL, NULL, '2024-11-23 03:38:33', '2024-11-23 03:38:33'),
(4, 'App\\Models\\User', 4, 'token', '1e381f656d0a63a184820062abe673d2c524af2288220de0665b4c25223cc2c6', '[\"*\"]', '2024-11-23 04:02:31', NULL, '2024-11-23 04:01:52', '2024-11-23 04:02:31'),
(5, 'App\\Models\\User', 4, 'token', '2300fdadbaa131710ed0f6236ec57bfcdc2c1e9118a399e906ce954cb0047dc0', '[\"*\"]', NULL, NULL, '2024-11-23 12:40:18', '2024-11-23 12:40:18'),
(6, 'App\\Models\\User', 4, 'token', '1f85aa62a0b70eaa29aa78063b8462c7fb13cabd1a992276589e74cfac67643e', '[\"*\"]', NULL, NULL, '2024-11-23 12:41:32', '2024-11-23 12:41:32'),
(7, 'App\\Models\\User', 4, 'token', 'a13fdf7b2498b4dfa27644b3f1a3366b5b90cf531ba6c19501db8de96a8b2400', '[\"*\"]', NULL, NULL, '2024-11-23 13:37:11', '2024-11-23 13:37:11'),
(8, 'App\\Models\\User', 4, 'token', '340cdd69bba04bf3ae44c0d8f428468982d772aa3cb02b249f3feae3560b54df', '[\"*\"]', NULL, NULL, '2024-11-23 13:37:29', '2024-11-23 13:37:29'),
(9, 'App\\Models\\User', 4, 'token', 'c5ccf126255c825c024b9160da801325ce10d21c78e2190125304460f286cd2e', '[\"*\"]', NULL, NULL, '2024-11-23 13:38:12', '2024-11-23 13:38:12'),
(10, 'App\\Models\\User', 4, 'token', 'e08e9255ccd63f01ccc7f6119543fba17321d1cf9ed76f44190188af27989ac4', '[\"*\"]', NULL, NULL, '2024-11-23 13:38:48', '2024-11-23 13:38:48'),
(11, 'App\\Models\\User', 4, 'token', '5e942734ecff6e0dd8333e0277236f173320378ab50f2d461e8a36cb13d7f4c3', '[\"*\"]', NULL, NULL, '2024-11-23 13:39:09', '2024-11-23 13:39:09'),
(12, 'App\\Models\\User', 4, 'token', '65d3cf583866ceefce4958c8ad8bc5a0980f41e0cae7aa82720c87f7bf0ebea9', '[\"*\"]', NULL, NULL, '2024-11-23 13:40:31', '2024-11-23 13:40:31'),
(13, 'App\\Models\\User', 4, 'token', '5cb25d20b051a856e7b584e76985549b08155d5799d5cb43378c27bd6e190951', '[\"*\"]', '2024-11-23 14:36:00', NULL, '2024-11-23 13:40:32', '2024-11-23 14:36:00'),
(14, 'App\\Models\\User', 4, 'token', '0f273fcbb43a5ba99177c2a82479a5fc80f54bebb224515552df8d183cad2f1e', '[\"*\"]', NULL, NULL, '2024-11-23 13:41:22', '2024-11-23 13:41:22'),
(15, 'App\\Models\\User', 4, 'token', '38a80f4147378fb114705435f7b3a6c3e9ba9738021d4445fc696dc71ba06491', '[\"*\"]', '2024-11-23 14:06:22', NULL, '2024-11-23 13:50:11', '2024-11-23 14:06:22'),
(16, 'App\\Models\\User', 4, 'token', '21a4d3a03717de9fdc99cb87a6dfba5b9e6b4fbe3b4b21ac6b316a92e55b7393', '[\"*\"]', '2024-11-23 14:06:32', NULL, '2024-11-23 14:06:22', '2024-11-23 14:06:32'),
(17, 'App\\Models\\User', 4, 'token', '86c2e2bc8c6e5232387107bab4c590400fa42b6a35e60e77132cc87b8f7d5436', '[\"*\"]', '2024-11-23 14:06:33', NULL, '2024-11-23 14:06:32', '2024-11-23 14:06:33'),
(18, 'App\\Models\\User', 4, 'token', '5d30bb6c8dfd8b146671539de5a08b5a63e5a1bf3675fdbaae311a39825edf54', '[\"*\"]', '2024-11-23 14:08:01', NULL, '2024-11-23 14:06:33', '2024-11-23 14:08:01'),
(19, 'App\\Models\\User', 4, 'token', 'c153d0d82bd2f361c68ac4fb60f87790d2ffbfff3960ae205d133008e7d933e9', '[\"*\"]', '2024-11-23 14:08:46', NULL, '2024-11-23 14:08:01', '2024-11-23 14:08:46'),
(20, 'App\\Models\\User', 4, 'token', '2fb2b973ca8a5f054825f8e25fef7102f8801580d108557ff9715961b0f5af87', '[\"*\"]', '2024-11-23 14:08:49', NULL, '2024-11-23 14:08:46', '2024-11-23 14:08:49'),
(21, 'App\\Models\\User', 4, 'token', '893323783ccfc7c559ce4fedcc08b03b419fb93847f48f30cb33654063736c85', '[\"*\"]', '2024-11-23 14:10:18', NULL, '2024-11-23 14:08:49', '2024-11-23 14:10:18'),
(22, 'App\\Models\\User', 4, 'token', '541c609c89a1acd88de8e5b8d8c16302a4fe7e87449b6adac9346e457904da3b', '[\"*\"]', '2024-11-23 14:10:26', NULL, '2024-11-23 14:10:18', '2024-11-23 14:10:26'),
(23, 'App\\Models\\User', 4, 'token', 'e6a1adabe24fa2551a920f28553ed2a87f994a48d6c0a89218d3f8ddc416c7fe', '[\"*\"]', '2024-11-23 14:11:31', NULL, '2024-11-23 14:10:26', '2024-11-23 14:11:31'),
(24, 'App\\Models\\User', 4, 'token', 'a521e8e94369c7825882e307da8a2740506ca288cd74458a23577dc8b902400b', '[\"*\"]', '2024-11-23 14:14:25', NULL, '2024-11-23 14:11:31', '2024-11-23 14:14:25'),
(25, 'App\\Models\\User', 4, 'token', 'ac25aa98494ea2baba67e4850ee413abf372fa0059b1412dab36ef9b88abdfe7', '[\"*\"]', '2024-11-23 14:14:50', NULL, '2024-11-23 14:14:25', '2024-11-23 14:14:50'),
(26, 'App\\Models\\User', 4, 'token', '52daeb77c24379315a2c9e94515a148400ca5566e431ab0a46f5fd0a7c5258b0', '[\"*\"]', '2024-11-23 14:15:11', NULL, '2024-11-23 14:14:50', '2024-11-23 14:15:11'),
(27, 'App\\Models\\User', 4, 'token', '6117759c3db8a2b9a8a6e6c4582b6a260442d290e88b490aadc1e9f306da7eb3', '[\"*\"]', '2024-11-23 14:20:10', NULL, '2024-11-23 14:15:11', '2024-11-23 14:20:10'),
(28, 'App\\Models\\User', 4, 'token', '0b3235c8b7306ee6aaab68485fb6e72ec0fb4215347efc222f54e4de38ba3177', '[\"*\"]', '2024-11-23 14:21:11', NULL, '2024-11-23 14:20:09', '2024-11-23 14:21:11'),
(29, 'App\\Models\\User', 4, 'token', '26707a988edbe980092d66524279476bb00119af769eafd7132c6831e0807687', '[\"*\"]', '2024-11-23 14:22:43', NULL, '2024-11-23 14:21:11', '2024-11-23 14:22:43'),
(30, 'App\\Models\\User', 4, 'token', 'bd150fccdb102d376d39cc2d23009293ced5187c30093eee1af80515843653d9', '[\"*\"]', '2024-11-23 14:23:07', NULL, '2024-11-23 14:22:42', '2024-11-23 14:23:07'),
(31, 'App\\Models\\User', 4, 'token', '6fec04bd9edd651a02981bb2a0f3c55f99de89a4194e7443c46f32aa85abc11c', '[\"*\"]', '2024-11-23 14:23:09', NULL, '2024-11-23 14:23:07', '2024-11-23 14:23:09'),
(32, 'App\\Models\\User', 4, 'token', '303a9d53e1f86954de440db475ec33ffe3e91b9e59b70ab432f617d838661ea5', '[\"*\"]', '2024-11-23 14:23:12', NULL, '2024-11-23 14:23:09', '2024-11-23 14:23:12'),
(33, 'App\\Models\\User', 4, 'token', '86abbc7cc4ca9d0e8b8bd3c947e8e57e821e07f37d582a3c49cb0eab12eb6628', '[\"*\"]', '2024-11-23 14:23:36', NULL, '2024-11-23 14:23:12', '2024-11-23 14:23:36'),
(34, 'App\\Models\\User', 4, 'token', '28c8a9110243fe67796a80605c938d463ab80801b80300587843d28089f4f448', '[\"*\"]', '2024-11-24 00:42:36', NULL, '2024-11-23 14:23:36', '2024-11-24 00:42:36'),
(35, 'App\\Models\\User', 4, 'token', '485b29c3fdd9321ec57786159ec0a66436aa17576f0952836910d4b9eba47164', '[\"*\"]', '2024-11-24 00:42:37', NULL, '2024-11-24 00:42:35', '2024-11-24 00:42:37'),
(36, 'App\\Models\\User', 4, 'token', 'd0c359af8aa16af6e380b645b2af29ed464db01b087417e11a43ce58f78e71bf', '[\"*\"]', '2024-11-24 00:43:07', NULL, '2024-11-24 00:42:37', '2024-11-24 00:43:07'),
(37, 'App\\Models\\User', 4, 'token', '34723a41f2279d8e52f8e6c503f16e6b750143009b1318cc9dae29c09dbdc46b', '[\"*\"]', '2024-11-24 00:43:30', NULL, '2024-11-24 00:43:06', '2024-11-24 00:43:30'),
(38, 'App\\Models\\User', 4, 'token', '8a3bc2de27ce406d0a78a913758b58fb8389618c59f78025469857079dc5fb94', '[\"*\"]', '2024-11-24 00:44:17', NULL, '2024-11-24 00:43:41', '2024-11-24 00:44:17'),
(39, 'App\\Models\\User', 4, 'token', '673a95efbba153c861f978985d1c425680b54fbeddfd2a1fc6567bfbb1270a63', '[\"*\"]', '2024-11-24 00:57:18', NULL, '2024-11-24 00:45:09', '2024-11-24 00:57:18'),
(41, 'App\\Models\\User', 4, 'token', '9c99b1f4a08b1e21c1159a2cf9f1ce433a100b6b95e5e4216a1f0c06cc96ad3c', '[\"*\"]', '2024-11-24 01:37:40', NULL, '2024-11-24 01:37:37', '2024-11-24 01:37:40'),
(50, 'App\\Models\\User', 5, 'token', 'bba8b39e620aa86d160174be8bd031675c4bc5b20ac77b4639d8905bd2e29991', '[\"*\"]', '2024-11-25 07:23:30', NULL, '2024-11-25 07:23:28', '2024-11-25 07:23:30'),
(52, 'App\\Models\\User', 5, 'token', '7b488a69401502c09a59be72b777a8f2a85d69a7e45dc03989168133de32cb5a', '[\"*\"]', '2024-11-25 08:42:01', NULL, '2024-11-25 08:41:54', '2024-11-25 08:42:01'),
(54, 'App\\Models\\User', 5, 'token', 'a1d11a46ac31a72b7b3d5034791c09470a24dad96184f61cc79f273f0a5fa2b3', '[\"*\"]', '2024-11-25 08:42:56', NULL, '2024-11-25 08:42:54', '2024-11-25 08:42:56'),
(56, 'App\\Models\\User', 5, 'token', 'fbff5e02f55db28ed3796ea3d15ba0fffaefa865c9302e0bd599190881224f32', '[\"*\"]', '2024-11-25 08:43:24', NULL, '2024-11-25 08:43:21', '2024-11-25 08:43:24'),
(58, 'App\\Models\\User', 5, 'token', '9028b964c1ec2d0d2b8fef68cd8ff3ddafa7d25fb135c7b32410a1aec858a4b0', '[\"*\"]', '2024-11-25 08:43:44', NULL, '2024-11-25 08:43:43', '2024-11-25 08:43:44'),
(60, 'App\\Models\\User', 4, 'token', '6554fd6d9abf2034d610fbac4224b3ef55b44632b82bd77404678d7ba8668fb1', '[\"*\"]', '2024-11-25 08:44:01', NULL, '2024-11-25 08:44:00', '2024-11-25 08:44:01'),
(62, 'App\\Models\\User', 5, 'token', 'e170932a0d6de72e826feac1bd04ede2eb6778bef77c9ee804e62eb4a8536388', '[\"*\"]', '2024-11-25 08:45:53', NULL, '2024-11-25 08:45:52', '2024-11-25 08:45:53'),
(68, 'App\\Models\\User', 7, 'token', 'ef11239cf06342399a1102cac227d0625d9b15c08ed966418d337099e026324f', '[\"*\"]', '2024-11-25 08:55:18', NULL, '2024-11-25 08:55:13', '2024-11-25 08:55:18'),
(71, 'App\\Models\\User', 6, 'token', '980b25aa2284b914c58d58f0d234233d86b14b62f2907bff69f29c40c4f86773', '[\"*\"]', '2024-11-25 08:56:33', NULL, '2024-11-25 08:56:29', '2024-11-25 08:56:33'),
(74, 'App\\Models\\User', 4, 'token', '9b432b0790815efcdf13d22412744abd933e0146a212827dacc244c7f80fc4d1', '[\"*\"]', '2024-11-25 08:59:51', NULL, '2024-11-25 08:59:40', '2024-11-25 08:59:51'),
(75, 'App\\Models\\User', 4, 'token', 'e1deb11d63ddc6dbb7ea1e87693d7d9001663b2e96bac26589915507a14865f6', '[\"*\"]', '2024-11-25 09:00:25', NULL, '2024-11-25 08:59:46', '2024-11-25 09:00:25'),
(80, 'App\\Models\\User', 8, 'token', '62f084177ba8642a4601f5f1cc7792d0a944049b77817f368e31da986dac17a0', '[\"*\"]', '2024-11-25 09:31:21', NULL, '2024-11-25 09:31:13', '2024-11-25 09:31:21'),
(82, 'App\\Models\\User', 9, 'token', '2f6932857f433d24ba71da98934b6ae332cab91a10390d9672ca0aa416438713', '[\"*\"]', '2024-11-25 10:36:35', NULL, '2024-11-25 09:33:36', '2024-11-25 10:36:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `imagen`, `disponible`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Café Caramel con Chocolate', 59.9, 'cafe_01', 1, 1, '2024-11-22 01:46:44', '2024-11-24 14:49:22'),
(2, 'Café Frio con Chocolate Grande', 49.9, 'cafe_02', 1, 1, '2024-11-22 01:46:44', '2024-11-24 14:49:29'),
(3, 'Latte Frio con Chocolate Grande', 54.9, 'cafe_03', 1, 1, '2024-11-22 01:46:44', '2024-11-24 14:49:33'),
(4, 'Latte Frio con Chocolate Grande', 54.9, 'cafe_04', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(5, 'Malteada Fria con Chocolate Grande', 54.9, 'cafe_05', 1, 1, '2024-11-22 01:46:44', '2024-11-25 08:46:15'),
(6, 'Café Mocha Caliente Chico', 39.9, 'cafe_06', 1, 1, '2024-11-22 01:46:44', '2024-11-25 08:46:22'),
(7, 'Café Mocha Caliente Grande con Chocolate', 59.9, 'cafe_07', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(8, 'Café Caliente Capuchino Grande', 59.9, 'cafe_08', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(9, 'Café Mocha Caliente Mediano', 49.9, 'cafe_09', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(10, 'Café Mocha Frio con Caramelo Mediano', 49.9, 'cafe_10', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(11, 'Café Mocha Frio con Chocolate Mediano', 49.9, 'cafe_11', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(12, 'Café Espresso', 29.9, 'cafe_12', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(13, 'Café Capuchino Grande con Caramelo', 59.9, 'cafe_13', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(14, 'Café Caramelo Grande', 59.9, 'cafe_14', 1, 1, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(15, 'Paquete de 3 donas de Chocolate', 39.9, 'donas_01', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(16, 'Paquete de 3 donas Glaseadas', 39.9, 'donas_02', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(17, 'Dona de Fresa', 19.9, 'donas_03', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(18, 'Dona con Galleta de Chocolate', 19.9, 'donas_04', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(19, 'Dona glass con Chispas Sabor Fresa', 19.9, 'donas_05', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(20, 'Dona glass con Chocolate', 19.9, 'donas_06', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(21, 'Dona de Chocolate con MÁS Chocolate', 19.9, 'donas_07', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(22, 'Paquete de 3 donas de Chocolate', 39.9, 'donas_08', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(23, 'Paquete de 3 donas con Vainilla y Chocolate', 39.9, 'donas_09', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(24, 'Paquete de 6 Donas', 69.9, 'donas_10', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(25, 'Paquete de 3 Variadas', 39.9, 'donas_11', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(26, 'Dona Natural con Chocolate', 19.9, 'donas_12', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(27, 'Paquete de 3 Donas de Chocolate con Chispas', 39.9, 'donas_13', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(28, 'Dona Chocolate y Coco', 19.9, 'donas_14', 1, 4, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(29, 'Paquete Galletas de Chocolate', 29.9, 'galletas_01', 1, 6, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(30, 'Paquete Galletas de Chocolate y Avena', 39.9, 'galletas_02', 1, 6, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(31, 'Paquete de Muffins de Vainilla', 39.9, 'galletas_03', 1, 6, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(32, 'Paquete de 4 Galletas de Avena', 24.9, 'galletas_04', 1, 6, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(33, 'Galletas de Mantequilla Variadas', 39.9, 'galletas_05', 1, 6, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(34, 'Galletas de sabores frutales', 39.9, 'galletas_06', 1, 6, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(35, 'Hamburguesa Sencilla', 59.9, 'hamburguesas_01', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(36, 'Hamburguesa de Pollo', 59.9, 'hamburguesas_02', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(37, 'Hamburguesa de Pollo y Chili', 59.9, 'hamburguesas_03', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(38, 'Hamburguesa Queso y Pepinos', 59.9, 'hamburguesas_04', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(39, 'Hamburguesa Cuarto de Libra', 59.9, 'hamburguesas_05', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(40, 'Hamburguesa Doble Queso', 69.9, 'hamburguesas_06', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(41, 'Hot Dog Especial', 49.9, 'hamburguesas_07', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(42, 'Paquete 2 Hot Dogs', 69.9, 'hamburguesas_08', 1, 2, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(43, '4 Rebanadas de Pay de Queso', 69.9, 'pastel_01', 1, 5, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(44, 'Waffle Especial', 49.9, 'pastel_02', 1, 5, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(45, 'Croissants De la casa', 39.9, 'pastel_03', 1, 5, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(46, 'Pay de Queso', 19.9, 'pastel_04', 1, 5, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(47, 'Pastel de Chocolate', 29.9, 'pastel_05', 1, 5, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(48, 'Rebanada Pastel de Chocolate', 29.9, 'pastel_06', 1, 5, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(49, 'Pizza Spicy con Doble Queso', 69.9, 'pizzas_01', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(50, 'Pizza Jamón y Queso', 69.9, 'pizzas_02', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(51, 'Pizza Doble Queso', 69.9, 'pizzas_03', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(52, 'Pizza Especial de la Casa', 69.9, 'pizzas_04', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(53, 'Pizza Chorizo', 69.9, 'pizzas_05', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(54, 'Pizza Hawaiana', 69.9, 'pizzas_06', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(55, 'Pizza Tocino', 69.9, 'pizzas_07', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(56, 'Pizza Vegetales y Queso', 69.9, 'pizzas_08', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(57, 'Pizza Pepperoni y Queso', 69.9, 'pizzas_09', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(58, 'Pizza Aceitunas y Queso', 69.9, 'pizzas_10', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44'),
(59, 'Pizza Queso, Jamón y Champiñones', 69.9, 'pizzas_11', 1, 3, '2024-11-22 01:46:44', '2024-11-22 01:46:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(8, 'Miguel Angel', 'user@user.com', NULL, '$2y$10$nL7CLpmdeVTjdnQhdZurkenmUV9tR4QqFuWmBWBsAicVT7/oSGFdy', NULL, '2024-11-25 09:04:35', '2024-11-25 09:04:35', 0),
(9, 'Admin', 'admin@admin.com', NULL, '$2y$10$pBgVQCOBTDLJqLMog/3vmOjcmJa8rVFny9J5.fyJLa.bRh0D/yuc6', NULL, '2024-11-25 09:06:43', '2024-11-25 09:06:43', 1),
(10, 'Evelin', 'user1@user.com', NULL, '$2y$10$nL7CLpmdeVTjdnQhdZurkenmUV9tR4QqFuWmBWBsAicVT7/oSGFdy', NULL, '2024-11-25 09:04:35', '2024-11-25 09:04:35', 0),
(11, 'Tania', 'user2@user.com', NULL, '$2y$10$nL7CLpmdeVTjdnQhdZurkenmUV9tR4QqFuWmBWBsAicVT7/oSGFdy', NULL, '2024-11-25 09:04:35', '2024-11-25 09:04:35', 0),
(12, 'Laura', 'user3@user.com', NULL, '$2y$10$nL7CLpmdeVTjdnQhdZurkenmUV9tR4QqFuWmBWBsAicVT7/oSGFdy', NULL, '2024-11-25 09:04:35', '2024-11-25 09:04:35', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_productos_pedido_id_foreign` (`pedido_id`),
  ADD KEY `pedido_productos_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD CONSTRAINT `pedido_productos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
