-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2024 at 05:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ak_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `submit_date` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Yangon', 'Walk the streets of old Yangon to see leafy lanes and byways filled with enormous timber mansions decorated in the unique Myanmar style, where British captains of industry once lived. See century-old buildings with magnificent architecture, which act as reminders of Yangon\'s past. The number of colonial buildings still standing in downtown Yangon is nothing short of spectacular. Myanmar\'s isolation from the rest of the world during the years after independence resulted in a level of preservation that is unique in the region. It is heartening to see that at last, some of them are being restored to their former beauty. Yangon\'s colonial streets are a showcase of the best, or most ostentatious, of colonial architecture an exuberant display of wealth and designer dexterity. The influence of Victorian and Edwardian architectural details made a deep impression on the local and Indian craftsmen, who embraced the styles wholeheartedly. Buildings developed an amazing hybrid style that resulted in an array of curlicue trims and turrets along with copulas and pergolas that adorn so many of the early buildings. Carved wood trims were also popular, all adding together to form an extraordinary architectural style unique to Myanmar. Yangon is perhaps the last authentic example of an Asian tropical city still featuring its former colonial origins, huge parks, shady trees and lakes and, of course, religious monuments. Of the latter, the most legendary, graceful and majestic of all is the Shwedagon Pagoda, built around 2,500 years ago\r\n', 'https://tntasiatravel.com/admin/uploads/files/26mujvcn_ozsakb.jpg,https://tntasiatravel.com/admin/uploads/files/pwcxj6meid4vlhs.jpg,https://tntasiatravel.com/admin/uploads/files/np91eztm7bgd_sh.jpg,https://tntasiatravel.com/admin/uploads/files/t28visy5njb1afx.jpg', NULL, NULL),
(2, 'MANDALAY', 'Walk the streets of old Yangon to see leafy lanes and byways filled with enormous timber mansions decorated in the unique Myanmar style, where British captains of industry once lived. See century-old buildings with magnificent architecture, which act as reminders of Yangon\'s past. The number of colonial buildings still standing in downtown Yangon is nothing short of spectacular. Myanmar\'s isolation from the rest of the world during the years after independence resulted in a level of preservation that is unique in the region. It is heartening to see that at last, some of them are being restored to their former beauty. Yangon\'s colonial streets are a showcase of the best, or most ostentatious, of colonial architecture an exuberant display of wealth and designer dexterity. The influence of Victorian and Edwardian architectural details made a deep impression on the local and Indian craftsmen, who embraced the styles wholeheartedly. Buildings developed an amazing hybrid style that resulted in an array of curlicue trims and turrets along with copulas and pergolas that adorn so many of the early buildings. Carved wood trims were also popular, all adding together to form an extraordinary architectural style unique to Myanmar. Yangon is perhaps the last authentic example of an Asian tropical city still featuring its former colonial origins, huge parks, shady trees and lakes and, of course, religious monuments. Of the latter, the most legendary, graceful and majestic of all is the Shwedagon Pagoda, built around 2,500 years ago\r\n', 'https://tntasiatravel.com/admin/uploads/files/26mujvcn_ozsakb.jpg,https://tntasiatravel.com/admin/uploads/files/pwcxj6meid4vlhs.jpg,https://tntasiatravel.com/admin/uploads/files/np91eztm7bgd_sh.jpg,https://tntasiatravel.com/admin/uploads/files/t28visy5njb1afx.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` text DEFAULT NULL,
  `from_airport` text DEFAULT NULL,
  `to` text DEFAULT NULL,
  `arrival_airport` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `from`, `from_airport`, `to`, `arrival_airport`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Yangon', 'Yangon international airport', 'Bangkok', 'Suvarnabhumi Airport', '100 USD', NULL, NULL),
(2, 'Yangon', 'Yangon international airport', 'Bangkok', 'Don Mueang International Airport', '100 USD', NULL, NULL),
(3, 'Yangon', 'Yangon international airport', 'Bangkok', 'Suvarnabhumi Airport', '100 USD', NULL, NULL),
(4, 'Yangon', 'Yangon international airport', 'Bangkok', 'Don Mueang International Airport', '100 USD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_12_084624_create_contacts_table', 1),
(6, '2024_06_12_231611_create_tour_packages_table', 2),
(7, '2024_06_12_233114_add_day_night_to_tour_packages_table', 3),
(8, '2024_06_12_233539_create_destinations_table', 4),
(9, '2024_06_12_235457_create_services_table', 5),
(10, '2024_06_12_235702_add_photo_to_services_table', 6),
(12, '2024_06_20_144916_create_flights_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'Air Tracking', 'International Airlines Thai Airways Cathay Pacific Airways Qatar Airways Emirates Singapore Airlines Japan Airlines Indigo Air India Turkish Airlines Bangkok Airways Nok Air Silk Air Thai Lion AirAsia Malaysia Airlines China Airlines Vietnam Airlines China Eastern Airlines Domestic Airlines Myanmar Airways International (MAI) Air KBZ Myanmar National Airlines (MNA) Mann Yadanapon Airlines Yangon Airways\r\n\r\n', NULL, NULL, 'http://akbatethar.aksuccessful.com/admin/uploads/files/yap0noj78i52u1l.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tour_packages`
--

CREATE TABLE `tour_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `day_night` text DEFAULT NULL,
  `price` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_packages`
--

INSERT INTO `tour_packages` (`id`, `title`, `description`, `gallery`, `created_at`, `updated_at`, `day_night`, `price`) VALUES
(1, 'Yangon One Day Tour', '<div class=\"blog-entry\"> \n										\n											<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:115%;mso-bidi-font-family:\nCalibri;mso-bidi-theme-font:minor-latin;color:#002060\">Arrive at Yangon\nInternational Airport and welcome by our licensed tour guide. Visit to <b>Kyauk Taw Gyi Pagoda</b>, <b>Kabar Aye Pagoda</b>, <b>Chauk Htat Gyi Pagoda</b>. Lunch at Local Restaurant. (Fresh Thai\nRestaurant). Visit to <b>Sule Pagoda</b>, <b>City Hall</b> and <b>Botahtaung pagoda</b>. Visit to <b>Shwe\nDagon Pagoda,</b> Great Dagon Pagoda and the Golden Pagoda, is a gilded <a href=\"https://en.wikipedia.org/wiki/Stupa\" title=\"Stupa\"><span style=\"color: rgb(0, 32, 96);\">stupa</span></a> located in <a href=\"https://en.wikipedia.org/wiki/Yangon\" title=\"Yangon\"><span style=\"color: rgb(0, 32, 96);\">Yangon</span></a>,\n<a href=\"https://en.wikipedia.org/wiki/Burma\" title=\"Burma\"><span style=\"color: rgb(0, 32, 96);\">Myanmar</span></a>.\nThe 326-foot-tall (99&nbsp;m)<a href=\"https://en.wikipedia.org/wiki/Shwedagon_Pagoda#cite_note-1\"><span style=\"color: rgb(0, 32, 96);\">[1]</span></a> <a href=\"https://en.wikipedia.org/wiki/Pagoda\" title=\"Pagoda\"><span style=\"color: rgb(0, 32, 96);\">pagoda</span></a>\nis situated on <a href=\"https://en.wikipedia.org/wiki/Singuttara_Hill\" title=\"Singuttara Hill\"><span style=\"color: rgb(0, 32, 96);\">Singuttara Hill</span></a>, to the west of <a href=\"https://en.wikipedia.org/wiki/Kandawgyi_Lake\" title=\"Kandawgyi Lake\"><span style=\"color: rgb(0, 32, 96);\">Kandawgyi Lake</span></a>,\nand dominates the Yangon skyline. Transfer to airport for your departure\nflight.<o:p></o:p></span></p>\n\n<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\nmso-layout-grid-align:none;text-autospace:none\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style=\"font-size: 0.875rem;\"><i><u><span style=\"font-size:10.0pt;line-height:115%;mso-ascii-font-family:Calibri;\nmso-hansi-font-family:Calibri;mso-bidi-font-family:Zawgyi-One;color:#002060\">Tour\nprice Includes;</span></u></i></b></p>\n\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Private Car Transportation with\ngood air-conditional <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">English Speaking Stationed Guide\n<o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Entrance/Zone Fee <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">2 bottle drinking water and snow\ntowel<o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">1 Tour Leader FOC if your group\nis&nbsp; 16 pax &amp; above&nbsp; <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:27.0pt;mso-add-space:auto;\ntext-align:justify;text-justify:inter-ideograph\"><b style=\"font-size: 0.875rem; text-align: left;\"><i><u><span style=\"font-size:10.0pt;line-height:115%;mso-ascii-font-family:\nCalibri;mso-hansi-font-family:Calibri;mso-bidi-font-family:Zawgyi-One;\ncolor:#002060\">Tour price Excludes;</span></u></i></b><br></p>\n\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">International flight tickets <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Hotel Accommodation <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Travel Insurance <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Meals <o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Personal expense (tip, phone\ncall, laundry service, beverages and etc.,)<o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Services not mentioned above<o:p></o:p></span></p>\n\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:27.0pt;mso-add-space:auto;\ntext-align:justify;text-justify:inter-ideograph;text-indent:-.25in;mso-list:\nl0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;line-height:\n115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Tip<o:p></o:p></span></p>										\n									</div>', 'https://tntasiatravel.com/admin/uploads/files/u04_mcdxl793o5w.jpg,https://tntasiatravel.com/admin/uploads/files/i9olf5em4z72q8j.jpg,https://tntasiatravel.com/admin/uploads/files/cwjg6bi10fntukz.jpg,https://tntasiatravel.com/admin/uploads/files/bwaiu5sftc031zp.jpg', NULL, NULL, '3 Days 2 Night', '$95'),
(2, 'Yangon 9 Temple Tour With Bago', '<div class=\"blog-entry\"> \r\n										\r\n											<p class=\"MsoNormal\"><span style=\"font-size:10.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin;color:#002060\">Arrive at Yangon\r\nInternational Airport and welcome by our licensed tour guide. Visit to <b>Kyauk Taw Gyi Pagoda</b>, <b>Kabar Aye Pagoda</b>, <b>Chauk Htat Gyi Pagoda</b>. Lunch at Local Restaurant. (Fresh Thai\r\nRestaurant). Visit to <b>Sule Pagoda</b>, <b>City Hall</b> and <b>Botahtaung pagoda</b>. Visit to <b>Shwe\r\nDagon Pagoda,</b> Great Dagon Pagoda and the Golden Pagoda, is a gilded <a href=\"https://en.wikipedia.org/wiki/Stupa\" title=\"Stupa\"><span style=\"color: rgb(0, 32, 96);\">stupa</span></a> located in <a href=\"https://en.wikipedia.org/wiki/Yangon\" title=\"Yangon\"><span style=\"color: rgb(0, 32, 96);\">Yangon</span></a>,\r\n<a href=\"https://en.wikipedia.org/wiki/Burma\" title=\"Burma\"><span style=\"color: rgb(0, 32, 96);\">Myanmar</span></a>.\r\nThe 326-foot-tall (99&nbsp;m)<a href=\"https://en.wikipedia.org/wiki/Shwedagon_Pagoda#cite_note-1\"><span style=\"color: rgb(0, 32, 96);\">[1]</span></a> <a href=\"https://en.wikipedia.org/wiki/Pagoda\" title=\"Pagoda\"><span style=\"color: rgb(0, 32, 96);\">pagoda</span></a>\r\nis situated on <a href=\"https://en.wikipedia.org/wiki/Singuttara_Hill\" title=\"Singuttara Hill\"><span style=\"color: rgb(0, 32, 96);\">Singuttara Hill</span></a>, to the west of <a href=\"https://en.wikipedia.org/wiki/Kandawgyi_Lake\" title=\"Kandawgyi Lake\"><span style=\"color: rgb(0, 32, 96);\">Kandawgyi Lake</span></a>,\r\nand dominates the Yangon skyline. Transfer to airport for your departure\r\nflight.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\r\nmso-layout-grid-align:none;text-autospace:none\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style=\"font-size: 0.875rem;\"><i><u><span style=\"font-size:10.0pt;line-height:115%;mso-ascii-font-family:Calibri;\r\nmso-hansi-font-family:Calibri;mso-bidi-font-family:Zawgyi-One;color:#002060\">Tour\r\nprice Includes;</span></u></i></b></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Private Car Transportation with\r\ngood air-conditional <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">English Speaking Stationed Guide\r\n<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Entrance/Zone Fee <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">2 bottle drinking water and snow\r\ntowel<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">1 Tour Leader FOC if your group\r\nis&nbsp; 16 pax &amp; above&nbsp; <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:27.0pt;mso-add-space:auto;\r\ntext-align:justify;text-justify:inter-ideograph\"><b style=\"font-size: 0.875rem; text-align: left;\"><i><u><span style=\"font-size:10.0pt;line-height:115%;mso-ascii-font-family:\r\nCalibri;mso-hansi-font-family:Calibri;mso-bidi-font-family:Zawgyi-One;\r\ncolor:#002060\">Tour price Excludes;</span></u></i></b><br></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">International flight tickets <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Hotel Accommodation <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Travel Insurance <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Meals <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Personal expense (tip, phone\r\ncall, laundry service, beverages and etc.,)<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:27.0pt;mso-add-space:\r\nauto;text-align:justify;text-justify:inter-ideograph;text-indent:-.25in;\r\nmso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;\r\nline-height:115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Services not mentioned above<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:27.0pt;mso-add-space:auto;\r\ntext-align:justify;text-justify:inter-ideograph;text-indent:-.25in;mso-list:\r\nl0 level1 lfo2\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;line-height:\r\n115%;font-family:\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\";=\"\" color:#002060\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:10.0pt;line-height:115%;\r\nmso-bidi-font-family:Zawgyi-One;color:#002060\">Tip<o:p></o:p></span></p>										\r\n									</div>', 'https://tntasiatravel.com/admin/uploads/files/u04_mcdxl793o5w.jpg,https://tntasiatravel.com/admin/uploads/files/i9olf5em4z72q8j.jpg,https://tntasiatravel.com/admin/uploads/files/cwjg6bi10fntukz.jpg,https://tntasiatravel.com/admin/uploads/files/bwaiu5sftc031zp.jpg', NULL, NULL, '3 Days 2 Night', '$95');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_packages`
--
ALTER TABLE `tour_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tour_packages`
--
ALTER TABLE `tour_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
