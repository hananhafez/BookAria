-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2017 at 10:31 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add authors', 7, 'add_authors'),
(20, 'Can change authors', 7, 'change_authors'),
(21, 'Can delete authors', 7, 'delete_authors'),
(22, 'Can add favourites', 8, 'add_favourites'),
(23, 'Can change favourites', 8, 'change_favourites'),
(24, 'Can delete favourites', 8, 'delete_favourites'),
(25, 'Can add followed_ authors', 9, 'add_followed_authors'),
(26, 'Can change followed_ authors', 9, 'change_followed_authors'),
(27, 'Can delete followed_ authors', 9, 'delete_followed_authors'),
(28, 'Can add books', 10, 'add_books'),
(29, 'Can change books', 10, 'change_books'),
(30, 'Can delete books', 10, 'delete_books'),
(31, 'Can add user_ book', 11, 'add_user_book'),
(32, 'Can change user_ book', 11, 'change_user_book'),
(33, 'Can delete user_ book', 11, 'delete_user_book'),
(34, 'Can add catergory', 12, 'add_catergory'),
(35, 'Can change catergory', 12, 'change_catergory'),
(36, 'Can delete catergory', 12, 'delete_catergory'),
(37, 'Can add book_ state', 13, 'add_book_state'),
(38, 'Can change book_ state', 13, 'change_book_state'),
(39, 'Can delete book_ state', 13, 'delete_book_state');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$QxJ0QcnvHvwC$28WpG6XNwS3Yp4IZWAw9eW0SLSvUJ8/qt9gGNreG2Rk=', '2017-04-30 19:07:52.663180', 1, 'vamos', '', '', 'hanan.hafez12@gmail.com', 1, 1, '2017-04-28 08:21:17.834246'),
(2, 'pbkdf2_sha256$36000$bm4gHoXkOvgk$OizKCDosSgbGXrl/CDvk9zw1TIJoug0KnH3i+ygdBIA=', NULL, 0, 'hanan.abozaid', 'hanan', 'abozaid', 'hanan.abozaid12@gmail.com', 0, 1, '2017-04-29 01:32:59.321693');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-04-28 08:28:44.951498', '1', 'Philosophy', 1, '[{"added": {}}]', 12, 1),
(2, '2017-04-28 08:30:32.045412', '1', 'Haruki Murakami', 1, '[{"added": {}}]', 7, 1),
(3, '2017-04-28 08:30:39.557735', '1', 'Kafka on the Shore', 1, '[{"added": {}}]', 10, 1),
(4, '2017-04-28 08:35:00.956991', '2', 'Paulo Coelho', 1, '[{"added": {}}]', 7, 1),
(5, '2017-04-29 03:36:30.718228', '2', 'FANTASY', 1, '[{"added": {}}]', 12, 1),
(6, '2017-04-29 03:36:46.455332', '3', 'HISTORY & BIOGRAPHY', 1, '[{"added": {}}]', 12, 1),
(7, '2017-04-29 03:36:52.936264', '4', 'FICTION', 1, '[{"added": {}}]', 12, 1),
(8, '2017-04-29 03:36:59.844697', '5', 'Classics', 1, '[{"added": {}}]', 12, 1),
(9, '2017-04-29 03:37:07.863433', '6', 'Romance', 1, '[{"added": {}}]', 12, 1),
(10, '2017-04-29 03:37:16.468487', '7', 'Horror', 1, '[{"added": {}}]', 12, 1),
(11, '2017-04-29 03:37:23.379686', '8', 'Crime', 1, '[{"added": {}}]', 12, 1),
(12, '2017-04-29 03:37:32.047020', '9', 'Humor & Comedy', 1, '[{"added": {}}]', 12, 1),
(13, '2017-04-29 03:37:38.184738', '10', 'Science', 1, '[{"added": {}}]', 12, 1),
(14, '2017-04-30 03:18:57.258891', '3', 'test', 1, '[{"added": {}}]', 7, 1),
(15, '2017-04-30 10:29:41.635347', '2', 'test', 1, '[{"added": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'mainApp', 'authors'),
(10, 'mainApp', 'books'),
(13, 'mainApp', 'book_state'),
(12, 'mainApp', 'catergory'),
(8, 'mainApp', 'favourites'),
(9, 'mainApp', 'followed_authors'),
(11, 'mainApp', 'user_book'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-04-28 00:46:15.189277'),
(2, 'auth', '0001_initial', '2017-04-28 00:46:22.943467'),
(3, 'admin', '0001_initial', '2017-04-28 00:46:24.887031'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-04-28 00:46:25.032857'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-04-28 00:46:26.350368'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-04-28 00:46:26.563671'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-04-28 00:46:26.686122'),
(8, 'auth', '0004_alter_user_username_opts', '2017-04-28 00:46:26.752065'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-04-28 00:46:27.288513'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-04-28 00:46:27.322045'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-04-28 00:46:27.384532'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-04-28 00:46:27.824750'),
(13, 'mainApp', '0001_initial', '2017-04-28 00:46:52.822518'),
(14, 'sessions', '0001_initial', '2017-04-28 00:46:53.658478');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jw11kf5yly3m2y1nf4now3rdsumymsjw', 'MTNiMjBmNDAzZjAyNjU1MDI3ZWI0YjMyZjU1MDE1NjBjZGYxNzEzYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjVlOGVmM2JmZmNlYTM0YjFmN2ZiYmFlOTVlZTU5NzdlNWJiMWRiM2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwidXNlciI6Ilt7XCJtb2RlbFwiOiBcImF1dGgudXNlclwiLCBcInBrXCI6IDEsIFwiZmllbGRzXCI6IHtcInBhc3N3b3JkXCI6IFwicGJrZGYyX3NoYTI1NiQzNjAwMCRReEowUWNudkh2d0MkMjhXcEc2WE53UzNZcDRJWldBdzllVzBTTFN2VUo4L3F0OWdHTnJlRzJSaz1cIiwgXCJsYXN0X2xvZ2luXCI6IFwiMjAxNy0wNC0zMFQxOTowNzo1Mi42NjNaXCIsIFwiaXNfc3VwZXJ1c2VyXCI6IHRydWUsIFwidXNlcm5hbWVcIjogXCJ2YW1vc1wiLCBcImZpcnN0X25hbWVcIjogXCJcIiwgXCJsYXN0X25hbWVcIjogXCJcIiwgXCJlbWFpbFwiOiBcImhhbmFuLmhhZmV6MTJAZ21haWwuY29tXCIsIFwiaXNfc3RhZmZcIjogdHJ1ZSwgXCJpc19hY3RpdmVcIjogdHJ1ZSwgXCJkYXRlX2pvaW5lZFwiOiBcIjIwMTctMDQtMjhUMDg6MjE6MTcuODM0WlwiLCBcImdyb3Vwc1wiOiBbXSwgXCJ1c2VyX3Blcm1pc3Npb25zXCI6IFtdfX1dIn0=', '2017-05-14 19:07:52.975965');

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_authors`
--

CREATE TABLE `mainApp_authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `info` longtext NOT NULL,
  `author_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainApp_authors`
--

INSERT INTO `mainApp_authors` (`id`, `name`, `date_of_birth`, `info`, `author_image`) VALUES
(1, 'Haruki Murakami', '1949-04-10', 'Murakami Haruki (Japanese) is a popular contemporary Japanese writer and translator. His work has been described as \'easily accessible, yet profoundly complex\'. \r\nSince childhood, Murakami has been heavily influenced by Western culture, particularly Western music and literature. He grew up reading a range of works by American writers, such as Kurt Vonnegut and Richard Brautigan, and he is often distinguished from other Japanese writers by his Western influences.', '3354.jpg'),
(2, 'Paulo Coelho', '1947-04-09', 'The Brazilian author PAULO COELHO was born in 1947 in the city of Rio de Janeiro. Before dedicating his life completely to literature, he worked as theatre director and actor, lyricist and journalist. In 1986, PAULO COELHO did the pilgrimage to Saint James of Compostella, an experience later to be documented in his book The Pilgrimage. In the following year, COELHO published The Alchemist. Slow initial sales convinced his first publisher to drop the novel, but it went on to become one of the best selling Brazilian books of all time. Other titles include Brida (1990), The Valkyries (1992), By the river Piedra I sat Down and Wept (1994)', '566.jpg'),
(3, 'test', '2017-04-30', 'teeeeeeeeeeest', '11080007_10153174670567744_2313636636239269935_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_books`
--

CREATE TABLE `mainApp_books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `published_at` date NOT NULL,
  `summary` longtext NOT NULL,
  `acc_rate` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `author_id_id` int(11) NOT NULL,
  `category_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainApp_books`
--

INSERT INTO `mainApp_books` (`id`, `title`, `book_image`, `published_at`, `summary`, `acc_rate`, `ISBN`, `author_id_id`, `category_id_id`) VALUES
(1, 'Kafka on the Shore', '4929.jpg', '2006-06-11', 'Kafka on the Shore is powered by two remarkable characters: a teenage boy, Kafka Tamura, who runs away from home either to escape a gruesome oedipal prophecy or to search for his long-missing mother and sister; and an aging simpleton called Nakata, who never recovered from a wartime affliction and now is drawn toward Kafka for reasons that', 4, 1400079, 1, 1),
(2, 'test', 'love.jpg', '2017-04-30', 'teeeeeeeeest', 3, 22222, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_book_state`
--

CREATE TABLE `mainApp_book_state` (
  `id` int(11) NOT NULL,
  `state_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_catergory`
--

CREATE TABLE `mainApp_catergory` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainApp_catergory`
--

INSERT INTO `mainApp_catergory` (`id`, `cat_name`) VALUES
(1, 'Philosophy'),
(2, 'FANTASY'),
(3, 'HISTORY & BIOGRAPHY'),
(4, 'FICTION'),
(5, 'Classics'),
(6, 'Romance'),
(7, 'Horror'),
(8, 'Crime'),
(9, 'Humor & Comedy'),
(10, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_favourites`
--

CREATE TABLE `mainApp_favourites` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_favourites_category_id`
--

CREATE TABLE `mainApp_favourites_category_id` (
  `id` int(11) NOT NULL,
  `favourites_id` int(11) NOT NULL,
  `catergory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_favourites_user_id`
--

CREATE TABLE `mainApp_favourites_user_id` (
  `id` int(11) NOT NULL,
  `favourites_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_followed_authors`
--

CREATE TABLE `mainApp_followed_authors` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_followed_authors_author_id`
--

CREATE TABLE `mainApp_followed_authors_author_id` (
  `id` int(11) NOT NULL,
  `followed_authors_id` int(11) NOT NULL,
  `authors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_followed_authors_user_id`
--

CREATE TABLE `mainApp_followed_authors_user_id` (
  `id` int(11) NOT NULL,
  `followed_authors_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_user_book`
--

CREATE TABLE `mainApp_user_book` (
  `id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_user_book_book_id`
--

CREATE TABLE `mainApp_user_book_book_id` (
  `id` int(11) NOT NULL,
  `user_book_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainApp_user_book_user_id`
--

CREATE TABLE `mainApp_user_book_user_id` (
  `id` int(11) NOT NULL,
  `user_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `mainApp_authors`
--
ALTER TABLE `mainApp_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainApp_books`
--
ALTER TABLE `mainApp_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mainApp_books_author_id_id_4569d3ab_fk_mainApp_authors_id` (`author_id_id`),
  ADD KEY `mainApp_books_category_id_id_753baaab_fk_mainApp_catergory_id` (`category_id_id`);

--
-- Indexes for table `mainApp_book_state`
--
ALTER TABLE `mainApp_book_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainApp_catergory`
--
ALTER TABLE `mainApp_catergory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainApp_favourites`
--
ALTER TABLE `mainApp_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainApp_favourites_category_id`
--
ALTER TABLE `mainApp_favourites_category_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainApp_favourites_categ_favourites_id_catergory__51202d7b_uniq` (`favourites_id`,`catergory_id`),
  ADD KEY `mainApp_favourites_c_catergory_id_ff8ed496_fk_mainApp_c` (`catergory_id`);

--
-- Indexes for table `mainApp_favourites_user_id`
--
ALTER TABLE `mainApp_favourites_user_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainApp_favourites_user_id_favourites_id_user_id_e2c4b0c8_uniq` (`favourites_id`,`user_id`),
  ADD KEY `mainApp_favourites_user_id_user_id_90dc752d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `mainApp_followed_authors`
--
ALTER TABLE `mainApp_followed_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainApp_followed_authors_author_id`
--
ALTER TABLE `mainApp_followed_authors_author_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainApp_followed_authors_followed_authors_id_auth_a8615064_uniq` (`followed_authors_id`,`authors_id`),
  ADD KEY `mainApp_followed_aut_authors_id_7e993d24_fk_mainApp_a` (`authors_id`);

--
-- Indexes for table `mainApp_followed_authors_user_id`
--
ALTER TABLE `mainApp_followed_authors_user_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainApp_followed_authors_followed_authors_id_user_6d2a84e9_uniq` (`followed_authors_id`,`user_id`),
  ADD KEY `mainApp_followed_aut_user_id_a74d6b0a_fk_auth_user` (`user_id`);

--
-- Indexes for table `mainApp_user_book`
--
ALTER TABLE `mainApp_user_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mainApp_user_book_state_id_852f2e30_fk_mainApp_book_state_id` (`state_id`);

--
-- Indexes for table `mainApp_user_book_book_id`
--
ALTER TABLE `mainApp_user_book_book_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainApp_user_book_book_id_user_book_id_books_id_22c3db18_uniq` (`user_book_id`,`books_id`),
  ADD KEY `mainApp_user_book_book_id_books_id_5a31ca93_fk_mainApp_books_id` (`books_id`);

--
-- Indexes for table `mainApp_user_book_user_id`
--
ALTER TABLE `mainApp_user_book_user_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainApp_user_book_user_id_user_book_id_user_id_dff0fe71_uniq` (`user_book_id`,`user_id`),
  ADD KEY `mainApp_user_book_user_id_user_id_cc10626c_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mainApp_authors`
--
ALTER TABLE `mainApp_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mainApp_books`
--
ALTER TABLE `mainApp_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mainApp_book_state`
--
ALTER TABLE `mainApp_book_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_catergory`
--
ALTER TABLE `mainApp_catergory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mainApp_favourites`
--
ALTER TABLE `mainApp_favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_favourites_category_id`
--
ALTER TABLE `mainApp_favourites_category_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_favourites_user_id`
--
ALTER TABLE `mainApp_favourites_user_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_followed_authors`
--
ALTER TABLE `mainApp_followed_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_followed_authors_author_id`
--
ALTER TABLE `mainApp_followed_authors_author_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_followed_authors_user_id`
--
ALTER TABLE `mainApp_followed_authors_user_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_user_book`
--
ALTER TABLE `mainApp_user_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_user_book_book_id`
--
ALTER TABLE `mainApp_user_book_book_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainApp_user_book_user_id`
--
ALTER TABLE `mainApp_user_book_user_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mainApp_books`
--
ALTER TABLE `mainApp_books`
  ADD CONSTRAINT `mainApp_books_author_id_id_4569d3ab_fk_mainApp_authors_id` FOREIGN KEY (`author_id_id`) REFERENCES `mainApp_authors` (`id`),
  ADD CONSTRAINT `mainApp_books_category_id_id_753baaab_fk_mainApp_catergory_id` FOREIGN KEY (`category_id_id`) REFERENCES `mainApp_catergory` (`id`);

--
-- Constraints for table `mainApp_favourites_category_id`
--
ALTER TABLE `mainApp_favourites_category_id`
  ADD CONSTRAINT `mainApp_favourites_c_catergory_id_ff8ed496_fk_mainApp_c` FOREIGN KEY (`catergory_id`) REFERENCES `mainApp_catergory` (`id`),
  ADD CONSTRAINT `mainApp_favourites_c_favourites_id_e91ff7d7_fk_mainApp_f` FOREIGN KEY (`favourites_id`) REFERENCES `mainApp_favourites` (`id`);

--
-- Constraints for table `mainApp_favourites_user_id`
--
ALTER TABLE `mainApp_favourites_user_id`
  ADD CONSTRAINT `mainApp_favourites_u_favourites_id_ea16e121_fk_mainApp_f` FOREIGN KEY (`favourites_id`) REFERENCES `mainApp_favourites` (`id`),
  ADD CONSTRAINT `mainApp_favourites_user_id_user_id_90dc752d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mainApp_followed_authors_author_id`
--
ALTER TABLE `mainApp_followed_authors_author_id`
  ADD CONSTRAINT `mainApp_followed_aut_authors_id_7e993d24_fk_mainApp_a` FOREIGN KEY (`authors_id`) REFERENCES `mainApp_authors` (`id`),
  ADD CONSTRAINT `mainApp_followed_aut_followed_authors_id_8f5a880d_fk_mainApp_f` FOREIGN KEY (`followed_authors_id`) REFERENCES `mainApp_followed_authors` (`id`);

--
-- Constraints for table `mainApp_followed_authors_user_id`
--
ALTER TABLE `mainApp_followed_authors_user_id`
  ADD CONSTRAINT `mainApp_followed_aut_followed_authors_id_ff4735dc_fk_mainApp_f` FOREIGN KEY (`followed_authors_id`) REFERENCES `mainApp_followed_authors` (`id`),
  ADD CONSTRAINT `mainApp_followed_aut_user_id_a74d6b0a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mainApp_user_book`
--
ALTER TABLE `mainApp_user_book`
  ADD CONSTRAINT `mainApp_user_book_state_id_852f2e30_fk_mainApp_book_state_id` FOREIGN KEY (`state_id`) REFERENCES `mainApp_book_state` (`id`);

--
-- Constraints for table `mainApp_user_book_book_id`
--
ALTER TABLE `mainApp_user_book_book_id`
  ADD CONSTRAINT `mainApp_user_book_bo_user_book_id_5462f8b1_fk_mainApp_u` FOREIGN KEY (`user_book_id`) REFERENCES `mainApp_user_book` (`id`),
  ADD CONSTRAINT `mainApp_user_book_book_id_books_id_5a31ca93_fk_mainApp_books_id` FOREIGN KEY (`books_id`) REFERENCES `mainApp_books` (`id`);

--
-- Constraints for table `mainApp_user_book_user_id`
--
ALTER TABLE `mainApp_user_book_user_id`
  ADD CONSTRAINT `mainApp_user_book_us_user_book_id_6ff087aa_fk_mainApp_u` FOREIGN KEY (`user_book_id`) REFERENCES `mainApp_user_book` (`id`),
  ADD CONSTRAINT `mainApp_user_book_user_id_user_id_cc10626c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
