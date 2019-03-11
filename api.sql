-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2019 pada 12.04
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Omni . Cloth', 'images/cloth.png', '2019-03-05 15:09:21', '2019-03-05 15:09:21'),
(2, 'Omni . Totebag', 'images/totebag.png', '2019-03-05 15:09:21', '2019-03-05 15:09:21'),
(3, 'Omni . Sticker', 'images/sticker.png', '2019-03-05 15:09:21', '2019-03-05 15:09:21'),
(4, 'Omni . Poster', 'images/poster.png', '2019-03-05 15:09:21', '2019-03-05 15:09:21'),
(5, 'Omni . Sketchbook', 'images/sketchbook.png', '2019-03-05 15:09:21', '2019-03-05 15:09:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_03_04_213004_create_products_table', 1),
(12, '2019_03_04_215014_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `image`, `image_1`, `image_2`, `image_3`, `detail`, `category_id`, `created_at`, `updated_at`) VALUES
(61, 'Product Name1', 196547, 'https://lorempixel.com/640/480/?16846', 'https://lorempixel.com/640/480/?44335', 'https://lorempixel.com/640/480/?45557', 'https://lorempixel.com/640/480/?53863', 'Ut hic unde illo nihil corporis voluptate. Minus possimus voluptatem dolor aperiam. Sed molestiae ratione dolorum nobis occaecati odit quibusdam officia. Ipsa nostrum libero enim eligendi aliquid molestias veritatis saepe.\n\nDoloribus quae consequatur suscipit in. Aut tempore doloribus voluptate vel velit voluptatem. Tempore omnis molestiae natus fugit debitis. Qui non veniam deleniti.\n\nMinus sit voluptatum nihil aut iusto. Ipsum est est voluptatibus repudiandae qui sequi at. Voluptates repellendus totam autem saepe sunt. Nemo inventore accusamus aliquam reprehenderit reiciendis odio.\n\nPlaceat eos ullam omnis aut veniam reprehenderit dolorem. Voluptatem eum nihil ducimus nihil omnis blanditiis praesentium nostrum. Dolor quae voluptatem harum sed facere expedita. Incidunt rem ad maxime laboriosam sunt ut.\n\nCorporis autem animi non quasi rerum. Eos at odit eligendi sit necessitatibus quia dicta. Voluptatibus voluptatum velit non laborum possimus totam sunt.\n\nEsse aut necessitatibus eveniet nam. Facere laboriosam explicabo et deserunt dolore. Et repudiandae perspiciatis aut totam molestiae tempore. Quas qui ut et repellendus.\n\nEa inventore at sit voluptatem. Aliquid et officia sit qui omnis fuga omnis. Qui distinctio tempore nemo. Explicabo modi aut esse velit.', 3, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(62, 'Product Name2', 110317, 'https://lorempixel.com/640/480/?38320', 'https://lorempixel.com/640/480/?52621', 'https://lorempixel.com/640/480/?76720', 'https://lorempixel.com/640/480/?71746', 'Et et aut ea voluptatem quia est. Est repellendus consequatur accusantium quasi reprehenderit. Qui similique libero natus consequatur dolor possimus at. Incidunt consequatur suscipit saepe quo numquam voluptates. Dolorum dolores molestiae sunt voluptatem sunt.\n\nAssumenda ut mollitia nam magni voluptatem tempora. Necessitatibus et sunt maiores est.\n\nEos asperiores sit aliquid hic. Illum delectus autem iure quasi in quidem. Atque aspernatur fugiat maiores ipsam dolores qui eum.\n\nQuia earum pariatur dolor quo et eum autem. Ex earum consequatur non nihil. Ut molestias ut autem debitis alias non.\n\nLabore assumenda autem reprehenderit quos est. Vel non et doloremque quibusdam aliquam voluptatem. Facilis fugit sed quas enim.\n\nQuam ut debitis sed in quia quia. Cupiditate quo omnis quasi eos et ut omnis. Quaerat quis placeat ducimus commodi. Veritatis qui ut quod optio sit.', 2, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(63, 'Product Name3', 148906, 'https://lorempixel.com/640/480/?94173', 'https://lorempixel.com/640/480/?91280', 'https://lorempixel.com/640/480/?83918', 'https://lorempixel.com/640/480/?45928', 'Maiores non suscipit sit porro dignissimos possimus facilis. Autem sapiente ad eveniet quia harum. Harum rerum et at et ipsa nulla quis. Eius voluptatem cumque aut dolorem deleniti officiis aperiam laboriosam. Consequatur quos non quod velit aut.\n\nDolorem praesentium iste in officia voluptate aperiam aut. Sunt aut deserunt molestias esse. Iusto unde eos rerum dolorem officiis quia. Quibusdam accusamus aut dicta tenetur enim magnam nemo.\n\nBeatae ut eveniet ex animi alias. Placeat et soluta omnis deserunt voluptas velit cum. Earum magnam laudantium similique perferendis doloribus quod architecto. Rerum laudantium perferendis sed fuga exercitationem vero nemo.\n\nSint repudiandae facilis repellat soluta pariatur impedit. Dolore quo maxime velit ut. Sit facilis delectus cum sint.\n\nCorporis magnam ipsa corporis fuga consequatur quia sed. Aut at vitae voluptatem magnam.\n\nAssumenda qui rerum nobis impedit. Doloribus rerum velit dignissimos velit.\n\nAb ut sequi eveniet non in similique. Molestias earum voluptas minus praesentium sed dolorem dolorem. Dicta iusto corrupti unde unde cum minima.\n\nIpsam est distinctio cum vitae doloremque dolor repudiandae. Id amet eum iste non at. Nihil provident quis quae aliquid aut qui autem velit.', 1, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(64, 'Product Name4', 182907, 'https://lorempixel.com/640/480/?43905', 'https://lorempixel.com/640/480/?37213', 'https://lorempixel.com/640/480/?75674', 'https://lorempixel.com/640/480/?45939', 'Nemo laborum aut aut ut odio. Sunt sapiente aut voluptatibus itaque aliquid eos. Blanditiis consequatur quia dolores corporis nihil. Placeat aut molestiae deserunt facere sed quas ullam.\n\nNeque et voluptatum cum. Et mollitia sint optio velit.\n\nImpedit quis et atque et adipisci dignissimos praesentium numquam. Non unde dignissimos sapiente qui quis non. Dolorum rerum id voluptas nam amet. Voluptatum et ut ut similique voluptas odio.\n\nUt tempora et iste voluptatibus rem asperiores aut. Ipsa ut et voluptas. Iste aut veniam ab qui praesentium sapiente. Nobis distinctio expedita ab quia quos.\n\nQuis voluptatum assumenda et numquam. Perferendis sunt molestiae est porro sit odio.', 3, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(65, 'Product Name5', 154933, 'https://lorempixel.com/640/480/?42325', 'https://lorempixel.com/640/480/?90563', 'https://lorempixel.com/640/480/?77758', 'https://lorempixel.com/640/480/?13367', 'Corrupti aut ullam a molestias. Error nostrum aut occaecati exercitationem ut a. A quam ipsam quidem ab.\n\nAssumenda quia nihil officiis itaque officiis eveniet. Ea optio et illum ipsam. Suscipit qui itaque in illo optio provident. Voluptatem quod fugiat in nesciunt aspernatur consequatur incidunt similique.\n\nLibero ipsa libero aut explicabo. Quos et tempora non distinctio consectetur. Sed architecto sapiente ullam aperiam ut possimus aut. Debitis quasi id tenetur qui non temporibus.\n\nAperiam assumenda culpa molestiae aliquid. Fuga nulla odit repellendus rem sit. Necessitatibus maxime enim inventore est consequatur. Nisi natus occaecati perferendis voluptas.\n\nA vel omnis ut reiciendis temporibus aperiam. Accusantium dolorem commodi qui non eum. Modi et illum recusandae natus iusto doloribus.\n\nRatione praesentium quam debitis ducimus doloribus ea ut dolorem. Quis magni tenetur molestiae cupiditate similique et. Ducimus et molestiae modi iste exercitationem aperiam. Beatae distinctio ullam voluptatibus ut illo nesciunt.\n\nImpedit vel quisquam voluptates perferendis modi. Ut ut et eligendi alias harum. Velit est sunt est vel.\n\nQuibusdam delectus impedit at ipsam maiores id. Sapiente quod ut necessitatibus magni voluptas. Esse neque doloribus sint omnis possimus.', 4, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(66, 'Product Name6', 171769, 'https://lorempixel.com/640/480/?94473', 'https://lorempixel.com/640/480/?42237', 'https://lorempixel.com/640/480/?38350', 'https://lorempixel.com/640/480/?28439', 'Sunt provident error ad ipsa possimus recusandae hic. Nulla aperiam quis voluptas sunt et illo nam expedita. Voluptatibus praesentium temporibus ullam culpa et.\n\nAdipisci dolores consectetur porro reiciendis enim odit. Illum minus vero est ipsum. Repudiandae laborum molestiae nam ut et quibusdam ad autem.\n\nAut cupiditate et aperiam aut repudiandae. Sed assumenda sequi quia tempore voluptas ea nobis. Omnis dolorem eos id.\n\nVeniam quisquam fugit veritatis aut. Quis earum blanditiis dolorem et. Veniam autem est enim animi. Ipsam quo suscipit rem debitis ducimus.\n\nEa illum sed quia quaerat voluptatem. Animi deleniti velit rerum mollitia enim. Aut facilis nihil dolor qui facere occaecati. Nihil similique sed dolorem quos.\n\nExpedita sed esse quo eius cum blanditiis vel. Iure sint id quam nam et aut eum. Omnis quod esse qui qui quam ut. Dignissimos sit in architecto temporibus recusandae error aliquam sed. Aut quisquam molestiae cum eligendi sequi molestias.\n\nCulpa voluptas laboriosam perferendis architecto est. Voluptatibus qui asperiores labore.\n\nEt commodi unde alias aliquid cupiditate. Nemo quia provident molestias sit maiores nemo. Saepe iure quaerat rerum ipsam exercitationem perferendis in.\n\nVoluptates velit est eaque animi laudantium optio. Corporis doloremque provident doloremque. Repellat sint cumque quae impedit eos. Eligendi aut assumenda omnis occaecati illum. Corporis excepturi sit sed quidem.\n\nSuscipit qui vero neque quaerat. Saepe corporis recusandae laboriosam aliquid. Numquam fuga et quo sunt similique id. Est eius harum unde saepe repudiandae.', 2, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(67, 'Product Name7', 185131, 'https://lorempixel.com/640/480/?66422', 'https://lorempixel.com/640/480/?91949', 'https://lorempixel.com/640/480/?84975', 'https://lorempixel.com/640/480/?56808', 'Atque totam tempora consequuntur porro ipsum. Fugiat molestias distinctio provident nemo ad autem quis. Quisquam fuga aut molestias quia dolorem. Ullam voluptate adipisci et.\n\nNesciunt libero sit eius sit voluptas cumque. Amet quod vero magni at. Illum error ut odit sunt et maxime beatae magnam.\n\nVelit dolore harum explicabo sint sed sed. Corporis aut praesentium et voluptates est nam. Vel et rem impedit amet neque voluptas maiores.\n\nRepellat maxime nesciunt dolore ut. Ut iure cum nihil earum consequatur culpa iusto reprehenderit. Dolorem atque quaerat totam assumenda quam sed quia assumenda. Nisi expedita id exercitationem facilis quaerat. Aut architecto sequi aspernatur qui et similique odit.\n\nNecessitatibus laborum praesentium modi aut est quibusdam corporis consequatur. Pariatur voluptatem nesciunt officia quia qui odio. Enim dolores suscipit quos aperiam officiis sequi sed.', 2, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(68, 'Product Name8', 107130, 'https://lorempixel.com/640/480/?49803', 'https://lorempixel.com/640/480/?12787', 'https://lorempixel.com/640/480/?56440', 'https://lorempixel.com/640/480/?87194', 'Asperiores fuga est et iste eos quod. Dignissimos et quae omnis eaque minus voluptatem.\n\nUt similique distinctio minima assumenda est. Est sed sapiente est assumenda animi. Sit quo velit dolorem temporibus sed.\n\nFugiat tempore esse ea voluptatem nobis doloribus. Ut assumenda nam et aut eligendi debitis hic facere. Officiis similique et non consequatur soluta. Voluptas vitae cum commodi accusamus placeat dolorem excepturi. Ut magni voluptatem placeat illum.\n\nNemo quia enim quia repellat in incidunt. Pariatur pariatur eligendi animi provident dolor et quibusdam minus. Asperiores dolor animi eos sed quas. Placeat occaecati inventore repellendus saepe beatae qui. Rem consequatur non sapiente nihil odit.\n\nNihil consequatur illo minus animi sequi. Occaecati accusamus natus autem asperiores eum. Quo sint culpa necessitatibus eos consequatur.', 2, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(69, 'Product Name9', 132009, 'https://lorempixel.com/640/480/?58560', 'https://lorempixel.com/640/480/?39380', 'https://lorempixel.com/640/480/?22673', 'https://lorempixel.com/640/480/?15164', 'Deserunt ut quasi libero et rerum. Expedita harum occaecati totam provident. Et est magni itaque nulla. Velit explicabo sunt fugiat sit unde quia.\n\nSapiente est voluptate fuga sunt id unde cumque dolorem. Hic ea aut esse quidem libero est odio reprehenderit. Voluptas officiis rem nam alias ullam dolor.\n\nDucimus ut eos nihil at et. Ratione rerum est ea maxime repellendus vel. Sequi nemo voluptates earum iste ad. In vel qui necessitatibus.\n\nUt vero repudiandae in corrupti molestiae qui omnis accusantium. Consequuntur pariatur possimus ipsam molestias rerum animi inventore est. Nemo eos aliquid nemo accusamus nihil molestias voluptatum. Quia autem deserunt dolorem dignissimos aliquid.\n\nAdipisci sed autem et repellat eos. Adipisci quas cum temporibus tempore aspernatur dolor vel.\n\nLaudantium neque nihil sed odit dignissimos qui. Nemo et corrupti iste dolore pariatur qui et quisquam. Perferendis voluptas quidem eaque eveniet quaerat. Ab omnis deserunt at ea aperiam explicabo sit suscipit.\n\nMollitia sed odit molestiae ut dolorum sunt iure. Voluptas sint quae illum non ut cum amet. Perspiciatis consectetur numquam laboriosam voluptatem. Tempore eaque velit sed dolores pariatur modi est.', 5, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(70, 'Product Name10', 140003, 'https://lorempixel.com/640/480/?92920', 'https://lorempixel.com/640/480/?21871', 'https://lorempixel.com/640/480/?29218', 'https://lorempixel.com/640/480/?59233', 'Veniam aut aut sit vitae aut. Dolorem similique dolor quos reiciendis magnam.\n\nVeritatis cumque aut exercitationem ut asperiores enim. Aut quia similique quisquam dolores quibusdam. Consequuntur praesentium eligendi ab occaecati nobis. Eligendi rerum sapiente aperiam ut ratione vel cumque.\n\nQuisquam consequatur ut culpa ab atque. Consequatur debitis natus qui non nesciunt vel ut. Provident neque non autem saepe consequuntur.\n\nVoluptatem quaerat enim qui dolores repellat excepturi. Quidem dolores nulla alias est fuga amet ab. Est ut expedita voluptatem distinctio molestiae nemo officia soluta. Non voluptate quisquam incidunt repudiandae.\n\nIste quidem dolorem enim eum blanditiis soluta illum. Cupiditate ut qui incidunt. Labore est harum rerum.\n\nNon aliquam quia omnis maxime aspernatur. Esse itaque sunt quo tempora est enim. Nihil magnam ut et et beatae. Facilis reiciendis iure omnis fugit architecto nobis facere quos.\n\nVelit harum voluptatem similique alias rerum. Qui quas est non labore voluptates libero. Quia odio cupiditate repellendus eum qui dolores voluptatum qui.\n\nQui sit iure aliquid deleniti suscipit quos dolore. Corrupti et tempore laudantium natus harum voluptatem. Blanditiis sunt minima consequuntur modi corporis ipsum rerum praesentium. Sed in accusamus laborum dolorum neque odit ut. Magni est sequi a et est ut aut.\n\nReiciendis esse velit maiores eveniet non aut ea. Quis enim expedita qui suscipit vitae. Ullam ut itaque error dolores hic consequatur.\n\nAnimi beatae id alias sequi dolor voluptates qui corrupti. Maiores autem omnis recusandae ipsa qui tempora. At cumque eius et incidunt et veniam.', 1, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(71, 'Product Name11', 111569, 'https://lorempixel.com/640/480/?76641', 'https://lorempixel.com/640/480/?98780', 'https://lorempixel.com/640/480/?23940', 'https://lorempixel.com/640/480/?68874', 'Ea labore eum eum praesentium officiis fuga. Molestiae commodi placeat vel vero. Distinctio iusto ex velit vel ex. Et ea corrupti omnis.\n\nVoluptas sed et rerum est dolores cum ratione. Id expedita omnis tempora et. Rerum corporis facere sed dolorum voluptas. Voluptates perspiciatis non quos et.\n\nAliquid rem est suscipit eius. Voluptates et magni est consequuntur et qui culpa. Quo enim ea animi sequi. Sunt in nam sit et reiciendis dolorum qui maxime.\n\nIncidunt alias voluptatibus veniam pariatur. Itaque labore iusto expedita iste. Quo et et aliquam sed iure aut dolor.\n\nDolores neque quo natus. Pariatur inventore voluptates qui molestiae.\n\nUllam ex voluptatem inventore quo illo veritatis velit accusamus. Omnis odit quod nemo pariatur distinctio. Impedit reprehenderit molestias ut.\n\nUllam quo omnis culpa accusamus minus voluptas. Autem perspiciatis corporis nam totam eaque odio sit. Cumque minima sit nihil in voluptatem quod. Veniam est id assumenda rerum non adipisci repellat ratione.\n\nVel voluptatem labore quibusdam sed ea occaecati natus. Ea ut optio vitae optio. Quo quaerat quo doloremque aliquid provident sequi dolore.', 4, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(72, 'Product Name12', 113118, 'https://lorempixel.com/640/480/?61375', 'https://lorempixel.com/640/480/?47346', 'https://lorempixel.com/640/480/?72930', 'https://lorempixel.com/640/480/?17684', 'Voluptatem recusandae inventore accusamus provident repellat. Ut sed sunt numquam ea eveniet qui occaecati. Ratione sunt qui optio ut officia est. Dolor consectetur ut rerum ipsam aut.\n\nEum blanditiis officia aut. Nihil ea explicabo consequuntur vel. Non hic quam vero aliquid qui nulla veniam. Omnis architecto necessitatibus consectetur eos quis harum beatae.\n\nRatione quia unde dicta eos. Fugit ut magnam rem mollitia expedita. Molestias voluptas omnis non.', 4, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(73, 'Product Name13', 115082, 'https://lorempixel.com/640/480/?37884', 'https://lorempixel.com/640/480/?41053', 'https://lorempixel.com/640/480/?31628', 'https://lorempixel.com/640/480/?15252', 'Et magni est earum cupiditate dicta dolorem molestiae. Adipisci iste ea sapiente perspiciatis id sint rerum. Ut non harum libero harum aut culpa earum.\n\nVoluptate numquam inventore et. Sit quae aut repellendus ad labore aperiam. Suscipit blanditiis nisi est architecto et molestiae quasi occaecati. Dolorum iusto est quis ut consequatur.\n\nNatus rem eos tenetur quia ut. Reiciendis asperiores quae est sit quos ea enim quis. Rerum impedit eius ea velit porro nostrum rerum voluptatem. Quis odio vel maiores occaecati vel optio ipsa voluptatem.\n\nNon sit incidunt atque et et. Omnis ratione maxime exercitationem dolores voluptatem alias. Dolores et dolorem aut ea est. Labore quia non exercitationem.\n\nCumque laudantium omnis doloribus cumque. Dolores possimus ipsum odit iusto. Minus incidunt eius et inventore ut voluptatem et.\n\nConsequatur doloremque et et voluptatum earum. Rerum dolore fugit earum dolorem maiores atque odio. Doloribus quas illum distinctio dolor ipsa quia ex. Reprehenderit dignissimos eos doloribus vel et libero beatae suscipit. Eum vel architecto illum adipisci.', 1, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(74, 'Product Name14', 155132, 'https://lorempixel.com/640/480/?23706', 'https://lorempixel.com/640/480/?57523', 'https://lorempixel.com/640/480/?27038', 'https://lorempixel.com/640/480/?29275', 'Quibusdam quibusdam aut nisi animi. Nisi consequatur cupiditate reprehenderit velit cupiditate odit omnis. Veniam nihil quia dolores provident nihil nisi sint.\n\nExplicabo atque quia ex non quis sint veritatis dolores. Molestias quasi quia molestiae et inventore ut. Consequatur accusamus provident quae est ea.', 5, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(75, 'Product Name15', 182256, 'https://lorempixel.com/640/480/?40262', 'https://lorempixel.com/640/480/?82976', 'https://lorempixel.com/640/480/?68483', 'https://lorempixel.com/640/480/?32010', 'Est facilis porro possimus harum molestiae minima ex. Placeat nobis assumenda dolores sit nihil quibusdam debitis. Est libero magni praesentium nesciunt at non. Incidunt deserunt veniam aut numquam aliquam enim molestiae.\n\nNon labore et quia cumque accusantium. Occaecati labore reprehenderit aut non totam totam et. Accusantium debitis amet nihil quos saepe dolorem.\n\nConsequatur suscipit omnis vero voluptatem ad. Minus quas sit iusto. Eum cumque ut maxime adipisci. Eveniet numquam ad voluptates consequuntur similique.\n\nQuaerat sit ut voluptatem. Magni deleniti inventore ut corrupti voluptas natus praesentium. Ut qui incidunt cum voluptatem expedita. Molestias voluptas et non et sunt aliquam impedit.\n\nEaque consequuntur necessitatibus atque natus et dolores odio aperiam. Velit eligendi architecto adipisci et et.\n\nNumquam consequatur nihil asperiores enim quam minus. Ea nam assumenda modi nam aut iste.\n\nAsperiores dolor temporibus accusantium laudantium in ipsum. At veritatis natus suscipit modi dolores omnis ratione. Amet necessitatibus quibusdam tempora itaque eos. Occaecati ea officia dolorem et omnis voluptatem quae.\n\nQuibusdam eum quis doloribus et expedita. Dicta numquam reiciendis excepturi quia. Blanditiis deserunt soluta temporibus sit ut velit. Nostrum et doloremque sed maiores.', 2, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(76, 'Product Name16', 115815, 'https://lorempixel.com/640/480/?98461', 'https://lorempixel.com/640/480/?66768', 'https://lorempixel.com/640/480/?28042', 'https://lorempixel.com/640/480/?34838', 'Sed vel dolorem eligendi et nulla similique. Sed tenetur modi molestias numquam fugit totam. Aut eum nulla illo non. Corrupti asperiores qui magni id fuga explicabo dolorum. Voluptas rerum rerum explicabo quas fugit quis velit quaerat.\n\nAliquid vel sit voluptates eligendi dolor. Dolorem qui et cum illum ullam rem blanditiis.\n\nOfficiis reiciendis mollitia sed quidem voluptatem similique. Animi ullam vitae et sed. Molestiae rerum nulla sint commodi omnis. Repellat tempora quam est quia labore qui illo. Numquam vel maiores sunt ipsa inventore dolores.\n\nDolor animi qui perferendis. Tempore eum et velit fugiat omnis est. Cupiditate qui dolorem consequatur placeat quo rerum esse enim. Eum repellendus eveniet incidunt doloribus voluptas.\n\nPerspiciatis rerum rem quo accusamus dolor quis cupiditate. Accusamus consequatur amet consequatur ipsum optio incidunt. Voluptatum molestiae qui eum iusto repudiandae occaecati. Rerum ut voluptates qui quidem iure eius.\n\nBeatae qui aut provident explicabo. Totam perspiciatis ea ad animi amet. Nulla voluptas rerum est illum recusandae sed. Omnis qui et quasi numquam voluptatem eligendi non aliquid.\n\nSimilique illum et quidem dolores ratione et voluptatem. Nobis et asperiores et. Animi eos voluptatem perferendis enim ut quia et. Recusandae voluptate et eos ut blanditiis.', 4, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(77, 'Product Name17', 198680, 'https://lorempixel.com/640/480/?41328', 'https://lorempixel.com/640/480/?63620', 'https://lorempixel.com/640/480/?34331', 'https://lorempixel.com/640/480/?71456', 'Quod dolor consectetur ad sit quae. Ducimus reprehenderit voluptatem totam quasi. Saepe a harum error explicabo repellat.\n\nHarum ea sint veniam quas molestias dolores quod eum. Nemo tempore modi qui praesentium. Dolorem minus animi architecto.', 1, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(78, 'Product Name18', 199680, 'https://lorempixel.com/640/480/?22249', 'https://lorempixel.com/640/480/?26864', 'https://lorempixel.com/640/480/?22593', 'https://lorempixel.com/640/480/?51177', 'Quos ipsum occaecati ratione doloribus maiores quo quia saepe. Suscipit nostrum dolorum dicta.\n\nQuo pariatur id autem earum temporibus numquam. Praesentium tenetur quaerat molestiae distinctio natus. Vel consequatur et maiores quasi voluptatem in in numquam. Fugiat quia ipsa quis error. Pariatur fugiat voluptas aliquam ex quo nam.\n\nAutem est quos qui sit nemo facere voluptate. Et et neque deleniti et qui. Voluptate ratione est velit neque modi fuga et sit. Architecto eius officia laboriosam facere enim assumenda ut.\n\nOptio nesciunt maiores adipisci autem optio. Ratione eos at id aut quis. Quia odio voluptatem et.\n\nAutem sit eos impedit esse repellendus ratione magni. Quam iste officia quos laboriosam quos dolores. Quo iusto libero sunt.\n\nRerum ut voluptatem temporibus ad et nobis distinctio id. Iusto explicabo expedita sed quas. Beatae fuga nobis magnam illo impedit corrupti corporis. Veniam numquam eos quae quidem dolores qui totam.\n\nQuos quia et consequatur soluta deserunt. Quaerat voluptatem voluptatem sint pariatur alias aut inventore. Necessitatibus enim eaque ex laboriosam neque voluptatem autem. Beatae non at iste qui.', 5, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(79, 'Product Name19', 145398, 'https://lorempixel.com/640/480/?64362', 'https://lorempixel.com/640/480/?52772', 'https://lorempixel.com/640/480/?28681', 'https://lorempixel.com/640/480/?77504', 'Voluptatem sit atque ducimus corporis. Odio vel atque corporis maiores pariatur et optio. Numquam in sapiente culpa eaque.\n\nQui temporibus quia quia officia ut. Voluptate facilis recusandae veniam soluta doloribus accusantium. Nisi quibusdam qui consectetur tempore in.\n\nDolor nam molestias harum magni accusantium cumque ratione. Natus cumque accusantium nihil error. Quis nam numquam eveniet exercitationem dignissimos nemo autem. Nostrum rerum ut non delectus ea animi dolores.\n\nMaiores atque dolorem id voluptate. Dolor deserunt iste error est quis aliquam. Quia magni quasi qui optio.\n\nOdio non facere illo aliquam voluptatem. Molestias velit quia qui eos eveniet libero. Rerum nemo nobis dolorum aspernatur necessitatibus et eum fugit.\n\nQuod reiciendis repellendus qui porro cupiditate. Deleniti dolores numquam nemo sint quaerat voluptas voluptatibus. Aut laudantium qui quae aspernatur reiciendis sed ullam.\n\nMinus sint et optio assumenda unde qui in rerum. Veritatis cumque optio illo omnis commodi blanditiis. Laborum cumque ut blanditiis necessitatibus distinctio corrupti debitis. Iste harum quo quibusdam incidunt dolor.\n\nAperiam et eos illum quo ab earum placeat. Consequatur rerum tempore repudiandae officia rerum in ad perferendis. Earum distinctio quisquam culpa. Et voluptates nulla est molestiae architecto excepturi non.\n\nFacilis incidunt sit nihil sint nesciunt. Dignissimos eos soluta optio enim nihil aut quidem. Qui quo eum repudiandae repudiandae consequatur voluptatem accusantium. Maiores enim cum quidem hic error.\n\nId repellendus sint dolor nam. Assumenda aut non aut temporibus ut unde. Enim facere molestiae voluptates aspernatur voluptatem et. Provident occaecati illum harum aut velit et.', 3, '2019-03-09 09:03:30', '2019-03-09 09:03:30'),
(80, 'Product Name20', 122800, 'https://lorempixel.com/640/480/?44621', 'https://lorempixel.com/640/480/?81688', 'https://lorempixel.com/640/480/?91629', 'https://lorempixel.com/640/480/?14196', 'Deleniti quam unde cum adipisci delectus. Qui est expedita quisquam maxime vitae maxime quibusdam. Molestiae est quis esse itaque. Repellendus facere cumque voluptatem exercitationem.\n\nLaudantium nulla dolores quia qui libero quam. Doloremque quia debitis eos velit beatae molestias aut. Iste voluptatem ut architecto eaque non error. Ea ut saepe ipsam ut saepe voluptate. Modi expedita quidem vitae nemo dolorem sed maxime.\n\nProvident quaerat assumenda ipsam tenetur nobis. Consequatur sit consequatur odio vel.\n\nDolorem corrupti vel consectetur iure quam beatae. Minima aut temporibus neque facere et enim inventore. Exercitationem totam quas ut et. Animi sint illo sapiente adipisci iusto dolor vitae. Laborum quo illum totam recusandae.\n\nOmnis dicta quod omnis sapiente. Sed asperiores minus assumenda illo. Odit odit aut et incidunt voluptatem fugit. Perspiciatis ipsa esse id facilis voluptatibus saepe delectus.\n\nPariatur exercitationem natus provident incidunt. Aperiam consequatur illo similique voluptates maxime qui eius.\n\nQui harum adipisci illum. Molestias ut eum et consequatur nihil.', 2, '2019-03-09 09:03:31', '2019-03-09 09:03:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'anzalladd', 'anzalladd@gmail.com', NULL, '$2y$10$4doA9h61Eb4XS103R746O.JvysI8SV35Fn.PIqnJnmiyFh6Imc3Ze', NULL, '2019-03-11 03:17:50', '2019-03-11 03:17:50'),
(2, 'anzallad', 'anzallad@gmail.com', NULL, '$2y$10$cWvIAXDvl9iAa6nVPD.XYem7iXCPhR1En2PzIXYaOolE7xXYmr0nO', NULL, '2019-03-11 03:21:06', '2019-03-11 03:21:06'),
(3, 'anzalla1', 'anzalla1@yahoo.co.id', NULL, '$2y$10$j//c7JWyuGSuJbfwhhJ9YelXdC0UJi8CjZGgxdWLhFI8LKiVtgwF6', NULL, '2019-03-11 03:35:28', '2019-03-11 03:35:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
