-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/07/2025 às 01:35
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fe`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `produto_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `usuario_id`, `produto_id`, `quantidade`, `created_at`, `updated_at`) VALUES
(7, 1, 177, 3, '2025-06-30 19:18:46', '2025-06-30 19:18:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `estoque` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `imagem`, `estoque`, `categoria`, `descricao`, `video`) VALUES
(164, 'Dell Inspiron 14 5406', 13425.79, '6863132781a5d.jpg', 5, 'custo-benefício', 'vrwvs', 'kn7syVvv7uv'),
(165, 'HP EliteBook 840 G8', 18205.99, '68631456e7130.jpg', 13, 'custo-benefício', 'btebre', 'ZuT3l5z4Afp'),
(166, 'Lenovo IdeaPad 3 15IIL05', 19270.33, '686315510ffe5.jpeg', 9, '2 em 1', 'wffefds', '8UrmqGMBB1a'),
(167, 'Asus VivoBook S14 S433', 16776.30, '68631573a3cde.jpg', 30, 'gamer', 'efwfwefe', '1zyBtK8zryj'),
(168, 'Acer TravelMate P2 TMP214', 5504.37, '68631595f079c.jpg', 23, '2 em 1', 'efw', 'G89WBh0u7jJ'),
(169, 'MSI Modern 14 B11MO', 10047.76, '6863163fd228d.jpg', 28, '2 em 1', 'e', 'ROX5KySN4M8'),
(170, 'Razer Book 13', 9402.02, '6863166abaca4.jpeg', 7, 'gamer', 'ewew', 'FPpPApFhhev'),
(171, 'Samsung Galaxy Book2 Pro', 2875.75, '68631696f3015.png', 6, 'gamer', 'd', '1nG7T5P3hgm'),
(172, 'Huawei MateBook D 14', 17807.56, '686316c67fa3e.jpeg', 29, 'gamer', 'd', 'nldsDsM6ljL'),
(173, 'Microsoft Surface Laptop 4', 2731.44, '686316efe5961.jpg', 14, 'gamer', 'd', 'c56nmEHqY2s'),
(174, 'LG Gram 14Z90P', 18816.82, '68631713f0122.jpeg', 24, '2 em 1', 's', 'fmXyXeY1FjE'),
(175, 'Xiaomi RedmiBook Pro 15', 10565.08, '68631773cd109.jpg', 20, '2 em 1', 's', '7rD2Qim63GB'),
(176, 'Apple MacBook Air M1', 12586.22, '686317563b742.jpg', 5, 'gamer', 'd', 'X5qGlySkwBq'),
(177, 'Dell Latitude 7420', 18551.74, '6863180dd3538.jpg', 26, '2 em 1', 's', 'BBZE6XOfOYM'),
(178, 'HP ZBook Firefly 14', 9149.45, '686318439d50f.jpeg', 29, '2 em 1', 's', 'VmiWAe0LOEu'),
(179, 'Lenovo Yoga Slim 7 Pro', 16850.56, '6863188010266.jpg', 11, 'custo-benefício', 's', 'Wd1fi8FJYeB'),
(180, 'Asus ExpertBook B9 B9400', 11214.01, 'asus_expertbook_b9_b9400.png', 7, 'estudos', 'Asus ExpertBook B9 B9400 com configurações de última geração para atender suas necessidades.', 'b93303ItIEP'),
(181, 'Acer Swift X SFX14', 8238.39, 'acer_swift_x_sfx14.png', 21, 'gamer', 'Acer Swift X SFX14 com configurações de última geração para atender suas necessidades.', 'UddfP5Zbcc7'),
(182, 'MSI Prestige 14 Evo', 15318.11, 'msi_prestige_14_evo.png', 30, 'custo-benefício', 'MSI Prestige 14 Evo com configurações de última geração para atender suas necessidades.', 'Syhs0YUn91d'),
(183, 'Razer Blade Stealth 13', 4119.69, 'razer_blade_stealth_13.png', 29, 'custo-benefício', 'Razer Blade Stealth 13 com configurações de última geração para atender suas necessidades.', 'TKtoc7gnevb'),
(184, 'Samsung Notebook 9 Pro', 11039.24, 'samsung_notebook_9_pro.png', 26, '2 em 1', 'Samsung Notebook 9 Pro com configurações de última geração para atender suas necessidades.', 'C3Fw7OXoydE'),
(185, 'Huawei MateBook X', 5694.93, 'huawei_matebook_x.png', 27, 'gamer', 'Huawei MateBook X com configurações de última geração para atender suas necessidades.', 'uAWzKnLoUJY'),
(186, 'Microsoft Surface Pro 7', 3669.52, 'microsoft_surface_pro_7.png', 29, 'premium', 'Microsoft Surface Pro 7 com configurações de última geração para atender suas necessidades.', 'TvTK8iTEbwH'),
(187, 'LG Gram 17Z90PB', 10599.20, 'lg_gram_17z90pb.png', 23, 'gamer', 'LG Gram 17Z90PB com configurações de última geração para atender suas necessidades.', 'm57Wbf9euSv'),
(188, 'Xiaomi Mi Notebook Air 13', 8430.56, '686317387a5a4.jpg', 21, 'premium', 'd', '9xsdviBL407'),
(189, 'Apple MacBook Pro 13 M2', 18250.16, 'apple_macbook_pro_13_m2.png', 6, 'gamer', 'Apple MacBook Pro 13 M2 com configurações de última geração para atender suas necessidades.', 'yzI5YM6A4VR'),
(190, 'Dell G3 15', 18317.26, 'dell_g3_15.png', 13, 'estudos', 'Dell G3 15 com configurações de última geração para atender suas necessidades.', 'JqzZNy5L13k'),
(191, 'HP Pavilion Gaming 15', 15168.76, 'hp_pavilion_gaming_15.png', 18, 'estudos', 'HP Pavilion Gaming 15 com configurações de última geração para atender suas necessidades.', 'S8FYmT1F1ck'),
(192, 'Lenovo Legion 7 16ACHG6', 17571.70, 'lenovo_legion_7_16achg6.png', 29, '2 em 1', 'Lenovo Legion 7 16ACHG6 com configurações de última geração para atender suas necessidades.', 'ZdgLMduW4dM'),
(193, 'Asus TUF Gaming A15', 19770.87, 'asus_tuf_gaming_a15.png', 22, '2 em 1', 'Asus TUF Gaming A15 com configurações de última geração para atender suas necessidades.', '2Gncuv9xFYM'),
(194, 'Acer Predator Triton 300', 17468.80, 'acer_predator_triton_300.png', 26, 'premium', 'Acer Predator Triton 300 com configurações de última geração para atender suas necessidades.', '1A7cXBrlIi3'),
(195, 'MSI GS66 Stealth', 18242.91, 'msi_gs66_stealth.png', 15, 'gamer', 'MSI GS66 Stealth com configurações de última geração para atender suas necessidades.', 'pXmovjKc1QQ'),
(196, 'Razer Blade 14', 11806.88, 'razer_blade_14.png', 13, 'custo-benefício', 'Razer Blade 14 com configurações de última geração para atender suas necessidades.', 'TBddqf0MxrV'),
(197, 'Samsung Galaxy Book Flex2', 9496.90, 'samsung_galaxy_book_flex2.png', 14, 'custo-benefício', 'Samsung Galaxy Book Flex2 com configurações de última geração para atender suas necessidades.', 'ao5J2nDxkDr'),
(198, 'Huawei MateBook 13', 19862.30, 'huawei_matebook_13.png', 20, '2 em 1', 'Huawei MateBook 13 com configurações de última geração para atender suas necessidades.', 'BGEphGcm5Kw'),
(199, 'Microsoft Surface Go 3', 4739.29, 'microsoft_surface_go_3.png', 29, 'estudos', 'Microsoft Surface Go 3 com configurações de última geração para atender suas necessidades.', '6HP8KrZ3s2u'),
(200, 'LG Ultra PC 15U70N', 4009.18, 'lg_ultra_pc_15u70n.png', 12, 'premium', 'LG Ultra PC 15U70N com configurações de última geração para atender suas necessidades.', 'xPMWiJyuC9v'),
(201, 'Xiaomi Mi Gaming Laptop', 6837.60, 'xiaomi_mi_gaming_laptop.png', 21, 'estudos', 'Xiaomi Mi Gaming Laptop com configurações de última geração para atender suas necessidades.', '58cZ8MF1NYh'),
(202, 'Apple MacBook Pro 16 M2', 17557.72, 'apple_macbook_pro_16_m2.png', 26, '2 em 1', 'Apple MacBook Pro 16 M2 com configurações de última geração para atender suas necessidades.', 'u7rxhbKdN8R'),
(203, 'Dell Vostro 15 3500', 7139.02, 'dell_vostro_15_3500.png', 10, 'estudos', 'Dell Vostro 15 3500 com configurações de última geração para atender suas necessidades.', 'UMWzhhcBlTk'),
(204, 'HP Envy 13', 14955.25, 'hp_envy_13.png', 7, 'premium', 'HP Envy 13 com configurações de última geração para atender suas necessidades.', '8AYqQNy6mYV'),
(205, 'Lenovo ThinkBook 14 G2', 5792.28, 'lenovo_thinkbook_14_g2.png', 15, 'gamer', 'Lenovo ThinkBook 14 G2 com configurações de última geração para atender suas necessidades.', '4r8kjeshFaz'),
(206, 'Asus ZenBook Pro Duo', 4770.86, 'asus_zenbook_pro_duo.png', 19, 'gamer', 'Asus ZenBook Pro Duo com configurações de última geração para atender suas necessidades.', 'Oeyy94iAicW'),
(207, 'Acer Chromebook Spin 713', 15561.16, 'acer_chromebook_spin_713.png', 25, 'premium', 'Acer Chromebook Spin 713 com configurações de última geração para atender suas necessidades.', 'ly29wWVsng2'),
(208, 'MSI Creator Z16', 13516.66, 'msi_creator_z16.png', 18, '2 em 1', 'MSI Creator Z16 com configurações de última geração para atender suas necessidades.', 'K52SD4KHqiL'),
(209, 'Razer Blade Pro 17', 13889.89, 'razer_blade_pro_17.png', 16, '2 em 1', 'Razer Blade Pro 17 com configurações de última geração para atender suas necessidades.', '4ijpbXAjsjb'),
(210, 'Samsung Galaxy Chromebook', 11043.44, 'samsung_galaxy_chromebook.png', 14, 'estudos', 'Samsung Galaxy Chromebook com configurações de última geração para atender suas necessidades.', 's9ZpOoHgt5I'),
(211, 'Huawei MateBook 14', 15733.19, 'huawei_matebook_14.png', 28, 'estudos', 'Huawei MateBook 14 com configurações de última geração para atender suas necessidades.', 'gfrKrQzSM4b'),
(212, 'Microsoft Surface Book 3', 12187.90, 'microsoft_surface_book_3.png', 10, 'premium', 'Microsoft Surface Book 3 com configurações de última geração para atender suas necessidades.', 'F5F5y9ilW8T'),
(213, 'LG Gram 15T', 3893.00, 'lg_gram_15t.png', 19, 'estudos', 'LG Gram 15T com configurações de última geração para atender suas necessidades.', 'PnRw3WPH36o'),
(214, 'Xiaomi Mi Notebook Ultra', 19761.95, 'xiaomi_mi_notebook_ultra.png', 16, '2 em 1', 'Xiaomi Mi Notebook Ultra com configurações de última geração para atender suas necessidades.', 'SKHeq4CP7vu'),
(215, 'Apple MateBook Go-793', 3390.58, 'apple_matebook_go-793.png', 10, 'custo-benefício', 'Apple MateBook Go-793 com configurações de última geração para atender suas necessidades.', 'GEyG47wT8Qd'),
(216, 'Asus Predator 16-552', 3298.18, 'asus_predator_16-552.png', 5, '2 em 1', 'Asus Predator 16-552 com configurações de última geração para atender suas necessidades.', 'Z12KEEgpolq'),
(217, 'Microsoft Inspiron 15-887', 9743.92, 'microsoft_inspiron_15-887.png', 25, 'estudos', 'Microsoft Inspiron 15-887 com configurações de última geração para atender suas necessidades.', 'u9VHHBw6nah'),
(218, 'HP Book 17-331', 8717.62, 'hp_book_17-331.png', 12, '2 em 1', 'HP Book 17-331 com configurações de última geração para atender suas necessidades.', 'pIZN1MN0cd8'),
(219, 'Apple Inspiron 14-764', 18931.44, 'apple_inspiron_14-764.png', 13, 'premium', 'Apple Inspiron 14-764 com configurações de última geração para atender suas necessidades.', 'a3Xle5LcL4k'),
(220, 'HP Spectre 16-351', 18556.19, 'hp_spectre_16-351.png', 17, 'custo-benefício', 'HP Spectre 16-351 com configurações de última geração para atender suas necessidades.', 'S1Bv9j8f69r'),
(221, 'Huawei MateBook Spin-418', 15723.81, 'huawei_matebook_spin-418.png', 11, 'custo-benefício', 'Huawei MateBook Spin-418 com configurações de última geração para atender suas necessidades.', 'G7KUDKBdW7a'),
(222, 'MSI Swift Max-290', 3669.56, 'msi_swift_max-290.png', 16, '2 em 1', 'MSI Swift Max-290 com configurações de última geração para atender suas necessidades.', '34vPmyepBG0'),
(223, 'HP ZenBook 16-104', 12744.29, 'hp_zenbook_16-104.png', 18, '2 em 1', 'HP ZenBook 16-104 com configurações de última geração para atender suas necessidades.', 'cHFCJ5oMW2X'),
(224, 'MSI ZenBook 15-601', 6201.03, 'msi_zenbook_15-601.png', 18, 'custo-benefício', 'MSI ZenBook 15-601 com configurações de última geração para atender suas necessidades.', 'eKjhWFG0Nzz'),
(225, 'Razer Legion 17-967', 8526.65, 'razer_legion_17-967.png', 18, 'premium', 'Razer Legion 17-967 com configurações de última geração para atender suas necessidades.', 'x0RwLat0pXt'),
(226, 'Xiaomi Spectre Ultra-667', 16360.71, 'xiaomi_spectre_ultra-667.png', 6, 'premium', 'Xiaomi Spectre Ultra-667 com configurações de última geração para atender suas necessidades.', 'kB7Oyti9eqS'),
(227, 'Xiaomi MateBook 15-831', 18559.92, 'xiaomi_matebook_15-831.png', 12, '2 em 1', 'Xiaomi MateBook 15-831 com configurações de última geração para atender suas necessidades.', 'QW3hJSiZepW'),
(228, 'Acer Spectre Go-964', 5104.39, 'acer_spectre_go-964.png', 6, 'custo-benefício', 'Acer Spectre Go-964 com configurações de última geração para atender suas necessidades.', 'HFIMiXW5fLa'),
(229, 'Asus Gram Duo-526', 17341.34, 'asus_gram_duo-526.png', 28, 'estudos', 'Asus Gram Duo-526 com configurações de última geração para atender suas necessidades.', 'eBMorYDe4rs'),
(230, 'Lenovo Swift Go-901', 4521.72, 'lenovo_swift_go-901.png', 10, 'gamer', 'Lenovo Swift Go-901 com configurações de última geração para atender suas necessidades.', 'c1RbzucRkUd'),
(231, 'HP Gram 15-772', 5534.51, 'hp_gram_15-772.png', 10, 'gamer', 'HP Gram 15-772 com configurações de última geração para atender suas necessidades.', 'w6C1KyG3X0Y'),
(232, 'Huawei Spectre Spin-103', 16252.73, 'huawei_spectre_spin-103.png', 29, 'gamer', 'Huawei Spectre Spin-103 com configurações de última geração para atender suas necessidades.', 'Tx45YyKgCAK'),
(233, 'Xiaomi MateBook Spin-593', 12001.21, 'xiaomi_matebook_spin-593.png', 12, 'custo-benefício', 'Xiaomi MateBook Spin-593 com configurações de última geração para atender suas necessidades.', 'uSZwKLKUX13'),
(234, 'Huawei Swift Ultra-156', 18533.99, 'huawei_swift_ultra-156.png', 13, 'premium', 'Huawei Swift Ultra-156 com configurações de última geração para atender suas necessidades.', '9w0iEQMKIge'),
(235, 'Lenovo ZenBook Ultra-262', 3769.04, 'lenovo_zenbook_ultra-262.png', 6, 'estudos', 'Lenovo ZenBook Ultra-262 com configurações de última geração para atender suas necessidades.', 'clUmava7Qbo'),
(236, 'Asus Gram 16-531', 8828.79, 'asus_gram_16-531.png', 10, '2 em 1', 'Asus Gram 16-531 com configurações de última geração para atender suas necessidades.', 'o70W4vpxun4'),
(237, 'Microsoft Blade Evo-634', 4489.16, 'microsoft_blade_evo-634.png', 9, 'premium', 'Microsoft Blade Evo-634 com configurações de última geração para atender suas necessidades.', 'QtM9vxB65RO'),
(238, 'HP ZenBook 14-236', 14479.45, 'hp_zenbook_14-236.png', 11, 'gamer', 'HP ZenBook 14-236 com configurações de última geração para atender suas necessidades.', '3l5hiNG9NXW'),
(239, 'Xiaomi Surface Spin-292', 8845.02, 'xiaomi_surface_spin-292.png', 16, 'gamer', 'Xiaomi Surface Spin-292 com configurações de última geração para atender suas necessidades.', 'fxYkTPplFNs'),
(240, 'Xiaomi Legion 17-773', 17551.87, 'xiaomi_legion_17-773.png', 19, 'estudos', 'Xiaomi Legion 17-773 com configurações de última geração para atender suas necessidades.', 'MmJzzD91zwv'),
(241, 'LG Legion 16-613', 7408.75, 'lg_legion_16-613.png', 10, 'estudos', 'LG Legion 16-613 com configurações de última geração para atender suas necessidades.', 'GmAITjcZ7Yf'),
(242, 'MSI Gram 14-269', 7232.90, 'msi_gram_14-269.png', 25, 'estudos', 'MSI Gram 14-269 com configurações de última geração para atender suas necessidades.', '3XMpCiPhpeL'),
(243, 'Acer Surface 14-297', 19190.39, 'acer_surface_14-297.png', 28, '2 em 1', 'Acer Surface 14-297 com configurações de última geração para atender suas necessidades.', 'eotJB20hs3v'),
(244, 'Razer Inspiron Max-517', 9228.86, 'razer_inspiron_max-517.png', 30, 'gamer', 'Razer Inspiron Max-517 com configurações de última geração para atender suas necessidades.', 'YddSRqLCjlb'),
(245, 'Asus Gram Go-717', 15452.95, 'asus_gram_go-717.png', 9, 'gamer', 'Asus Gram Go-717 com configurações de última geração para atender suas necessidades.', '1PdprCx2W6b'),
(246, 'Dell Air 15-208', 6770.27, 'dell_air_15-208.png', 6, 'custo-benefício', 'Dell Air 15-208 com configurações de última geração para atender suas necessidades.', 'QMlwVT4JRUj'),
(247, 'Dell MateBook Max-758', 14627.61, 'dell_matebook_max-758.png', 25, 'custo-benefício', 'Dell MateBook Max-758 com configurações de última geração para atender suas necessidades.', 'U5iZYYeKMQA'),
(248, 'Samsung Gram Duo-873', 15645.16, 'samsung_gram_duo-873.png', 27, 'premium', 'Samsung Gram Duo-873 com configurações de última geração para atender suas necessidades.', 'O6AnOb4cLas'),
(249, 'Acer Gram Ultra-774', 10190.36, 'acer_gram_ultra-774.png', 25, 'custo-benefício', 'Acer Gram Ultra-774 com configurações de última geração para atender suas necessidades.', 'uILivMJIvF7'),
(250, 'HP Gram Duo-576', 6900.43, 'hp_gram_duo-576.png', 11, 'gamer', 'HP Gram Duo-576 com configurações de última geração para atender suas necessidades.', 'aDXPMoCU7Zf'),
(251, 'Samsung Air Evo-912', 14806.53, 'samsung_air_evo-912.png', 13, '2 em 1', 'Samsung Air Evo-912 com configurações de última geração para atender suas necessidades.', '7q7KdTYj6IF'),
(252, 'HP Spectre 15-174', 12180.26, 'hp_spectre_15-174.png', 9, 'custo-benefício', 'HP Spectre 15-174 com configurações de última geração para atender suas necessidades.', 'Wqaf2IEjDEZ'),
(253, 'Lenovo Air Ultra-233', 7610.36, 'lenovo_air_ultra-233.png', 27, '2 em 1', 'Lenovo Air Ultra-233 com configurações de última geração para atender suas necessidades.', 'pkB3rB07Frm'),
(254, 'Lenovo MateBook Go-328', 4957.89, 'lenovo_matebook_go-328.png', 6, 'premium', 'Lenovo MateBook Go-328 com configurações de última geração para atender suas necessidades.', 'RgOSDMg8pjG'),
(255, 'MSI Spectre Max-386', 15906.40, 'msi_spectre_max-386.png', 26, 'estudos', 'MSI Spectre Max-386 com configurações de última geração para atender suas necessidades.', 'sSFfecqUdUv'),
(256, 'Asus Predator 15-874', 4933.10, 'asus_predator_15-874.png', 15, 'estudos', 'Asus Predator 15-874 com configurações de última geração para atender suas necessidades.', '93LxCRZbZnv'),
(257, 'Huawei Predator 14-530', 16042.88, 'huawei_predator_14-530.png', 18, 'custo-benefício', 'Huawei Predator 14-530 com configurações de última geração para atender suas necessidades.', 'hPqL0Elep1S'),
(258, 'Apple Surface Evo-458', 7016.14, 'apple_surface_evo-458.png', 29, 'premium', 'Apple Surface Evo-458 com configurações de última geração para atender suas necessidades.', 'PKLcFxCjoe1'),
(259, 'Lenovo MateBook Ultra-490', 7773.71, 'lenovo_matebook_ultra-490.png', 22, '2 em 1', 'Lenovo MateBook Ultra-490 com configurações de última geração para atender suas necessidades.', 'V6Y37V6lgkg'),
(260, 'Acer Air Go-304', 19242.23, 'acer_air_go-304.png', 20, 'custo-benefício', 'Acer Air Go-304 com configurações de última geração para atender suas necessidades.', 'f4rUV7YdVbN'),
(261, 'HP ZenBook Max-810', 16537.99, 'hp_zenbook_max-810.png', 15, 'premium', 'HP ZenBook Max-810 com configurações de última geração para atender suas necessidades.', 'kxusdfZJF7g'),
(262, 'LG Book 14-784', 10032.30, 'lg_book_14-784.png', 19, 'custo-benefício', 'LG Book 14-784 com configurações de última geração para atender suas necessidades.', 'wYVW59nyg6c'),
(263, 'Dell Inspiron 16-578', 19780.52, 'dell_inspiron_16-578.png', 23, '2 em 1', 'Dell Inspiron 16-578 com configurações de última geração para atender suas necessidades.', 'Uje58pArF8N'),
(264, 'Samsung Air Evo-620', 11467.79, 'samsung_air_evo-620.png', 14, 'custo-benefício', 'Samsung Air Evo-620 com configurações de última geração para atender suas necessidades.', 'BUneXewJB26'),
(265, 'Acer Gram Max-377', 5870.76, 'acer_gram_max-377.png', 18, 'estudos', 'Acer Gram Max-377 com configurações de última geração para atender suas necessidades.', 'RMsaTtHBPDy'),
(266, 'Acer Blade 16-304', 9129.28, 'acer_blade_16-304.png', 19, '2 em 1', 'Acer Blade 16-304 com configurações de última geração para atender suas necessidades.', 'wqILKRn8PTx'),
(267, 'Xiaomi MateBook 14-656', 13015.39, 'xiaomi_matebook_14-656.png', 11, '2 em 1', 'Xiaomi MateBook 14-656 com configurações de última geração para atender suas necessidades.', 'u2Go6TMIJBS'),
(268, 'MSI Legion Core-634', 2881.46, 'msi_legion_core-634.png', 5, '2 em 1', 'MSI Legion Core-634 com configurações de última geração para atender suas necessidades.', 'SpPhOldJLRn'),
(269, 'Samsung Gram Duo-277', 19101.06, 'samsung_gram_duo-277.png', 11, 'premium', 'Samsung Gram Duo-277 com configurações de última geração para atender suas necessidades.', 'GIK56WiZcW8'),
(270, 'Apple Pro Evo-726', 14865.26, 'apple_pro_evo-726.png', 23, '2 em 1', 'Apple Pro Evo-726 com configurações de última geração para atender suas necessidades.', 'tYpmKZlT3x3'),
(271, 'HP ZenBook Core-516', 3780.53, 'hp_zenbook_core-516.png', 13, '2 em 1', 'HP ZenBook Core-516 com configurações de última geração para atender suas necessidades.', 'YDsnEOR3BTW'),
(272, 'MSI Book Core-637', 9490.42, 'msi_book_core-637.png', 19, 'custo-benefício', 'MSI Book Core-637 com configurações de última geração para atender suas necessidades.', 'RhuEaShgFPV'),
(273, 'Lenovo Inspiron 17-609', 12843.82, 'lenovo_inspiron_17-609.png', 12, 'premium', 'Lenovo Inspiron 17-609 com configurações de última geração para atender suas necessidades.', 'GfXGbHRoEAG'),
(274, 'Razer Swift 15-938', 3495.06, 'razer_swift_15-938.png', 7, 'premium', 'Razer Swift 15-938 com configurações de última geração para atender suas necessidades.', '2028pFMjd62'),
(275, 'HP MateBook Ultra-936', 4259.84, 'hp_matebook_ultra-936.png', 6, 'gamer', 'HP MateBook Ultra-936 com configurações de última geração para atender suas necessidades.', 'ofEoK2y6ZwJ'),
(276, 'Lenovo MateBook Go-983', 11727.19, 'lenovo_matebook_go-983.png', 18, 'premium', 'Lenovo MateBook Go-983 com configurações de última geração para atender suas necessidades.', '5EBZf3clFV3'),
(277, 'Razer Spectre 17-363', 17512.49, 'razer_spectre_17-363.png', 13, '2 em 1', 'Razer Spectre 17-363 com configurações de última geração para atender suas necessidades.', 'l3MAQ3ebuX8'),
(278, 'Razer MateBook Go-665', 15281.50, 'razer_matebook_go-665.png', 23, '2 em 1', 'Razer MateBook Go-665 com configurações de última geração para atender suas necessidades.', 'AKwrXOL8385'),
(279, 'LG Pro Go-106', 11885.72, 'lg_pro_go-106.png', 12, 'estudos', 'LG Pro Go-106 com configurações de última geração para atender suas necessidades.', 'uRKx8qBSIzh'),
(280, 'HP Pro Ultra-367', 3384.01, 'hp_pro_ultra-367.png', 9, 'estudos', 'HP Pro Ultra-367 com configurações de última geração para atender suas necessidades.', 'C9eKt3JoiqF'),
(281, 'Asus Air Core-769', 18612.49, 'asus_air_core-769.png', 12, 'gamer', 'Asus Air Core-769 com configurações de última geração para atender suas necessidades.', 'p2IzDzfHM56'),
(282, 'Razer Legion 16-808', 8463.79, 'razer_legion_16-808.png', 15, 'premium', 'Razer Legion 16-808 com configurações de última geração para atender suas necessidades.', 'D2n0Om5N3YD'),
(283, 'Asus Inspiron Evo-175', 17132.62, 'asus_inspiron_evo-175.png', 11, 'custo-benefício', 'Asus Inspiron Evo-175 com configurações de última geração para atender suas necessidades.', 'QNNfeRJqmra'),
(284, 'MSI Surface Spin-811', 17490.04, 'msi_surface_spin-811.png', 5, 'estudos', 'MSI Surface Spin-811 com configurações de última geração para atender suas necessidades.', 'UlRaNH0H7vF'),
(285, 'Huawei Swift Max-528', 11274.86, 'huawei_swift_max-528.png', 27, 'premium', 'Huawei Swift Max-528 com configurações de última geração para atender suas necessidades.', 'K6XgUnnJzSM'),
(286, 'Microsoft Swift Ultra-131', 15130.15, 'microsoft_swift_ultra-131.png', 6, 'estudos', 'Microsoft Swift Ultra-131 com configurações de última geração para atender suas necessidades.', 'Qud6Hka3C92'),
(287, 'Apple Pro Core-616', 12084.61, 'apple_pro_core-616.png', 25, 'premium', 'Apple Pro Core-616 com configurações de última geração para atender suas necessidades.', 'd34hnhA3PvH'),
(288, 'Asus ZenBook Go-189', 7058.42, 'asus_zenbook_go-189.png', 10, '2 em 1', 'Asus ZenBook Go-189 com configurações de última geração para atender suas necessidades.', 'gScavRmaC5E'),
(289, 'Dell ZenBook 17-116', 10376.83, 'dell_zenbook_17-116.png', 19, 'premium', 'Dell ZenBook 17-116 com configurações de última geração para atender suas necessidades.', 'ZRxgpCz6NMz'),
(290, 'Xiaomi Surface 17-361', 12787.56, 'xiaomi_surface_17-361.png', 7, '2 em 1', 'Xiaomi Surface 17-361 com configurações de última geração para atender suas necessidades.', '2bbyDSoZCPm'),
(291, 'MSI Gram 17-643', 13396.67, 'msi_gram_17-643.png', 7, '2 em 1', 'MSI Gram 17-643 com configurações de última geração para atender suas necessidades.', 'ihtFhhgYkI1'),
(292, 'Lenovo ZenBook Ultra-620', 11042.88, 'lenovo_zenbook_ultra-620.png', 15, '2 em 1', 'Lenovo ZenBook Ultra-620 com configurações de última geração para atender suas necessidades.', 'kKsGYSeyFaE'),
(293, 'Razer Air 17-625', 8457.66, 'razer_air_17-625.png', 11, 'premium', 'Razer Air 17-625 com configurações de última geração para atender suas necessidades.', 'RIkD9EJMRhv'),
(294, 'HP MateBook 17-200', 7915.42, 'hp_matebook_17-200.png', 5, 'premium', 'HP MateBook 17-200 com configurações de última geração para atender suas necessidades.', 'S2yV95dlnhB'),
(295, 'Lenovo Spectre 15-894', 7523.78, 'lenovo_spectre_15-894.png', 20, 'premium', 'Lenovo Spectre 15-894 com configurações de última geração para atender suas necessidades.', 'u7QF8z8FNux'),
(296, 'Xiaomi Predator Duo-549', 17751.06, 'xiaomi_predator_duo-549.png', 12, 'custo-benefício', 'Xiaomi Predator Duo-549 com configurações de última geração para atender suas necessidades.', '08p517r3Ilm'),
(297, 'Apple Spectre Core-639', 13001.91, 'apple_spectre_core-639.png', 22, 'gamer', 'Apple Spectre Core-639 com configurações de última geração para atender suas necessidades.', '98gMmZOopls'),
(298, 'Xiaomi Book 17-298', 19134.70, 'xiaomi_book_17-298.png', 26, '2 em 1', 'Xiaomi Book 17-298 com configurações de última geração para atender suas necessidades.', 'GOTHPFzkuGP'),
(299, 'Samsung Legion Core-539', 7996.34, 'samsung_legion_core-539.png', 12, 'estudos', 'Samsung Legion Core-539 com configurações de última geração para atender suas necessidades.', 'qAaP076cDb7'),
(300, 'MSI Pro Evo-123', 12436.42, 'msi_pro_evo-123.png', 9, '2 em 1', 'MSI Pro Evo-123 com configurações de última geração para atender suas necessidades.', 'wWOYP8Jh7E7'),
(301, 'Huawei Spectre Core-638', 17325.33, 'huawei_spectre_core-638.png', 28, 'estudos', 'Huawei Spectre Core-638 com configurações de última geração para atender suas necessidades.', 'grxAcD7rJy6'),
(302, 'Razer MateBook Spin-646', 6581.18, 'razer_matebook_spin-646.png', 5, '2 em 1', 'Razer MateBook Spin-646 com configurações de última geração para atender suas necessidades.', 'mhQpZOGhjVH'),
(303, 'Dell Legion Duo-664', 19093.27, 'dell_legion_duo-664.png', 9, 'estudos', 'Dell Legion Duo-664 com configurações de última geração para atender suas necessidades.', '3ooPGYiN3NZ'),
(304, 'Asus Predator Evo-818', 8743.16, 'asus_predator_evo-818.png', 16, 'premium', 'Asus Predator Evo-818 com configurações de última geração para atender suas necessidades.', '4qs2X55Cen8'),
(305, 'Huawei Book Max-187', 15515.07, 'huawei_book_max-187.png', 9, '2 em 1', 'Huawei Book Max-187 com configurações de última geração para atender suas necessidades.', 'yYlyhwwygan'),
(306, 'Apple Spectre Evo-854', 8548.42, 'apple_spectre_evo-854.png', 30, 'estudos', 'Apple Spectre Evo-854 com configurações de última geração para atender suas necessidades.', 'qXVHg3V9uCi'),
(307, 'Microsoft Blade Go-924', 11849.73, 'microsoft_blade_go-924.png', 25, 'gamer', 'Microsoft Blade Go-924 com configurações de última geração para atender suas necessidades.', 'hNaTbuDb8sS'),
(308, 'MSI Book Max-365', 12000.00, 'msi_book_max-365.png', 23, 'gamer', 'MSI Book Max-365 com configurações de última geração para atender suas necessidades.', 'JPLVX2UADUi'),
(309, 'Apple Pro 14-803', 11556.35, 'apple_pro_14-803.png', 9, 'gamer', 'Apple Pro 14-803 com configurações de última geração para atender suas necessidades.', 'uV2IkjHi1o5'),
(310, 'Huawei Predator Duo-463', 10253.61, 'huawei_predator_duo-463.png', 10, 'estudos', 'Huawei Predator Duo-463 com configurações de última geração para atender suas necessidades.', '9xiuLmc4lTa'),
(311, 'Samsung Inspiron Core-238', 18905.56, 'samsung_inspiron_core-238.png', 15, 'gamer', 'Samsung Inspiron Core-238 com configurações de última geração para atender suas necessidades.', 'XyajcsPOU0z'),
(312, 'LG MateBook Spin-352', 12080.30, 'lg_matebook_spin-352.png', 28, 'gamer', 'LG MateBook Spin-352 com configurações de última geração para atender suas necessidades.', 'kv8KVgWq9Mx'),
(313, 'Microsoft Inspiron Spin-139', 13003.21, 'microsoft_inspiron_spin-139.png', 19, '2 em 1', 'Microsoft Inspiron Spin-139 com configurações de última geração para atender suas necessidades.', 'V1NaBZgbdeJ'),
(314, 'HP Predator Core-392', 12460.87, 'hp_predator_core-392.png', 12, 'gamer', 'HP Predator Core-392 com configurações de última geração para atender suas necessidades.', '9dXZ6SbMmnk'),
(315, 'Acer Gram Ultra-409', 16838.36, 'acer_gram_ultra-409.png', 25, 'premium', 'Acer Gram Ultra-409 com design moderno e desempenho ideal para todas as tarefas.', 'LMpocTkfvJb'),
(316, 'Apple Pro Spin-914', 9922.00, 'apple_pro_spin-914.png', 18, 'premium', 'Apple Pro Spin-914 com design moderno e desempenho ideal para todas as tarefas.', 'jKAVQsCEp0S'),
(317, 'Acer Pro Spin-490', 4261.34, 'acer_pro_spin-490.png', 6, 'gamer', 'Acer Pro Spin-490 com design moderno e desempenho ideal para todas as tarefas.', 'PlKFTirPpTb'),
(318, 'Asus Surface Core-504', 8537.46, 'asus_surface_core-504.png', 22, 'custo-benefício', 'Asus Surface Core-504 com design moderno e desempenho ideal para todas as tarefas.', 'xlCPVca74y9'),
(319, 'Xiaomi Blade Ultra-768', 8134.69, 'xiaomi_blade_ultra-768.png', 17, 'gamer', 'Xiaomi Blade Ultra-768 com design moderno e desempenho ideal para todas as tarefas.', 'MSFCOGeFNLi'),
(320, 'Lenovo MateBook Ultra-168', 10510.99, 'lenovo_matebook_ultra-168.png', 11, 'gamer', 'Lenovo MateBook Ultra-168 com design moderno e desempenho ideal para todas as tarefas.', 'U2OsERHUaas'),
(321, 'Asus Blade 17-422', 4747.69, 'asus_blade_17-422.png', 9, 'gamer', 'Asus Blade 17-422 com design moderno e desempenho ideal para todas as tarefas.', '7P2kKcOHVzx'),
(322, 'Acer ZenBook Go-413', 4155.39, 'acer_zenbook_go-413.png', 5, 'gamer', 'Acer ZenBook Go-413 com design moderno e desempenho ideal para todas as tarefas.', '3N392QYhlfo'),
(323, 'Apple Blade Spin-291', 3252.03, 'apple_blade_spin-291.png', 15, 'gamer', 'Apple Blade Spin-291 com design moderno e desempenho ideal para todas as tarefas.', 'yUxw18ieOZQ'),
(324, 'Microsoft ZenBook 15-367', 7366.87, 'microsoft_zenbook_15-367.png', 18, 'custo-benefício', 'Microsoft ZenBook 15-367 com design moderno e desempenho ideal para todas as tarefas.', 'XnXYxuPkV8z'),
(325, 'LG Air 17-878', 16759.41, 'lg_air_17-878.png', 27, 'estudos', 'LG Air 17-878 com design moderno e desempenho ideal para todas as tarefas.', 'uaaNHzwGsdo'),
(326, 'Microsoft Book Evo-686', 5564.45, 'microsoft_book_evo-686.png', 27, 'gamer', 'Microsoft Book Evo-686 com design moderno e desempenho ideal para todas as tarefas.', 'd3GrmHjwsst'),
(327, 'Microsoft Predator Evo-986', 2862.26, 'microsoft_predator_evo-986.png', 17, 'estudos', 'Microsoft Predator Evo-986 com design moderno e desempenho ideal para todas as tarefas.', 'v514b6ocFSx'),
(328, 'Asus ZenBook 15-379', 11769.73, 'asus_zenbook_15-379.png', 17, 'custo-benefício', 'Asus ZenBook 15-379 com design moderno e desempenho ideal para todas as tarefas.', 'UzVfKvJMAKV'),
(329, 'Huawei Swift 14-529', 17619.34, 'huawei_swift_14-529.png', 25, 'estudos', 'Huawei Swift 14-529 com design moderno e desempenho ideal para todas as tarefas.', 'csNjfQUJqhh'),
(330, 'Huawei Pro Duo-989', 14996.46, 'huawei_pro_duo-989.png', 18, 'estudos', 'Huawei Pro Duo-989 com design moderno e desempenho ideal para todas as tarefas.', 'OoYGW0X8sZl'),
(331, 'Samsung Predator Core-113', 17431.46, 'samsung_predator_core-113.png', 15, 'premium', 'Samsung Predator Core-113 com design moderno e desempenho ideal para todas as tarefas.', 'pjQdfhSH9S8'),
(332, 'MSI Predator Ultra-826', 5848.35, 'msi_predator_ultra-826.png', 15, 'estudos', 'MSI Predator Ultra-826 com design moderno e desempenho ideal para todas as tarefas.', 'wKTGMdTOzH1'),
(333, 'Razer Surface Ultra-375', 10487.77, 'razer_surface_ultra-375.png', 30, 'estudos', 'Razer Surface Ultra-375 com design moderno e desempenho ideal para todas as tarefas.', 'Fk3247ESobP'),
(334, 'Huawei Book Duo-593', 4201.92, 'huawei_book_duo-593.png', 29, '2 em 1', 'Huawei Book Duo-593 com design moderno e desempenho ideal para todas as tarefas.', 'LctkUo6ozav'),
(335, 'Asus Surface 14-287', 9865.56, 'asus_surface_14-287.png', 23, '2 em 1', 'Asus Surface 14-287 com design moderno e desempenho ideal para todas as tarefas.', 'QKJ0mraPwvV'),
(336, 'Xiaomi Gram 14-583', 16023.74, 'xiaomi_gram_14-583.png', 30, 'estudos', 'Xiaomi Gram 14-583 com design moderno e desempenho ideal para todas as tarefas.', 'ImNOLcyPprK'),
(337, 'Asus Predator Duo-482', 8561.44, 'asus_predator_duo-482.png', 19, 'estudos', 'Asus Predator Duo-482 com design moderno e desempenho ideal para todas as tarefas.', 'ic3shvIFMZi'),
(338, 'Huawei Legion Ultra-212', 11000.51, 'huawei_legion_ultra-212.png', 6, '2 em 1', 'Huawei Legion Ultra-212 com design moderno e desempenho ideal para todas as tarefas.', 'sR8zN8Cd8Eq'),
(339, 'Dell Blade Evo-143', 8741.12, 'dell_blade_evo-143.png', 7, 'premium', 'Dell Blade Evo-143 com design moderno e desempenho ideal para todas as tarefas.', 'yLqDzmNxvq5'),
(340, 'MSI MateBook 16-944', 7746.18, 'msi_matebook_16-944.png', 17, '2 em 1', 'MSI MateBook 16-944 com design moderno e desempenho ideal para todas as tarefas.', 'CqJ1OECTPt8'),
(341, 'Xiaomi Surface Max-669', 7442.71, 'xiaomi_surface_max-669.png', 14, '2 em 1', 'Xiaomi Surface Max-669 com design moderno e desempenho ideal para todas as tarefas.', 'WeRcXcyooem'),
(342, 'HP Inspiron Spin-614', 11580.29, 'hp_inspiron_spin-614.png', 10, '2 em 1', 'HP Inspiron Spin-614 com design moderno e desempenho ideal para todas as tarefas.', 'yC65ULBZEvT'),
(343, 'Acer Surface Core-450', 4901.89, 'acer_surface_core-450.png', 9, 'gamer', 'Acer Surface Core-450 com design moderno e desempenho ideal para todas as tarefas.', 'ZJlBu7XcjVt'),
(344, 'MSI Spectre 15-371', 11995.72, 'msi_spectre_15-371.png', 5, 'custo-benefício', 'MSI Spectre 15-371 com design moderno e desempenho ideal para todas as tarefas.', 'sgcPLrZ5I14'),
(345, 'LG Air Evo-398', 2584.69, 'lg_air_evo-398.png', 30, 'estudos', 'LG Air Evo-398 com design moderno e desempenho ideal para todas as tarefas.', 'HO8NQgt7r9a'),
(346, 'Microsoft Inspiron Evo-919', 3656.87, 'microsoft_inspiron_evo-919.png', 25, '2 em 1', 'Microsoft Inspiron Evo-919 com design moderno e desempenho ideal para todas as tarefas.', 'C50qaBNH5W5'),
(347, 'Xiaomi Blade 15-935', 9255.69, 'xiaomi_blade_15-935.png', 13, 'premium', 'Xiaomi Blade 15-935 com design moderno e desempenho ideal para todas as tarefas.', 'boCJhDk47Je'),
(348, 'HP ZenBook Go-255', 12321.69, 'hp_zenbook_go-255.png', 30, 'custo-benefício', 'HP ZenBook Go-255 com design moderno e desempenho ideal para todas as tarefas.', 'OhFRIi5PAXm'),
(349, 'Samsung Blade Ultra-941', 14635.07, 'samsung_blade_ultra-941.png', 11, 'custo-benefício', 'Samsung Blade Ultra-941 com design moderno e desempenho ideal para todas as tarefas.', 'HA9GQrQ6DrJ'),
(350, 'Samsung Air 15-122', 11110.72, 'samsung_air_15-122.png', 8, 'premium', 'Samsung Air 15-122 com design moderno e desempenho ideal para todas as tarefas.', 'EXLzMN2OaGS'),
(351, 'Asus Legion Spin-200', 3146.54, 'asus_legion_spin-200.png', 20, 'gamer', 'Asus Legion Spin-200 com design moderno e desempenho ideal para todas as tarefas.', 'GTy6m8HI7ls'),
(352, 'Dell MateBook Duo-839', 8502.07, 'dell_matebook_duo-839.png', 18, '2 em 1', 'Dell MateBook Duo-839 com design moderno e desempenho ideal para todas as tarefas.', 'fg3VSrZ68RH'),
(353, 'HP ZenBook 15-174', 6265.96, 'hp_zenbook_15-174.png', 23, 'estudos', 'HP ZenBook 15-174 com design moderno e desempenho ideal para todas as tarefas.', 'qrbS0JrRWyx'),
(354, 'HP Air Core-107', 7700.48, 'hp_air_core-107.png', 27, 'gamer', 'HP Air Core-107 com design moderno e desempenho ideal para todas as tarefas.', '6GZaHCdK9re'),
(355, 'Xiaomi Surface 17-890', 9041.67, 'xiaomi_surface_17-890.png', 19, 'gamer', 'Xiaomi Surface 17-890 com design moderno e desempenho ideal para todas as tarefas.', 's2NimkMKO0u'),
(356, 'Lenovo Air 14-979', 8725.28, 'lenovo_air_14-979.png', 23, 'estudos', 'Lenovo Air 14-979 com design moderno e desempenho ideal para todas as tarefas.', 'V2bCXi5pQye'),
(357, 'Asus MateBook 16-333', 16482.52, 'asus_matebook_16-333.png', 8, 'custo-benefício', 'Asus MateBook 16-333 com design moderno e desempenho ideal para todas as tarefas.', 'VEWHktBhhN9'),
(358, 'Microsoft Pro 15-988', 17858.72, 'microsoft_pro_15-988.png', 16, 'premium', 'Microsoft Pro 15-988 com design moderno e desempenho ideal para todas as tarefas.', 'EI3DzXk937I'),
(359, 'Huawei Predator Go-859', 12492.20, 'huawei_predator_go-859.png', 8, 'custo-benefício', 'Huawei Predator Go-859 com design moderno e desempenho ideal para todas as tarefas.', 'vyLHv5mKllO'),
(360, 'Samsung Gram 16-561', 4851.46, 'samsung_gram_16-561.png', 17, 'gamer', 'Samsung Gram 16-561 com design moderno e desempenho ideal para todas as tarefas.', 'BFFLHd6WqEq'),
(361, 'Lenovo Book 14-825', 9480.77, 'lenovo_book_14-825.png', 7, 'estudos', 'Lenovo Book 14-825 com design moderno e desempenho ideal para todas as tarefas.', 'ZfCNIFhAkCt'),
(362, 'Xiaomi Gram Spin-621', 18658.03, 'xiaomi_gram_spin-621.png', 21, 'gamer', 'Xiaomi Gram Spin-621 com design moderno e desempenho ideal para todas as tarefas.', 'i5EkIWzEso9'),
(363, 'Samsung Predator Go-231', 19673.91, 'samsung_predator_go-231.png', 27, 'estudos', 'Samsung Predator Go-231 com design moderno e desempenho ideal para todas as tarefas.', 'GqDpvNsdkES'),
(364, 'Razer ZenBook Go-548', 15910.05, 'razer_zenbook_go-548.png', 24, 'custo-benefício', 'Razer ZenBook Go-548 com design moderno e desempenho ideal para todas as tarefas.', 'EHwLg4l472N'),
(365, 'qfrw', 3243.00, '6863123a3411d.png', 213, 'gamer', 'wrgdgnmjdmfxng', 'zrJXzKvjfbe_YeyK');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'vitin', '4917victorgabrielfbarbosa@gmail.com', '$2y$10$xU5VkIUFB5zcY0LVyO0.duOW9d91hqPdCy1BqnXH1wkquGZa5RjAu'),
(2, 'José', 'despairsray10@gmail.com', '$2y$10$orOvpR7.sITlOpYe/N1uF.8oke.ehaxbYSEZwkh.kQSncPB4Ct4Jm'),
(3, 'junior', 'junior123@gmail.com', '$2y$10$6H0T/HtnooTi2wyd2phhReaSuC3uZJM.45djBnGADDKLpN/IUkboe'),
(4, '3fghtseh', 'uygy@vhbjk.com', '$2y$10$v59stvFDEemdnuixCYPzZebt34nojX0nuIpi8BS4Lxu2gblH/MVbe'),
(5, '3fghtseh', 'uygy@gmail.com', '$2y$10$wlNdZFYX9KVJWBazCylYG.48trhvSPzOm0HomonbZIkJKUVRn0koS'),
(9, 'teste1', 'teste1@gmail.com', '$2y$10$FfHd9qBnQnHH8xGcikk4t.8igbnQMsdd1pc1JjsRqX4vJBmHQh60G'),
(11, 'teste2', 'teste2@gmail.com', '$2y$10$sYJ3elBmjHJy6wTrdzaeSOmOnu9Hjtql6mYUe5bj.aC34ThL8rrHG'),
(12, 'hhgwrgrw', 'hhgwrgrw@gmail.com', '$2y$10$JBk6x2vQUpZWt7ST0sTd/eVuL0eRkac3Pr3V9A7Y1s/E8zm.xJuvG'),
(13, 'teste', 'teste0@gmail.com', '$2y$10$WWN4pHBtwvJjrRfj1GTFF.bUnNNHu8VUDbMMwa3WocEQNUdMFquAu'),
(14, 'Jusé', 'juse@gmail.com', '$2y$10$/qON5z9vOrHo5adCH69N1ejh5xYsvRMguqarm8ZAmokY0fig72RtO'),
(15, 'Teste', 'Teste@gmail.com', '$2y$10$etMoo8ObwYJ2FvJ0bl0AF.NhHCG/SgRecGYs6XxuywWuCCf4F0HD2');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_prod` (`usuario_id`,`produto_id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_produto` (`produto_id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `fk_carrinho_produto` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_carrinho_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
