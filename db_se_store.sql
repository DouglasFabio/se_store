-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/06/2023 às 14:49
-- Versão do servidor: 8.0.32
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_se_store`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product');

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'products', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-05 22:43:42.545695'),
(2, 'auth', '0001_initial', '2023-06-05 22:43:49.154051'),
(3, 'admin', '0001_initial', '2023-06-05 22:43:50.666892'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-05 22:43:50.697345'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-05 22:43:50.730240'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-05 22:43:51.167708'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-05 22:43:51.724413'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-05 22:43:51.809408'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-05 22:43:51.838652'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-05 22:43:52.210552'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-05 22:43:52.234602'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-05 22:43:52.262296'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-05 22:43:52.368487'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-05 22:43:52.450118'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-05 22:43:52.559537'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-05 22:43:52.589230'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-05 22:43:52.668748'),
(18, 'products', '0001_initial', '2023-06-05 22:43:52.828280'),
(19, 'products', '0002_product_imgpath', '2023-06-05 22:43:52.993473'),
(20, 'products', '0003_alter_product_imgpath', '2023-06-05 22:43:53.518011'),
(21, 'products', '0004_alter_product_imgpath', '2023-06-05 22:43:53.844742'),
(22, 'sessions', '0001_initial', '2023-06-05 22:43:54.161077');

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `imgpath` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `price`, `text`, `imgpath`) VALUES
(1, 'Accomplished Parrot Cutlass', 50, 'Lunging through the air with this wont make you soar like a parrot, but its a start.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/2/23/Accomplished_Parrot_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210130173857'),
(2, 'Aristocrat Cutlass', 50, 'You may be fancy, but you can put up a fight too with this charming chopper.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/5/52/Aristocrat_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210123023327'),
(3, 'Athena\'s Might Cutlass', 50, 'Becoming a Pirate Legend isn\'t easy, and neither is wielding this heavy sword. Put your back into it!', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/6/6d/Athena%27s_Might_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210415191309'),
(4, 'Barrel Bombardier Cutlass', 24.9, 'Bodged together from the smouldering remains of a weaponsmith\'s workshop, this crude cutlass reeks of gunpowder. And grog.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/6/6b/Barrel_Bombardier_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20220407193255'),
(5, 'Black Dog Cutlass', 75, 'Like a shadowy tongue, flicking out and sucking life. Just don\'t accidentally cut yourself.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/1/15/Black_Dog_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210123023340'),
(6, 'Bleakheart Banshee Cutlass', 24.9, 'A blade honed to cleave a heart as cleanly as that of the forlorn spirit whose family once owned it.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/9/9e/Bleakheart_Banshee_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20220929174706'),
(7, 'Bone Crusher Cutlass', 15, 'This sword cuts right to the bone.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/9/9b/Bone_Crusher_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210123023346'),
(8, 'Briggsy\'s Sword', 50, 'The resplendent sword of the Skeleton Lord Briggsy, as sharp as it is shiny.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/a/ab/Briggsy%27s_Sword.png/revision/latest/scale-to-width-down/1000?cb=20210123023353'),
(9, 'Captain Bones\' Original Pirate Cutlass', 75, 'This vicious sharp-tongued cutlass is a trophy of a year well-spent in pirate paradise.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/b/bd/Captain_Bones%27_Original_Pirate_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210123023400'),
(10, 'Crimson Crypt Cutlass', 24.9, 'Wielders of this scarlet-edged blade gain an insatiable thirst for red liquid. Here’s hoping it’s pomegranate juice.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/c/c3/Crimson_Crypt_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20211014185048'),
(11, 'Cronch Cutlass', 24.9, 'Peel back for a mighty swing and take a bite out of your enemies.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/a/ae/Cronch_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210123023420'),
(12, 'Cursed Adventurer Cutlass', 50, 'A gem-studded, gold-bladed weapon inspired by the legend of Captain Briggsy. It never asked to be curved!', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/f/f6/Cursed_Adventurer_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210923193842'),
(13, 'Cursed Ferryman Cutlass', 24.9, 'The handle is shaped like a cephalopod. The blade is shaped like something sharp and pointy.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/c/c9/Cursed_Ferryman_Cutlass.png/revision/latest/scale-to-width-down/1000?cb=20210817180909'),
(14, 'Cutlass of Courage', 50, 'The Cutlass of Courage is so named because it\'s actually terribly blunt.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/4/49/Cutlass_of_Courage.png/revision/latest/scale-to-width-down/1000?cb=20210123023426'),
(15, 'Cutlass of the Damned', 75, 'A pirate who seriously mistimed their sword lunge took this weapon with them to the Ferry, and left it there.', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/5/50/Cutlass_of_the_Damned.png/revision/latest/scale-to-width-down/1000?cb=20221203120251'),
(16, 'Cutlass of The Wailing Barnacle', 15, 'From the wreck of the Wailing Barnacle, this blade seems fun but has a treacherous legacy...', 'https://static.wikia.nocookie.net/seaofthieves_gamepedia/images/1/1e/Cutlass_of_The_Wailing_Barnacle.png/revision/latest/scale-to-width-down/1000?cb=20210123023439');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices de tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices de tabela `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Restrições para tabelas `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Restrições para tabelas `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Restrições para tabelas `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Restrições para tabelas `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
