-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 06 fév. 2024 à 21:43
-- Version du serveur : 5.7.33
-- Version de PHP : 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `one_piece`
--

-- --------------------------------------------------------

--
-- Structure de la table `arc`
--

CREATE TABLE `arc` (
  `id_arc` int(11) NOT NULL,
  `nom_a` varchar(30) NOT NULL,
  `nbr_chap` varchar(30) NOT NULL,
  `nbr_anime` varchar(30) NOT NULL,
  `desription` mediumtext NOT NULL,
  `arc_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arc`
--

INSERT INTO `arc` (`id_arc`, `nom_a`, `nbr_chap`, `nbr_anime`, `desription`, `arc_img`) VALUES
(1, 'Romance Dawn', 'chapitre 1 à 7', 'épisode 1 à 3', 'Influencé par Shanks, Luffy commence son voyage pour devenir le roi des pirates. Au début de son voyage, il rencontre un garçon nommé Koby, qui veut devenir Marine. Ils atteignent Shells Town, où ils rencontrent le capitaine de marine corrompu Axe-Hand Morgan, son fils Helmeppo et le chasseur de pirates Roronoa Zoro.\n', 'image_op/RomanceDown.png'),
(2, 'Orange Town', 'chapitre 8 à 21', 'épisode 4 à 8', 'Luffy et son premier membre d\'équipage Zoro arrivent à Orange Town où ils rencontrent une voleuse nommée Nami, qui déteste les pirates. Le trio forme une équipe improbable, luttant pour libérer la ville du règne de Buggy le Clown.', 'image_op/OrangeTown.png'),
(3, 'Village de Syrop', 'chapitre 22 à 41', 'épisode 9 à 18', 'Après que Nami ait formé un partenariat avec les deux en tant que navigatrice, l\'équipage atteint  le village de Syrop et recherche un navire à utiliser. Là, ils rencontrent un menteur chronique nommé Usopp. Lorsqu\'un complot sournois est révélé, le courage d\'Usopp est mis à l\'épreuve alors que l\'Équipage du Chapeau de Paille se prépare à un combat contre l\'Équipage du Chat Noir.', 'image_op/Syrup.png\r\n'),
(4, 'Baratie', 'chapitre 42 à 68', 'épisode 19 à 30', 'Usopp rejoint l\'équipage en tant que tireur d\'élite. À la recherche d\'un cuisinier pour leur navire, les Pirates du Chapeau de Paille se rendent dans un restaurant de la mer connu sous le nom de Baratie. Cependant, le restaurant est attaqué par le puissant Don Krieg, qui est revenu de Grand Line et veut utiliser le Baratie comme navire pour revenir.', 'image_op/Baratie.png'),
(5, 'Arlong Park', 'chapitre 69 à 95', 'épisode 31 à 44', 'Avec Sanji du Baratie rejoignant l\'équipage et Nami volant le navire, les Pirates du Chapeau de Paille la suivent sur une île sous le contrôle du pirate  Arlong l\'homme-posson. Nami révèle qu\'elle est membre des pirates d\'Arlong et qu\'elle a simplement aidé les pirates du chapeau de paille afin qu\'elle puisse prendre leur or plus tard. Mais pourquoi suivrait-elle un homme comme Arlong ?', 'image_op/arlong.png\r\n'),
(6, 'Loguetown', 'chapitre 96 à 100', 'épisode 45 à 53', 'Après l\'arrivée officielle de Nami, l\'équipage se dirige vers la dernière île avant l\'entrée de Grand Line, Loguetown, l\'endroit où Gold Roger est né et exécuté. Non seulement ils devront faire face à un puissant capitaine de la marine, mais aussi à d\'anciens ennemis en quête de vengeance.', 'image_op/loguetown.png\r\n'),
(7, 'Reverse Mountain', 'chapitre 101 à 105', 'épisode 62 à 63', 'L\'équipage est entré dans Grand Line, mais ils rencontrent un obstacle dès leur entrée : une baleine géante qui avale tout le navire.', 'image_op/reverse.png'),
(8, 'Whisky Peak', 'chapitre 106 à 114', 'épisode 64 à 67', 'Dirigés par les mystérieux M. 9 et Mme Wednesday, les chapeaux de paille se rendent à Whiskey Peak, où les habitants de la ville organisent immédiatement une fête pour célébrer leur arrivée. Mais il y a plus dans cette ville qu\'il n\'y paraît...', 'image_op/whiskey.png'),
(9, 'Little Garden', 'chapitre 115 à 129', 'épisode 70 à 77', 'Dans le cadre de leur mission d\'amener la princesse Vivi à Arabasta, les chapeaux de paille atterrissent à Little Garden, qui est en fait une immense île encore coincée dans l\'ère préhistorique. Cependant, il y a plus que des dinosaures sur cette île, comme l\'équipage le découvre rapidement lorsqu\'ils rencontrent deux géants qui sont enfermés au combat depuis plus de 100 ans et quatre membres de haut rang de Baroque Works.', 'image_op/garden.png\r\n'),
(10, 'Île de Drum', 'chapitre 130 à 154', 'épisode 78 à 91', 'Lorsque Nami attrape une maladie mortelle, l\'équipage est obligé de s\'arrêter à l\'île de Drum, un pays sans roi qui tente d\'établir un nouveau gouvernement. En raison des actions du roi précédent, Wapol, il ne reste qu\'un seul médecin, une «sorcière» nommée Kureha qui vit au sommet d\'une montagne. Luffy et Sanji doivent atteindre le sommet, mais le roi exilé Wapol revient pour récupérer son pays.', 'image_op/drum.png'),
(11, 'Arabasta', 'chapitre 155 à 217', 'épisode 92 à 130', 'Les chapeaux de paille, avec l\'assistant de Kureha, Tony Tony Chopper, arrivent enfin à Arabasta, qui est au bord de la guerre civile. Vivi doit atteindre les rebelles et leur dire la véritable cause du conflit, mais Crocodile, chef de Baroque Works et l\'un des sept grands corsaire, ne se contentera pas de rester les bras croisés. À la fin, le Baroque Works, les forces maritimes, les pirates, les gardes royaux et l\'armée rebelle s\'affrontent dans une bataille qui déterminera le sort du pays lui-même.', 'image_op/arabasta.png'),
(12, 'Jaya', 'chapitre 218 à 236', 'épisode 144 à 152', 'L\'équipage laisse Vivi en larmes et continue son voyage avec Mme All Sunday, alias Nico Robin, en tant qu\'archéologue. Lorsqu\'un navire tombe inexplicablement du ciel et que le Log Pose commence à pointer vers le haut, ils se rendent sur l\'île de Jaya pour obtenir des informations sur \"l\'île céleste\". Là, ils rencontrent Bellamy, un pirate qui annonce une \"nouvelle ère\" où les pirates ne rêvent pas, et un homme nommé Mont Blanc Cricket.', 'image_op/jaya.png'),
(13, 'Skypiea', 'chapitre 237 à 302', 'épisode 153 à 195', 'En chevauchant le Knock Up Stream, l\'équipage se retrouve dans la \"Mer Blanche\", un océan dans le ciel. Les chapeaux de paille découvrent bientôt qu\'il y a une guerre entre les gens du ciel et les indigènes qui habitaient à l\'origine un endroit connu sous le nom de Upper Yard. Ils découvrent également le cruel dieu Ener.', 'image_op/sky.png'),
(14, 'Long Ring Long Land', 'chapitre 303 à 321', 'épisode 207 à 219', 'L\'équipage retourne dans la mer bleue avec de l\'or et des cadrans de Skypiea, pour rencontrer Foxy le renard d\'argent, un pirate qui les défie dans un \"Davy Back Fight\", une série de jeux où le gagnant prend des coéquipiers de l\'équipage perdant. Cependant, même après avoir vaincu Foxy, les chapeaux de paille rencontrent un ennemi qu\'ils n\'ont aucun espoir de battre.', 'image_op/Long.png'),
(15, 'Water 7', 'chapitre 322 à 374', 'épisode 229 à 263', 'À la recherche d\'un constructeur naval pour rejoindre l\'équipage, les chapeaux de paille atterrissent dans la métropole motrice de Water 7. Ici, l\'équipage s\'effondre lorsque deux membres partent. Pour aggraver les choses, les chapeaux de paille sont accusés de la tentative d\'assassinat du maire de Water 7, qui est également président de la société de construction navale Galley-La. Ils essaient de trouver le vrai coupable, mais ils apprennent bientôt qu\'ils ont peut-être été pris au dépourvu par le groupe d\'assassinats gouvernemental CP9.', 'image_op/water.png'),
(16, 'Enies Lobby', 'chapitre 375 à 430', 'épisode 264-312', 'Les chapeaux de paille, la famille Franky et la société Galley-La s\'associent pour sauver Nico Robin, sauver Franky et venger Iceburg. Pour ce faire, ils attaquent Enies Lobby, un bastion gouvernemental où est basé le CP9, déclarant la guerre au gouvernement mondial.', 'image_op/enies.png'),
(17, 'Post-Enies Lobby', 'chapitre 431 à 441', 'épisode 313 à 325', 'Se reposant après leurs épreuves sur Enies Lobby, le monde des chapeaux de paille est bouleversé alors que des visages familiers reviennent avec des révélations inattendues pour la suite de leur voyage. Sur Grand Line, Shanks tente de protéger le subordonné Ace de Barbe Blanche d\'un visage familier doté d\'un nouveau pouvoir horrible.', 'image_op/post.png'),
(18, 'Thriller Bark', 'chapitre 442 à 489', 'épisode 337 à 381', 'Les Chapeaux de Paille poursuivent leur aventure dans le Triangle de Florian où ils tombent sur un étrange tonneau qui, à l\'ouverture, déclenche une fusée éclairante. Cela se transforme bientôt en cauchemar lorsqu\'un navire fantôme les dirige vers l\'île hantée de Thriller Bark, où les attendent des fantômes, des zombies et un des sept grands corsaires Gecko Moria.', 'image_op/bark.png'),
(19, 'Archipel Sabaody', 'chapitre 490 à 513', 'épisode 385 à 405', 'Arrivé à Red Line, l\'équipage cherche un moyen de se rendre à la célèbre île des Hommes-Poissons. Les chapeaux de paille sont bientôt détournés de leur recherche lorsqu\'une sirène et une étoile de mer parlante apparaissent, et ils se retrouvent bientôt en train de sauver un vieil ennemi d\'un réseau de kidnapping. Les choses tournent au pire lorsque les chapeaux de paille se retrouvent coincés à chaque tournant avec un seigneur de guerre de la mer, un amiral de la marine et des représentants du gouvernement mondial.', 'image_op/sab.png'),
(20, 'Amazon Lily', 'chapitre 514 à 524', 'épisode 408 à 417', 'Kuma envoie chacun des pirates du chapeau de paille voler de l\'archipel Sabaody vers différentes îles. Cet arc est centré sur Luffy, qui atterrit sur une île où seules les femmes vivent. Luffy découvre bientôt que les femmes de l\'île sont dirigées par une des seot grands corsaires Boa Hancock.', 'image_op/lili.png'),
(21, 'Impel Down', 'chapitre 525 à 549', 'épisode 422 à 452', 'Conquérant le cœur de la belle Hancock, Luffy parvient à prendre d\'assaut la prison d\'Impel Down, dans l\'espoir de sauver son frère Ace de l\'exécution avant que cela ne déclenche une ultime confrontation entre les pirates de Barbe Blanche et le gouvernement mondial.', 'image_op/impel.png'),
(22, 'Marinford', 'chapitre 550 à 580', 'épisode 457 à 489', 'Incapables de sauver Ace avant son transfert, Luffy et son groupe d\'évadés de prison le suivent à Marineford. Alors que le temps presse jusqu\'à l\'exécution d\'Ace, les pirates de Barbe Blanche et le gouvernement mondial préparent leurs forces à s\'affronter dans une bataille qui pourrait radicalement changer l\'ère.', 'image_op/mar.png'),
(23, 'Post-Guerre', 'chapitre 581 à 597', 'épisode 490 à 516', 'Le monde est sous le choc de la mort de Barbe Blanche, provoquant le chaos sur toute la Grand Line. Luffy, luttant pour faire face à la mort d\'Ace, se souvient qu\'il a quelque chose de tout aussi important pour lui : son équipage. L\'Équipage du Chapeau de Paille se réunira-t-il un jour ?', 'image_op/post2.png'),
(24, 'Retour à Saboady', 'chapitre 598 à 602', 'épisode 517 à 522', 'Deux ans se sont écoulés depuis la séparation de l\'équipage et les chapeaux de paille se sont entraînés vigoureusement depuis lors. Ils sont maintenant prêts à se réunir et à reprendre là où ils se sont arrêtés dans leur voyage.', 'image_op/ret.png'),
(25, 'Île des Hommes-Poissons', 'chapitre 603 à 653', 'épisode 523 à 574', 'Après deux ans, les chapeaux de paille commencent enfin leur voyage sous-marin vers l\'île des Hommes-Poissons. Lorsqu\'un diseur de bonne aventure local prédit que Luffy détruira l\'île des hommes-poissons, les chapeaux de paille sont faussement accusés de criminels et, pour compliquer davantage les choses, une alliance entre Hody Jones et Vander Decken IX complote pour prendre le contrôle du royaume de Ryugu.', 'image_op/fish.png'),
(26, 'Punk Hasard', 'chapitre 654 à 699', 'épisode 579 à 625', 'Après être entrés dans le Nouveau Monde, les chapeaux de paille sont conduits à Punk Hazard par un appel de détresse. Là, ils trouvent un samouraï à la recherche de son fils, se heurtent au nouveau peloton de marine de Smoker et rejoignent Trafalgar Law dans un complot visant à éliminer l\'un des quatre empereurs. Dans le cadre de ce complot, ils sont chargés de capturer Caesar Clown, le savant fou qui opère sur l\'île et vient d\'apprendre ses liens avec le monde souterrain et son influent courtier, un des sept grands corsaires Donquixote Doflamingo.', 'image_op/punk.png'),
(27, 'Dressrosa', 'chapitre 700 à 801', 'épisode 629 à 746', 'Les chapeaux de paille, Law, Kinemon et Momonosuke se dirigent vers Dressrosa avec un César captif pour négocier un accord avec Doflamingo, détruire son usine SMILE et libérer le camarade du samouraï Kanjuro. Ils découvrent bientôt que Doflamingo et Dressrosa sont enveloppés de nombreux secrets, et le conflit de Law avec Doflamingo devient rapidement personnel. Luffy travaille pour obtenir le fruit du diable de son défunt frère tandis que les autres chapeaux de paille rencontrent des étincelles de rébellion parmi la population de Dressrosa. Les efforts de l\'alliance sont encore plus compliqués lorsqu\'un nouvel amiral de la Marine nommé Fujitora arrive pour s\'occuper d\'eux.', 'image_op/dress.png'),
(28, 'Zou', 'chapitre 802 à 824', 'épisode 751 à 779', 'Les chapeaux de paille, Law et les samouraïs se dirigent vers Zou pour retrouver les chapeaux de paille et Momonosuke qui avaient quitté Dressrosa tôt. Ils rencontrent les indigènes de la tribu Mink et découvrent que Sanji est parti après s\'être empêtré dans un complot entre sa famille et les pirates de Big Mom. Ils apprennent également comment Jack des pirates des cents bêtes a attaqué Zou plus tôt, et les samouraïs révèlent à quel point Kaidou est lié à eux et à leur maison à Wano, conduisant à la formation d\'une nouvelle alliance. Les chapeaux de paille se séparent alors à nouveau pour sauver Sanji et se rendre à Wano.', 'image_op/zou.png'),
(29, 'Whole cake', 'chapitre 825 à 902', 'épisode 788 à 877', 'Le groupe de Luffy se rend sur l\'île de Whole Cake pour récupérer Sanji d\'un mariage politique entre la famille Vinsmoke et la famille Charlotte. Ils sont pris entre les agendas cachés des familles et forment une alliance avec Jinbe, Caesar et les pirates du Fire Tank pour vaincre Big Mom et sauver les Vinsmokes.', 'image_op/whole.png'),
(30, 'Rêverie', 'chapitre 803 à 908', 'épisode 878 à 889', 'La nouvelle des exploits des chapeaux de paille à Totto Land est rapportée au monde alors que la royauté du monde entier se rassemble à Mary Geoise pour le Levely. Pendant ce temps, l\'armée révolutionnaire se prépare pour son prochain mouvement et Big Mom parle à Kaidou de Luffy.', 'image_op/reverie.png'),
(31, 'Wano Kuni', 'chapitre 909 à 1057', 'épisode 890 à ???', 'L\'Alliance Ninja-Pirate-Mink-Samurai se rassemble dans le pays des Wa et se prépare pour la bataille contre les pirates des cents bêtes. L\'histoire de Kozuki Oden et ses liens avec le pays des Wa, Barbe Blanche et Gol D. Roger sont révélés, et l\'Alliance attaque Onigashima pour abattre les forces alliées de Kaidou et Big Mom, tandis que les alliances changent de tous les côtés du siège. Pendant ce temps, après les événements de la récente rêverie, le monde traverse des changements dramatiques.', 'image_op/wano.png'),
(32, 'Egghead', 'chapitre 1058 à ???', 'épisode ??? à ???', 'Koby est kidnappé par les pirates de Barbe Noire ; Les Séraphins sont présentés ; Sabo révèle qu\'il a vu Im sur le trône vide; Le royaume de Lulusia est effacé de l\'histoire par Im; Les satellites de Vegapunk sont présentés ; Jewelry Bonney se révèle être la fille de Kuma.', 'image_op/egg.png');

-- --------------------------------------------------------

--
-- Structure de la table `arc_personnage`
--

CREATE TABLE `arc_personnage` (
  `id` int(11) NOT NULL,
  `arc_id` int(11) NOT NULL,
  `personnage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arc_personnage`
--

INSERT INTO `arc_personnage` (`id`, `arc_id`, `personnage_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15),
(16, 6, 16),
(17, 6, 17),
(18, 6, 18),
(19, 7, 19),
(20, 7, 20),
(21, 8, 21),
(22, 8, 22),
(23, 8, 23),
(24, 9, 24),
(25, 9, 25),
(26, 9, 26),
(27, 10, 27),
(28, 10, 28),
(29, 10, 29),
(30, 11, 30),
(31, 11, 31),
(32, 11, 32),
(33, 12, 33),
(34, 12, 34),
(35, 12, 35),
(36, 13, 36),
(37, 13, 37),
(38, 13, 38),
(39, 14, 39),
(40, 14, 40),
(41, 15, 41),
(42, 15, 42),
(43, 15, 43),
(44, 16, 44),
(45, 16, 45),
(46, 16, 46),
(47, 17, 47),
(48, 17, 48),
(49, 18, 49),
(50, 18, 50),
(51, 18, 51),
(52, 19, 52),
(53, 19, 53),
(54, 19, 54),
(55, 20, 55),
(56, 20, 56),
(57, 20, 57),
(58, 21, 58),
(59, 21, 59),
(60, 21, 60),
(61, 22, 61),
(62, 22, 62),
(63, 22, 63),
(64, 23, 64),
(65, 23, 65),
(66, 23, 66),
(67, 24, 67),
(68, 24, 68),
(69, 24, 69),
(70, 25, 70),
(71, 25, 71),
(72, 25, 72),
(73, 26, 73),
(74, 26, 74),
(75, 26, 75),
(76, 27, 76),
(77, 27, 77),
(78, 27, 78),
(79, 28, 79),
(80, 28, 80),
(81, 28, 81),
(82, 29, 82),
(83, 29, 83),
(84, 29, 84),
(85, 30, 85),
(86, 30, 86),
(87, 30, 87),
(88, 31, 88),
(89, 31, 89),
(90, 31, 90),
(91, 32, 91),
(92, 32, 92),
(93, 32, 93);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id_personnage` int(11) NOT NULL,
  `nom_p` varchar(20) CHARACTER SET latin1 NOT NULL,
  `prenom_p` varchar(20) CHARACTER SET latin1 NOT NULL,
  `age` varchar(3) CHARACTER SET latin1 NOT NULL,
  `apparition_manga` varchar(30) CHARACTER SET latin1 NOT NULL,
  `apparition_anime` varchar(30) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `personnage_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id_personnage`, `nom_p`, `prenom_p`, `age`, `apparition_manga`, `apparition_anime`, `description`, `personnage_img`) VALUES
(1, 'Monkey D', 'Luffy', '19', 'chapitre 1', 'épisode 1', 'Monkey D. Luffy est un pirate et le principal protagoniste du manga et anime One Piece. Luffy est le fils du chef de l\'Armée Révolutionnaire, Monkey D. Dragon,le petit-fils du célèbre héros de la Marine, Monkey D. Garp,[25] le fils adoptif d\'une bandit des montagnes, Curly Dadan ainsi que le frère adoptif du défunt Portgas D. Ace et de Sabo.\n\nSon rêve le plus cher est de devenir le Seigneur des Pirates en trouvant le trésor légendaire One Piece, caché quelque part dans le monde par Gol D. Roger. Selon lui, ce rêve se concrétise en devenant la personne la plus libre qui soit. Il a mangé par erreur un Fruit du Démon, le Gomu Gomu no Mi, qui lui permet d\'être un homme-élastique, que l\'Équipage du Roux a pris à un convoi du Gouvernement Mondial.', 'image_op/luffy.png'),
(2, 'Figarland', 'Shanks', '39', 'chapitre 1', 'épisode 4', 'Shanks dit le Roux, est le capitaine de l\'Équipage du Roux et l\'un des Quatre Empereurs. Il est également un ancien mousse du légendaire équipage des Pirates Roger, le seul groupe à avoir conquis avec succès Grand Line.\r\n\r\nIl est le pirate qui a inspiré Luffy dans son voyage en tant que pirate. Il a récupéré le Gomu Gomu no Mi qui a été volé à un navire du Gouvernement Mondial, et qui a par la suite été accidentellement mangé par Luffy.\r\n\r\nIl est devenu un des Quatre Empereurs il y a 6 ans de cela.', 'image_op/shanks.png'),
(3, 'Roronoa', 'Zoro', '21', 'chapitre 3', 'épisode 1', 'Roronoa Zoro le Chasseur de Pirates est un pirate, un ex-chasseur de pirates et l\'un des protagonistes de One Piece.\r\n\r\nIl fut le premier membre à rejoindre l\'Équipage du Chapeau de Paille, il en est le premier et principal épéiste. Son ambition est de devenir le meilleur sabreur au monde et il a d\'ailleurs montré une volonté de fer dans le but d\'y parvenir. C\'est un maître escrimeur qui peut utiliser plusieurs styles de combat dont la particularité repose sur le nombre d\'épées, ses capacités au combat sont telles qu\'il donne parfois l\'impression aux personnes extérieures à l\'équipage d\'être le véritable Capitaine.', 'image_op/zoro.png'),
(4, '', 'Nami', '20', 'chapitre 8', 'épisode 1', 'Nami, alias \"La Chatte Voleuse\", est la navigatrice de L\'Équipage du Chapeau de Paille. Elle est la deuxième personne à se joindre à l\'équipage après Zoro. Elle a brièvement \"trahi\" l\'Équipage du Chapeau de Paille pendant l\'Arc Baratie et les rejoignit officiellement à la fin de l\'Arc d\'Arlong après que son passé et ses intentions furent révélés. Son rêve est de dessiner une carte complète du monde. ', 'image_op/nami.png'),
(5, '', 'Baggy', '39', 'chapitre 9', 'épisode 4', 'Baggy, aussi connu sous le nom de Baggy le Clown ou encore le Clown aux Mille Pièces est le capitaine de l\'Équipage du Clown et un ancien mousse de l\'Équipage des Pirates Roger. Il fit ses débuts en tant qu\'antagoniste de Monkey D. Luffy, mais s\'allie par la suite avec lui pour être libéré d\'Impel Down. Il était l\'antagoniste principal dans l\'Arc de Baggy le Clown, et est depuis devenu un personnage très récurrent.', 'image_op/baggy.png'),
(6, '', 'Chouchou', '14', 'chapitre 12', 'épisode 6', 'Chouchou est un chien blanc qui vit à Orange Town et qui garde une animalerie, jour et nuit, sans bouger, parce que le magasin appartenait à son propriétaire décédé, Hokker. Après l\'ellipse, il possède un magasin de nourriture pour animaux.', 'image_op/chouchou.png'),
(7, '', 'Ussop', '19', 'chapitre 23', 'épisode 8', 'Usopp , également nommé Pipo dans les anciennes éditions de Glénat du manga, est un membre de L\'Équipage du Chapeau de Paille, il occupe le poste de Tireur d\'Élite. Il est originaire du Village de Sirop. Bien que n\'étant pas Charpentier Naval, il s\'occupait également de réparer le Vogue Merry (dont il colmatait les trous avec les moyens du bord). Il est ensuite remplacé par Franky, lorsque ce dernier et le Thousand Sunny rejoignirent l\'équipage, pour ce qui est de l\'entretien du navire.', 'image_op/ussop.png'),
(8, '', 'Kaya', '19', 'chapitre 23', 'épisode 9', 'Kaya est une jeune orpheline vivant dans la plus grande demeure du village de Sirop. Elle se lia d\'amitié avec Usopp, et adorait l\'entendre raconter ses fausses aventures. On la revoit deux ans plus tard en train de lire un livre de médecine dans le Chapitre 623, avec une foule de jeunes gens voulant lui demander sa main.', 'image_op/kaya.png'),
(9, '', 'Kuro', '35', 'chapitre 23', 'épisode 9', 'Kuro, aussi connu sous le nom de Klahadoll, est l\'un des premiers antagonistes de la série. Il est le Capitaine de L\'Équipage du Chat Noir et l\'ex-Majordome de Kaya.', 'image_op/kuro.png'),
(10, 'Vinsmoke', 'Sanji', '21', 'chapitre 43', 'épisode 20', 'Sanji, né Vinsmoke Sanji avant de renoncer à son nom de famille, surnommé Sanji la Jambe Noire, est le cuisinier de l\'Équipage du Chapeau de Paille. Sanji a appris l\'art culinaire sur le Baratie, un restaurant flottant appartenant à Zeff aux pieds rouges, un ancien pirate. Il est le cinquième membre de l\'Équipage et le troisième à avoir accepté l\'invitation de Luffy. Il est le premier membre de l\'équipage à ne pas être originaire d\'East Blue.\r\n\r\nIl restera longtemps dans l\'anonymat avant de se faire connaître au monde sous le nom de Sanji la Jambe Noire. Il a pris la mer aux côtés de Luffy dans le but de trouver la légendaire All Blue. Cette dernière est une mer regroupant les poissons des quatre coins du globe ; elle est également surnommée le \"Paradis des cuisiniers\".\r\n\r\nLongtemps connu simplement en tant que Sanji, il est en réalité le 3e fils et 4e enfant de la Famille Vinsmoke, ce qui en fait un Prince du Royaume de Germa. Il sera engagé dans un mariage politique avec Charlotte Pudding, mais le mariage sera annulé lorsqu\'il s’avérera que Big Mom a voulu exterminer la Famille Vinsmoke, ce qui mène Sanji à renoncer à ses liens avec sa famille et repartir avec son équipage.', 'image_op/sanji.png'),
(11, 'Dracule', 'Mihawk', '43', 'chapitre 50', 'épisode 23', 'Dracule Mihawk, connu sous le surnom d’œil de Faucon\" est le premier Capitaine Corsaire à apparaître. Il est resté Capitaine Corsaire jusqu\'à la dissolution de ce groupe. Il a depuis rejoint la Cross Guild, aux côtés de Crocodile et l\'Empereur Baggy.\r\n\r\nIl est le détenteur du titre du \"Plus grand épéiste du monde\" et fût l\'entraîneur de Roronoa Zoro durant l\'ellipse de 2 ans. Il était auparavant connu sous le surnom de \"chasseur de marrine\".\r\n\r\nIl est également le troisième antagoniste de l\'Arc Baratie après Don Krieg et Gin, un des antagonistes principaux de l\'Arc de Marineford où il a pris part à la bataille de Marineford et s\'est rangé du côté de la Marines, avec la plupart des autres Shichibukai.', 'image_op/mihawk.png'),
(12, 'Don', 'Krieg', '44', 'chapitre 45', 'épisode 21', 'Don Krieg de l\'Armada Pirate était (en force militaire) le plus puissant pirate d\'East Blue. Il est l\'antagoniste principal de l\'Arc du Baratie.', 'image_op/krieg.png'),
(13, '', 'Arlong', '41', 'chapitre 69', 'épisode 31', 'Arlong, surnommé Arlong la Scie est le capitaine de L\'Équipage d\'Arlong ainsi qu\'un ancien membre de L\'Équipage des Pirates du Soleil sous les ordres de Fisher Tiger puis de Jinbe. Il a tué Belmer, la mère adoptive de Nami et Nojiko, sous leurs yeux. Il est le grand frère de Shirley.', 'image_op/ar.png'),
(14, '', 'Octo', '38', 'chapitre 69', 'épisode 31', 'Hatchan ou Octo en français, aussi nommé Octy ou Hachi, est un Homme-Poisson pieuvre. Il est un ancien membre de l\'Équipage du Soleil commandé par Fisher Tiger, et de celui d\'Arlong, qu\'il a rejoint à la mort de Tiger.', 'image_op/octo.png'),
(15, '', 'Nojiko', '22', 'chapitre 70', 'épisode 31', 'Nojiko est la fille adoptive de Bell-mère, ainsi que la sœur adoptive de Nami.', 'image_op/nojiko.png'),
(16, '', 'Smoker', '36', 'chapitre 98', 'épisode 48', 'Smoker \"Le Chasseur Blanc\" est un officier de la Marine stationné à la base du G-5. Il a d\'abord été présenté comme un Capitaine à Loguetown, où il a fait sa mission pour capturer Monkey D. Luffy, et a, par la suite, été promu au grade de Contre-Amiral, en raison des événements survenus à Alabasta. Plus tard, lors de l\'ellipse des deux ans, il est promu Vice-Amiral.\r\n\r\nEn raison de ses actions contre Luffy à Loguetown, Smoker peut être considéré comme le principal antagoniste de l\'arc Loguetown.', 'image_op/smoker.png'),
(17, '', 'Tashigi', '23', 'chapitre 96', 'épisode 48', 'Tashigi est une jeune femme Capitaine de la Marine servant sous les ordres du Vice-Amiral Smoker, et l\'un des adversaires récurrents de l\'Équipage du Chapeau de Paille.', 'image_op/tashigi.png'),
(18, 'Monkey D', 'Dragon', '55', 'chapitre 100', 'épisode 52', 'Monkey D. Dragon surnommé \"Dragon le Révolutionnaire\" est le père de Monkey D. Luffy ainsi que le fils de Monkey D. Garp. Il est le célèbre chef des Révolutionnaires qui tentent de renverser le Gouvernement Mondial. Il est le plus grand ennemi du Gouvernement Mondial.', 'image_op/dragon.png'),
(19, '', 'Laboon', '53', 'chapitre 102', 'épisode 62', 'Laboon est une baleine (ou plus précisément une Island Whale) à la taille comparable aux monstres de Calm Belt. Natif de West Blue, il a atterri dans ce lieu en venant avec l\'Équipage du Rumbar dont Brook faisait parti, ils avaient promis de revenir le chercher après avoir effectué le tour du monde mais ils sont finalement tous morts (à l\'exception de Brook qui a ressuscité). L\'équipage du Chapeau de Paille rencontre Laboon au début de l\'aventure et Luffy lui dessine un Jolly Roger sur la tête suite à une promesse.\r\nLaboon est une créature de type A, \"Grand et Amical\", étant à la fois la créature la plus grande et la plus amicale du databook Grand Elements.', 'image_op/laboon.png'),
(20, '', 'Crocus', '73', 'chapitre 102', '62', 'Crocus est le gardien de Laboon et le surveillant du Phare du Cap des Jumeaux qui guide les navires qui arrivent de Reverse Mountain jusqu\'à La Route de tous les Périls.\r\n\r\nBien qu\'il ait passé presque toute sa vie en tant que surveillant de phare, il a également navigué 3 ans aux côtés de Gol D. Roger en tant que médecin dans L\'Équipage des Pirates Roger.', 'image_op/crocus.png'),
(21, 'Nefertari', 'Vivi', '18', 'chapitre 103', 'épisode 62', 'Nefertari Vivi, est la fille de Nefertari Cobra et Nefertari Titi. Elle est la princesse du royaume d\'Alabasta. C\'est une ancienne membre de Baroque Works, connue sous le pseudonyme de \"Miss Wednesday\", qui a infiltré l\'organisation, avec Igaram, pour récolter des informations concernant celle-ci.\r\nElle était une membre officieuse de l\'Équipage du Chapeau de Paille durant la majeure partie de la Saga Baroque Works, mais l\'a quitté lorsque l\'équipage a battu Crocodile et quitté Alabasta.', 'image_op/vivi.png'),
(22, '', 'Karoo', '16', 'chapitre 109', 'épisode 65', 'Karoo est l\'animal de compagnie de Nefertari Vivi. C\'est un Super Colvert, un canard géant qui court très vite (un des moyens de transport les plus efficaces à Alabasta).\r\nIl est très obéissant et bien élevé, surtout envers Vivi qui est sa maîtresse. Il s\'entendait bien avec l\'Équipage du Chapeau de Paille, tout particulièrement avec Usopp. Il était un membre officieux de l\'Équipage du Chapeau de Paille en tant que compagnon de Vivi.', 'image_op/karoo.png'),
(23, '', 'Igaram', '50', 'chapitre 106', 'épisode 64', 'Igaram est le Capitaine de la Garde Royale du royaume d\'Alabasta. Sa femme se nomme Terracotta.\r\n\r\nIl accompagne souvent Vivi pour la protéger, et l\'a notamment suivi dans sa phase d\'infiltration dans Baroque Works, où il a occupé la position d\'agent officier Mr 8, sa partenaire étant Miss Monday.', 'image_op/igaram.png'),
(24, '', 'Galdino', '37', 'chapitre 117', 'épisode 70', 'Galdino, surnommé l\'Usurier, était un Agent Officier de Baroque Works opérant sous le nom de code Mr3 avec son ancienne partenaire Miss GoldenWeek. Il est le principal antagoniste de l\'Arc de Little Garden.\nIl devient ensuite un allié de Monkey D. Luffy lors des Arc d\'Impel Down et de Marine Ford. Il fait maintenant partie de l\'Alliance Baggy et Alvida.', 'image_op/mr3.png'),
(25, '', 'Dorry', '160', 'chapitre 116', 'épisode 71', 'Dorry \"Le Démon Bleu\" est l\'un des 2 ex-capitaines de L\'Équipage des Géants d\'Erbaf. C\'est dans sa vie de pirate qu\'il a obtenu une prime de 100.000.000 de berrys(comme Brogy). À chaque éruption volcanique, il se bat avec Brogy pour déterminer le gagnant du duel lancé par Yuki. Deux ans plus tard ils sont encore au combat mais maintenant avec les poings.', 'image_op/dorry.png'),
(26, '', 'Brogy', '160', 'chapitre 116', 'épisode 71', 'Brogy, dit le \"Démon Rouge\" est l\'un des deux géants légendaires qui se bat sur Little Garden, une île sur La Route de tous les Périls. Sa prime, lorsqu\'il voyageait en mer, était de 100.000.000. de berrys. À chaque éruption volcanique, il se bat avec Dorry pour déterminer le gagnant du duel lancé par Yuki. Deux ans plus tard, ils sont toujours en combat mais se battent maintenant avec leurs poings puisque leurs armes ont été brisées.', 'image_op/brogy.png'),
(27, 'Tony Tony', 'Chopper', '17', 'chapitre 134', 'épisode 81', 'Tony Tony Chopper est le docteur de l\'Équipage du Chapeau de Paille. Chopper est un renne qui a mangé le Hito Hito no Mi, lui permettant de se transformer en humain. Il est originaire de l\'Île de Drum, ce qui fait de lui le premier membre de l\'équipage du Chapeau de Paille à être né sur La Route de tous les Périls. Il est le sixième membre de celui-ci, et le cinquième à se joindre à l\'Équipage.', 'image_op/chopper.png'),
(28, '', 'Kureha', '141', 'chapitre 134', 'épisode 81', 'Le Dr. Kureha est une doctoresse de 141 ans qui vit sur l\'île de Drum. Certaines personnes l\'appellent la \"sorcière\". Elle était devenue le mentor de Tony Tony Chopper après la mort du docteur Hiluluk.', 'image_op/kureha.png'),
(29, '', 'Wapol', '29', 'chapitre 131', 'épisode 79', 'Wapol surnommé Wapol la Plaque d\'Étain, est l\'ancien roi du Royaume de Drum. Il devint un pirate après avoir quelques temps quitté son pays. Il est le principal antagoniste de l\'Arc de l\'Île de Drum.\r\nAprès l\'ellipse, il fonda un nouveau royaume : le Royaume maléfique de Black Drum, dont il est le roi. Il est désormais le PDG de la Baku Baku Factory. Il s\'est aussi marié avec Miss Univers.', 'image_op/wapol.png'),
(30, '', 'Pell', '35', 'chapitre 155', 'épisode 91', 'Pell, connu aussi sous le nom de Pell le Faucon est l\'un des Deux Gardes Principaux du Royaume d\'Alabasta, avec Chaka, et est sous les ordres d\'Igaram. Il est connu comme étant le plus puissant guerrier d\'Alabasta. Il a mangé le Fruit du Volatile Modèle Faucon ce qui lui donne le pouvoir de se métamorphoser, à différents degrés, en cet animal.', 'image_op/pell.png'),
(31, 'Portgas D', 'Ace', '20', 'chapitre 154', 'épisode 91', 'Portgas D. Ace(né Gol D. Ace), connu sous le nom d\"Ace aux Poings Ardents est le frère spirituel de Monkey D. Luffy et de Sabo. Il est le seul fils du défunt Roi des Pirates Gol D. Roger et de son épouse Portgas D. Rouge.\r\n\r\nIl fut adopté par Monkey D. Garp à sa naissance sous la requête de Gol D. Roger, puis élevé par la famille Dadan tout comme Luffy. Il était le Commandant de la Seconde Flotte de L\'Équipage de Barbe Blanche et il est l\'ex-Capitaine de L\'Équipage des Pirates Spade qui fut intégré au premier équipage. Il a à son actif, seulement 3 ans de piraterie.\r\n\r\nAce est tué par l\'Amiral Akainu en voulant protéger Luffy durant l\'Arc Marineford.', 'image_op/ace.png'),
(32, '', 'Chaka', '41', 'chapitre 155', 'épisode 91', 'Chaka, aussi connu sous le nom de \"Chaka le Chacal\", est l\'un des deux gardes en chef du Royaume d\'Alabasta qui agissent sous les ordres d\'Igaram, l\'autre étant Pell. Chaka est le capitaine en chef de la garde royale en l\'absence d\'Igaram. Comme son compagnon Pell, Chaka dispose d\'une puissance impressionnante.', 'image_op/chaka.png'),
(33, '', 'Bellamy', '27', 'chapitre 222', 'épisode 146', 'Bellamy \"La Hyène\", surnommé également \"Le Pirate Sauvage\" ou encore \"Le Plus Grand Rookie de tous les temps\" est un ancien pirate reconnu pour son sourire démoniaque et ses habitudes à voler l\'argent à d\'autres pirates, telle une hyène qui pourchasse sa nourriture; il est temporairement un membre de L\'Équipage de Don Quichotte Doflamingo et un allié de celui-ci. Il était prêt à tout pour obtenir la confiance de Doflamingo.\nC\'était le capitaine de L\'Équipage du New Age. Sa prime avant l\'ellipse était de 55.000.000. de berrys. Celle-ci lui a valu le second surnom de \"Plus Grand Rookie de Tous Les Temps.\" À Dressrosa, après l\'ellipse, on apprend que Bellamy possède désormais une prime de 195.000.000. de berrys.\nBellamy et son équipage ont joué un rôle très important dans l\'Arc de Jaya. Il y était l\'antagoniste principal devant Barbe Noire.', 'image_op/bellamy.png'),
(34, 'Bartholomew', 'Kuma', '47', 'chapitre 233', 'épisode 151', 'Bartholomew Kuma était l\'un des 7 Grands Corsaires jusqu\'à la dissolution de ce groupe. C\'était à l\'origine un révolutionnaire dont l\'ancienne prime était de 296 000 000 de berrys. Il fut autrefois le roi du Royaume de Solbay, avant de devenir un pirate vicieux et craint de tous, gagnant le surnom \"le Tyran\". C\'était un humain qui accepta d’être transformé en un Cyborg par le Dr. Vegapunk pour des raisons encore inconnues. Dès que Vegapunk eut finit la transformation de Kuma en Pacifista, le Capitaine Corsaire devint le premier de la série, il porte le numéro de série PX-0. Il a mangé le Nikyu Nikyu no Mi qui lui permet de tout repousser via ses paumes de main.\nIl est le second antagoniste de l\'Arc Thriller Bark (Gecko Moria est le premier). On peut également le considérer comme l\'un des antagonistes majeurs de l\'Arc Sabaody (bien qu\'il agissait en secret dans l’intérêt des Chapeaux de Paille). Il est l\'un des antagonistes principaux de l\'Arc Marineford.\nIl devient, après sa transformation en cyborg, un esclave des Dragons Célestes, connu sous le nom d\'Invincible Esclave.\nIl est également le père de Jewelry Bonney.\n\n', 'image_op/kuma.png'),
(35, 'Marshall D ', 'Teach', '40', 'chapitre 223', 'épisode 246', 'Marshall D. Teach, mieux connu sous le nom de Barbe Noire, est le capitaine de l\'Équipage de Barbe Noire et fait actuellement partie des Quatre Empereurs.\r\n\r\nTeach est un ancien membre de la seconde division de L\'Équipage de Barbe Blanche qui fut dirigée par Portgas D. Ace. Il tue Thatch, Commandant de la quatrième division, pour s\'approprier le Yami Yami no Mi. Il devint temporairement l\'un des 7 Grands Corsaires en battant Ace et en le livrant à la Marine, mais il décide d\'abandonner son titre après que son équipage et lui eurent tué Barbe Blanche lors du siège de Marine Ford.\r\n\r\nIl est l\'un des antagonistes principaux de One Piece et la seule personne connue à avoir absorbé deux Fruits du Démon différents. Il est le deuxième antagoniste de l\'Arc Jaya après Bellamy. Il est le troisième antagoniste de l\'Arc Impel Down juste après Magellan et Hannyabal. Il est le troisième antagoniste de l\'Arc Marine Ford juste après Sengoku et Sakazuki.', 'image_op/teach.png'),
(36, 'Gan', 'Forr', '68', '237', '153', 'Gan Forr est le Dieu actuel de Skypiea. Il était autrefois connu sous le nom de \"Chevalier du Ciel\".', 'image_op/gan.png'),
(37, '', 'Ener', '39', 'chapitre 254', 'épisode 167', 'Enel, surnommé Dieu Enel est l\'antagoniste principal de l\'Arc Skypiea. Il est l\'ancien \"Dieu\" de Skypiéa. Après sa défaite face à Luffy, il est parti sur la Lune lors des Mini-Aventures d\'Ener où il rencontre les Spaceys.', 'image_op/enel.png'),
(38, '', 'Wiper', '24', 'chapitre 237', 'épisode 153', 'Wiper le \"Démon Furieux\" est le chef des Guerriers Shandia qui se battent pour reprendre Upper Yard des griffes d\'Ener. Il est le descendant direct de Calgara. Après l\'ellipse, il s\'est laissé pousser les cheveux et les laisse détachés. On apprend qu\'il est devenu un des Gardes de Dieu.', 'image_op/wyper.png'),
(39, '', 'Foxy', '38', 'chapitre 305', 'épisode 207', 'Foxy \"le Renard Argenté\" est le capitaine de L\'Équipage de Foxy et sa prime est de 24.000.000 de berrys. C\'est l\'antagoniste principal de l\'Arc Davy Back Fight.\r\nIl est également apparu dans des arcs Hors-Série comme l\'Arc Île de Spa ou l\'Aventure de Nebulandia.', 'image_op/foxy.png'),
(40, 'Aokiji', 'Kuzan', '49', 'chapitre 303', 'épisode 225', 'Kuzan, plus connu sous le nom d\'Aokiji était l\'un des Trois Amiraux de la Marine. C\'était auparavant un Vice-Amiral qui a participé au Buster Call d\'Ohara au cours duquel il a sauvé Nico Robin. Il fut aussi un candidat pour le poste d\'Amiral en Chef, mais suite à sa défaite contre l\'Amiral Akainu à Punk Hazard qui convoitait également le poste, il quitta la Marine. Après l\'ellipse, il fait son grand retour à la fin de l\'Arc Punk Hazard en empêchant Doflamingo de tuer Smoker. Plus tard, on apprend finalement qu\'il a décidé de s\'associer lui-même à L\'Équipage de Barbe Noire. Son épithète signifie \"Faisan Bleu\".\r\n\r\n', 'image_op/kuzan.png'),
(41, 'Cutty', 'Flam', '36', 'chapitre 329', 'épisode 233', 'Franky, de son vrai nom Cutty Flam, est le charpentier de L\'Équipage du Chapeau de Paille. Franky est un cyborg recruté à Water Seven et fut introduit dans l\'histoire comme étant le chef de la Franky Family, un groupe de désosseurs de bateaux. Il est aussi le premier cyborg présenté dans la série.\r\nIl fut appelé autrefois Cutty Flam jusqu\'à qu\'il se débarrasse de son vrai nom pour le remplacer par son surnom à la requête d\'Icebarg pour qu\'il cache son identité. Franky et ses acolytes furent d\'abord présentés en tant qu\'antagonistes pour L\'Équipage du Chapeau de Paille jusqu\'à que des circonstances les obligent à devenir alliés.\r\nÀ la requête de la Franky Family, Franky se joindra à L\'Équipage du Chapeau de Paille pour accomplir son rêve. Il est le huitième membre de L\'Équipage du Chapeau de Paille et le septième à se joindre à l\'équipage de Luffy. Il est également le deuxième membre à avoir été un ancien ennemi (le premier étant Nico Robin).', 'image_op/franky.png'),
(42, '', 'Icebarg', '40', 'chapitre 323', 'épisode 230', 'Icebarg est le président de la Galley-La Company, la meilleure entreprise de construction navale au monde, et le maire de Water Seven. Il faisait autrefois partie de la compagnie Tom\'s Workers.', 'image_op/icebarg.png'),
(43, 'Rob', 'Lucci', '30', 'chapitre 323', 'épisode 230', 'Rob Lucci était un membre du CP9. Il fit d\'abord sa première apparition en tant que l\'un des cinq charpentiers du quai N°1 du chantier naval de de la Galley-La Company.\r\n\r\nIl est l\'antagoniste principal de l\'Arc Water Seven et aussi le second antagoniste de l\'Arc Enies Lobby. Après l’ellipse il a rejoint le CP-AIGIS0.', 'image_op/lucci.png'),
(44, '', 'Fukuro', '29', 'chapitre 375', 'épisode 264', 'Fukuro dit \"Fukuro Le Silencieux\", était un des membres du CP9. Il fait partie des antagonistes de l\'arc Enies Lobby.', 'image_op/fukuro.png'),
(45, '', 'Kumadori', '36', 'chapitre 375', 'épisode 264', 'Kumadori ou Kumadori le Lion était un des agents secrets du CP9, il était l\'un des plus faibles physiquement mais ses aptitudes, très particulières, font de lui un dangereux adversaire. Il est capable de donner \"vie\" à sa très longue chevelure et de s\'en servir pour attraper et attaquer ses victimes. Son Douriki est de 810, soit juste supérieur à celui de Fukuro.', 'image_op/kumadori.png'),
(46, '', 'Jabura', '37', 'chapitre 375', 'épisode 264', 'Jabura était un membre du CP9, et le troisième plus puissant après Lucci et Kaku selon un classement établi par Fukuro. Il fait partie des principaux antagonistes de l\'Arc d\'Enies Lobby.', 'image_op/jabura.png'),
(47, 'Thousand', 'Sunny', '2', 'chapitre 435', 'épisode 321', 'Le Thousand Sunny que Franky, son concepteur, surnomme tendrement Sunny, est le second et actuel navire de L\'Équipage du Chapeau de Paille. Il succède au Vogue Merry car ce dernier était en trop mauvais état pour leur permettre de continuer leur aventure. C\'est un navire de type Brigantine Sloop conçu et construit par Franky avec l\'aide d\'Icebarg, Yokuzuna et le reste des ouvriers de la Galley-La Company. Construit à partir du Bois d\'Adam comme l\'Oro Jackson, c\'est un navire solide, deux fois plus grand que le Vogue Merry. Il contient des ajouts variés que l\'équipage voulait avoir avant d\'arriver à Water 7.', 'image_op/sunny.png'),
(48, 'Monkey D', 'Garp', '78', 'chapitre 432', 'épisode 314', 'Monkey D. Garp surnommé \"Le Héros de la Marine\" ou \"Garp le Héros\" est un ex-Vice-Amiral de la Marine et est maintenant instructeur. Il est l\'homme qui s\'occupe de l\'entraînement de Kobby et d\'Hermep. Il fut l\'une des figures majeures au même titre que Sengoku et Barbe Blanche lors de l\'ère de \"Gol D. Roger\", mais il était déjà considéré comme un héros avant cet ère. Il est le père de Monkey D. Dragon, le grand-père de Monkey D. Luffy et le grand-père adoptif de Portgas D. Ace. Ayant un D dans son nom & prénom, il est rattaché à la volonté du D comme certains autres personnages.\r\n\r\nAvec l\'aide de Gol D. Roger, il a vaincu l\'équipage de Rocks ce qui lui a valu le titre de \"Héros de la Marine\".', 'image_op/garp.png'),
(49, 'Gecko', 'Moria', '50', 'chapitre 449', 'épisode 343', 'Gecko Moria est un ancien Capitaine Corsaire qui dirige Thriller Bark. Sa prime est de 320 000 000 de berrys. C\'est l\'antagoniste principal de l\'Arc Thriller Bark avec Hogback, Perona, Absalom et Oz. C\'est aussi un antagoniste majeur de l\'Arc Marineford. À la fin de la guerre, il a été dépouillé de son titre et a failli être tué par Doflamingo, mais il a réussi à s\'échapper, laissant son statut inconnu, malgré un article dans le journal annonçant sa mort.\r\nIl réapparaît sur l\'Île des Pirates : la Ruche lors de l\'arc Wano Kuni, où il recherche Absalom qui a été tué par l\'Équipage de Barbe Noire pour donner son pouvoir à Shiliew.', 'image_op/mori.png'),
(50, '', 'Oz', '159', 'chapitre 456', 'épisode 350', 'Oars, en français Oz, surnommé \"Le Transporteur de Continents\", est la création Spécial Zombie n°900 d\'Hogback, le zombie que Moria a utilisé pour abriter l\'ombre volée de Luffy dans l\'Arc Thriller Bark. Il est aussi l\'ancêtre de Little Oars Jr. Il est le troisième antagoniste de l\'Arc Thriller Bark (après Gecko Moria et Bartholomew Kuma).', 'image_op/oz.png\r\n'),
(51, '', 'Brook', '90', 'chapitre 442', 'épisode 337', 'Brook, surnommé Brook le fredonneur est le musicien ainsi que le second épéiste (après Zoro) de l\'Équipage du Chapeau de Paille. C\'est un squelette vivant qu\'ils ont rencontré à bord d\'un vaisseau fantôme après avoir trouvé un tonneau mystérieux dérivant sur l\'océan. C\'est un utilisateur de Fruit du Démon, il a les pouvoirs du Fruit de la Résurrection. Il s\'agit d\'un mort-vivant revenu à la vie dans un état de pseudo-immortalité grâce aux pouvoirs de ce fruit, ce fruit n\'étant pas la cause de son apparence actuelle. C\'est le neuvième membre de l\'Équipage du Chapeau de Paille et le huitième membre ayant accepté de se joindre à l\'équipage de Luffy. Brook est le musicien tant attendu que Luffy voulait depuis le début de ses aventures, et qu\'il a plusieurs fois évoqué au cours de la série.\r\n\r\nIl faisait autrefois partie de l\'Équipage du Rumbar et fut nommé au poste de capitaine du reste de l\'équipage après que le capitaine Yorki l\'ait divisé pour sauver les survivants d\'une maladie. Brook est particulièrement proche de la baleine Laboon et c\'était lui qui portait la chanson finale de son équipage, chanson qui devait être livrée à la baleine, enregistrée sur un Tone Dial, avant qu\'ils meurent tous tués par des flèches empoisonnées. Avant cela, il était le chef d\'un convoi de bataille venant d\'un royaume non identifié.[2]\r\n\r\nPendant l\'ellipse, il devient célèbre dans le milieu de la musique sous le nom de \"Soul King\", et effectue son dernier concert à l\'Archipel Sabaody où il rejoint ses compagnons pour partir vers le Nouveau Monde. Dans le chapitre 662, on voit que la photo de son avis de recherche a été changée pour sa forme de squelette, mais sa prime n\'a pas changé. Il est obsédé par les jeunes filles en général, tout comme Sanji, et demande régulièrement à voir leurs culottes lorsqu\'il les rencontre.', 'image_op/brook.png'),
(52, 'Eustass', 'Kid', '23', 'chapitre 498', 'épisode 392', 'Eustass \"Captain\" Kidd, est un pirate notoire, originaire de South Blue ainsi que le capitaine de l\'Équipage de Kid. Il fait partie des Onze Supernova ainsi que de la \"Pire génération\". Sa première prime était de 315 000 000 de berrys, au moment où l\'Équipage du Chapeau de Paille arrive sur l\'Archipel Sabaody, soit la plus élevée parmi les Supernova. La raison pour laquelle sa prime était plus élevée que celle de Luffy lorsqu\'ils arrivèrent sur l\'Archipel de Sabaody, est due aux nombreuses pertes civiles causées par son équipage au cours de leurs activités.', 'image_op/kid.png'),
(53, 'Trafalgar D', 'Water Law', '26', 'chapitre 498', 'épisode 392', 'Trafalgar Law, de son vrai nom Trafalgar D. Water Law, est le Capitaine et Docteur de L\'Équipage du Heart, un équipage pirate constitué surtout de docteurs. Il vient de la Ville Blanche, une île de North Blue . Il fait partie d\'un groupe de onze pirates qu\'on surnomme les Onze Supernova sur L\'Archipel Sabaody, des pirates de renom dont la prime dépasse les 100 000 000 de berrys. Avant l’ellipse, il avait la cinquième plus haute prime parmi les Onze Supernova, avec une prime de 200 000 000 de berrys. Law, comme plusieurs autres pirates, rêve aussi de trouver le One Piece. Durant l\'ellipse de deux ans, il est devenu un Grand Corsaire, agissant directement sous les ordres du Gouvernement Mondial et se retrouve avec une ancienne prime de 440 000 000 de berrys. Cependant, son titre a été révoqué par L\'Amiral Fujitora, lorsque ce dernier a appris qu\'il s\'était allié à L\'Équipage du Chapeau de Paille. Après les événements survenus à Dressrosa, sa prime est désormais de 500 000 000 de berrys.\r\n\r\nLui et son équipage sont actuellement alliés à l\'Équipage du Chapeau de Paille, aux Minks et à la Famille Kozuki pour faire tomber Kaido des Quatre Empereurs. Son nom est inspiré de deux défaites de Napoléon : Trafalgar et Waterloo.\r\n\r\nIl est l\'un des alliés centraux des Pirates du Chapeau de Paille pendant les Sagas Dressrosa et Quatres Empereurs. Il agit également en tant qu\'allié de Luffy pendant le film One Piece: Stampede.', 'image_op/law.png'),
(54, 'Jewerly', 'Bonney', '24', 'chapitre 498', 'épisode 392', 'Jewelry Bonney, surnommée \"La Gloutonne\" est une capitaine pirate venant de South Blue. Elle est la capitaine de L\'Équipage de Bonney. Elle fait partie des onze pirates que l\'on surnomme les Onze Supernova, et qui constituent une majeure partie de la Pire Génération. Elle possédait une prime de 140 000 000 de berrys avant l\'ellipse, montée à 320 000 000 de berrys après. Elle est également la fille de Bartholomew Kuma et une parente de Conney.', 'image_op/bonney.png'),
(55, 'Boa', 'Hancock', '31', 'chapitre 516', 'épisode 409', 'L\'Impératrice Pirate Boa Hancock est la Princesse Serpent d\'Amazon Lily qui gouverne la tribu Kuja avec l\'aide de ses deux sœurs gorgones, Boa Marigold et Boa Sandersonia. Elle est également la capitaine actuelle de L\'Équipage des Pirates Kuja. Boa Hancock était le seul membre féminin des 7 Capitaines Corsaires jusqu\'à la dissolution de ce groupe. Elle a d\'abord été mentionnée par les Frères Risky à la fin de l\'Arc Thriller Bark lorsqu\'ils comparaient sa beauté légendaire à celle des sirènes. Elle est considérée par de nombreuses personnes comme étant la plus belle femme au monde, notamment grâce à son Fruit du Démon qui fait tomber amoureux d\'elle la quasi-totalité des personnes qui la regardent. Tandis qu\'elle reste actuellement employée au sein des 7 Capitaines Corsaires, son amour pour Monkey D. Luffy l\'a poussée à se retourner contre le Gouvernement Mondial à de nombreuses occasions, mettant ainsi son statut de Capitaine Corsaire en péril.', 'image_op/boa.png'),
(56, '', 'Marguaret', '18', 'chapitre 514', 'épisode 409', 'Marguerite, ou Margaret en français, est une membre de la tribu Kuja vivant sur Amazon Lily, et est également la première des Kuja à s\'être liée d\'amitié avec Luffy.', 'image_op/marguaret.png'),
(57, 'Boa', 'Sandersonia', '30', 'chapitre 516', 'épisode 409', 'Boa Sandersonia est l\'une des trois sœurs Gorgones qui règnent sur Amazon Lily. Elle et ses sœurs sont appelées \"Les sœurs Gorgones\" suite à leur prétendue victoire contre un monstre portant ce nom. Elle est la sœur cadette de Boa Hancock et la sœur aînée de Boa Marigold.\r\n', 'image_op/sandersonia.png'),
(58, '', 'Jinbe', '46', 'chapitre 528', 'épisode 430', 'Jinbe \"Le Paladin des Mers\" est le timonier de l\'Équipage du Chapeau de Paille. Il est officiellement le dixième membre de l\'équipage du Chapeau de Paille et le neuvième à rejoindre l\'équipage de Luffy.\r\n\r\nC\'est un homme-poisson requin-baleine, qui a servi comme deuxième capitaine de l\'Équipage des Pirates du Soleil succédant ainsi à Fisher Tiger, et un ancien Corsaire, qui a atteint le poste il y a onze ans.\r\n\r\nSon nom a été mentionné pour la première fois par Yosaku, lorsqu\'il expliquait le fonctionnement des Grands Corsaires. Cependant, il a été formellement introduit beaucoup plus tard, pendant l\'Arc Impel Down. Il a abandonné son titre de Corsaire durant la Bataille de Marineford, s\'alliant à l\'Équipage de Barbe Blanche. Au cours de la guerre, il a fait amitié avec Monkey D. Luffy et s\'est ensuite allié avec lui et son équipage pour empêcher le coup d\'état de l\'Équipage des Nouveaux Hommes-Poissons contre la famille royale de Neptune et le Royaume de Ryugu. Il a même été invité à rejoindre l’Équipage du Chapeau de Paille, mais a refusé en raison de son affiliation à Big Mom, cependant, il a promis qu\'une fois qu\'il serait prêt, il retournerait vers Luffy et demanderait à rejoindre son équipage. Au cours de l\'Arc Whole Cake Island, Jinbe quittera les services de Big Mom en se rebellant contre elle et en aidant les chapeaux de paille à échapper à ses griffes. Il a permit de conclure une alliance entre l\'équipe de récupération de Sanji, réaffirmant par ailleurs son envie de rejoindre l’Équipage du Chapeau de Paille, César Clown et l\'Équipage du Fire Tank afin de faire tomber Big Mom. Malgré l\'échec du plan il rejoint  officiellement L\'Equipage du Chapeau de Paille.', 'image_op/jinbe.png'),
(59, 'Emporio', 'Ivankov', '58', 'chapitre 537', 'épisode 438', 'Emporio Ivankov, surnommé Iva, \"Le Faiseur de Miracles\" ou \"La Faiseuse de Miracles\", est l\'un des 5 Commandants de l\'armée des Révolutionnaires et dirige tout l\'Armée G (Grand Line). Il est également la reine du Royaume de Kamabakka. C\'est un travesti et un être puissant et charismatique qui était emprisonné à Impel Down au niveau 5, puis vivant en secret au niveau 5.5 de la prison (appelé \"Newkama Land\", ou le \"paradis des travestis\"). Il sauva Monkey D. Luffy lorsque ce dernier s\'y introduisit pour libérer son frère Portgas D. Ace et l\'aide à s\'en échapper. C\'est également un personnage de premier plan durant la bataille de Marineford.\r\n\r\nIl est très proche du père de Luffy, Monkey D. Dragon, et est une véritable \"déesse\" pour tous les Okama. En raison de son fruit du démon, l\'Horu Horu no Mi, il apparaît à la fois en tant qu\'homme et en tant que femme.', 'image_op/ivankov.png'),
(60, '', 'Magellan', '37', 'chapitre 528', 'épisode 425', 'Magellan était le Sous-Directeur d\'Impel Down il y a 20 ans de cela, puis il fût promu au rang de directeur de la prison sous-marine. Poste qu\'il quittera après la guerre de Marineford. Il est l\'antagoniste principal de l\'Arc d\'Impel Down. Il fût par la suite rétrogradé après avoir échoué dans sa mission d\'arrêter Monkey D. Luffy et pour ne pas avoir pu empêché plus de 200 prisonniers de s\'échapper d\'Impel Down. Le nouveau directeur d\'Impel Down est maintenant Hannyabal. On apprend qu\'après l\'ellipse Sadi tombe amoureuse de lui.', 'image_op/magellan.png'),
(61, '', 'Vista', '47', 'chapitre 552', 'épisode 454', 'Vista, surnommé \"À la Lame Fleurie\" est l\'ex Commandant de la 5ème Division de L\'Équipage de Barbe Blanche. Il est considéré comme l\'un des meilleurs épéistes du monde.', 'image_op/vista.png'),
(62, 'Little', 'Oars Jr', '72', 'chapitre 554', 'épisode 463', 'Little Oars Jr est le descendant d\'Oars et est un Ancien Géant. Il fait partie des pirates qui ont aidé L\'Équipage de Barbe Blanche à sauver Ace lors de son exécution lors de la Bataille de Marine Ford.', 'image_op/oz_jr.png'),
(63, 'Catarina', 'Devon', '36', 'chapitre 575', 'épisode 484', 'Katarina Devon \"La Chasseresse de Nouvelle Lune\" était une prisonnière d\'Impel Down originaire de South Blue, enfermée au niveau 6 et condamnée à vie. Elle a été libérée par Marshall D. Teach.\r\n\r\nElle est actuellement la commandante de la sixième flotte de l\'Équipage de Barbe Noire.', 'image_op/devon.png'),
(64, '', 'Sabo', '22', 'chapitre 583', 'épisode 494', 'Sabo est le deuxième membre le plus important de l\'Armée Révolutionnaire derrière Monkey D. Dragon. Il est le fils d\'Outlook III et de Didit et le frère adoptif de Sterry, actuel roi du Royaume de Goa. Il est aussi le frère spirituel de Monkey D. Luffy et de Portgas D. Ace\r\n\r\nSabo est né dans une famille de Nobles, mais décida de s\'enfuir et de s\'échapper afin de s\'installer dans le Grey Terminal. Il est devenu le frère d\'Ace et de Luffy en trinquant et en échangeant leurs coupes de saké appelées aussi \"coupe de la fraternité\". On le croit mort après qu\'un Dragon Céleste lui ait tiré dessus. Il a en réalité perdu ses souvenirs à la suite du choc, rejoint l\'Armée Révolutionnaire et ne retrouve ses souvenirs que dix ans plus tard, à la mort d\'Ace.\r\n\r\nSabo réapparaît à Dressrosa, il est désormais le second de Dragon, le chef des Révolutionnaires. Il remporte le tournoi au Colisée Corrida, ce qui lui permet de manger le Mera Mera no Mi, ayant jadis été mangé par son frère adoptif, Portgas D. Ace. La prime de Sabo a été dévoilée dans le One Piece Magazine Vol. 3, elle est de 602.000.000 de berrys.', 'image_op/sabo.png'),
(65, 'Curly', 'Dadan', '55', 'chapitre 582', 'épisode 493', 'Curly Dadan est une amie de Monkey D. Garp et la mère d\'accueil de Portgas D. Ace, Monkey D. Luffy et Sabo. Garp lui a confié Ace peu de temps après sa naissance. Par la suite, Garp a également laissé Luffy à Dadan. Dadan vit sur le mont Corvo près du village Fushia.\r\n\r\nElle est la patronne des bandits des montagnes de la famille Dadan et est une criminelle recherchée. Dadan a été mentionnée dans l\'arc post-Enies Lobby, quand Hoop Slap a lu que Luffy et les Pirates du Chapeau de Paille sont entrés en guerre contre le Gouvernement Mondial.', 'image_op/dadan.png'),
(66, '', 'Porchemy', '25', 'chapitre 583', 'épisode 494', 'Porchemy est un pirate et un membre de L\'Équipage de Bluejam. C\'est le pirate qui a battu Luffy pendant son enfance pour qu\'il lui dise où se trouvait le trésor qu\'Ace et Sabo avaient volé. Il a été exécuté par Bluejam.', 'image_op/porchemy.png'),
(67, '', 'Caribou', '32', 'chapitre 600', 'épisode 519', 'Caribou dit \"la mèche molle\" dans le Manga ou \"à la tignasse humide\" dans l\'anime, est le co-capitaine de L\'Équipage des Pirates de Caribou, avec son frère Coribou. Il fait partie des pirates que le faux Luffy alias Demalo Black \"aux trois langues\" a voulu recruter pour aller dans le Nouveau Monde. Sa prime s\'élève à 210 000 000 de berrys. Il a mangé le Numa Numa no Mi, un Fruit du Démon de type Logia qui lui permet de devenir un Homme-Marécage.', 'image_op/caribou.png'),
(68, '', 'Coribou', '29', 'chapitre 600', 'épisode 519', 'Coribou est le petit frère de Caribou et fait partie de son équipage en tant que co-capitaine. Sa prime est de 190.000.000 de berrys. Il est allé libérer son frère du G-5 lors des mini-aventures de Caribou qui le trahi en partant avec leur navire, laissant son frère dans la base. Coribou parvient à se libérer et revient aider son frère à vaincre Scotch.', 'image_op/coribou.png'),
(69, 'Demalo', 'Black', '36', 'chapitre 598', 'épisode 517', 'Demalo Black est le Capitaine Pirate du Faux Équipage du Chapeau de Paille, et a une prime de 26.000.000 de berrys. Il s\'est fait passer pour Luffy et s\'est servi de sa renommée pour intimider ses adversaires et réunir un équipage puissant en vue de partir pour le Nouveau Monde, mais a été mis en état d\'arrestation par un officier de la Marine.\r\n', 'image_op/demalo.png'),
(70, 'Hody', 'Jones', '30', 'chapitre 608', 'épisode 527', 'Hody Jones est un homme-poisson de la race des Requins Blancs. Il est le Capitaine de L\'Équipage des Nouveaux Hommes-Poissons. C\'est l\'antagoniste principal de l\'Arc Île des Hommes-Poissons.', 'image_op/hody.png'),
(71, '', 'Shirahoshi', '16', 'chapitre 612', 'épisode 531', 'La Princesse Shirahoshi, aussi connue comme la \"Princesse Sirène\", est une sirène géante de type \"Merlan\" et la plus jeune des enfants du Roi Neptune et de la reine Otohime.\r\nElle a été d\'abord mentionnée par Pappag, revendiquant qu\'il la connaissait. Il a même promis de lui présenter les Pirates du Chapeau de Paille quand ils arriveront sur l\'Île des Hommes-Poissons (quoi que plus tard ce soit révélé être un mensonge). De plus, Shirahoshi est la forme actuelle de Poséidon, l\'une des armes antiques. Elle est âgée de 16 ans.\r\n\r\nSa beauté est réputée dans le monde entier et il est de coutume de dire qu\'elle est l\'une des deux plus belles femmes du monde avec l\'Impératrice Pirate Boa Hancock.', 'image_op/shira.png'),
(72, '', 'Shirley', '29', 'chapitre 610', 'épisode 529', 'Madame Shyarly est une sirène requin mako (signifiant requin taupe). C\'est une diseuse de bonne aventure vivant sur L\'Île des Hommes-Poissons et est aussi la propriétaire du Café des Sirènes. Madame Shyarly a précisément prévu l\'aube du Grand Âge de la Piraterie, aussi bien que le résultat de la Guerre de Marineford et la mort de Barbe Blanche. Elle est la petite demi-sœur d\'Arlong.', 'image_op/shirley.png'),
(73, 'César', 'Clown', '40', 'chapitre 658', 'épisode 581', 'César Clown que ses subordonnés appellent \"Maître\" est un ancien collègue du Dr. Vegapunk au sein de l\'équipe de recherche MADS, et l\'antagoniste principal de l\'arc Punk Hazard. César est le plus grand expert en armes de destruction massive et est un scientifique brillant; c\'est un dangereux psychopathe avec une prime de 300 000 000 de berrys sur sa tête.\r\n\r\nAu cours de l\'arc Dressrosa, Don Quichotte Doflamingo a déclaré que César était son subordonné, ce qui signifie que César fait officiellement partie de la Famille Don Quichotte.', 'image_op/cesar.png'),
(74, '', 'Kinemon', '36', 'chapitre 656', 'épisode 580', 'Kinemon aussi appelé \"Le Renard à la Flamme\" est un samouraï né à Kuri dans le Pays de Wa. C\'est un domestique de la Famille Kozuki du Pays de Wa, ainsi que le leader des Neuf Fourreaux Rouges. Il apparaît dans l\'Arc Punk Hazard, où son corps a été découpé en trois parties par Trafalgar Law. Il joue le rôle du père de Momonosuke. Il a mangé le Fuku Fuku no Mi qui lui permet d\'habiller les gens comme bon lui semble.', 'image_op/kinemon.png'),
(75, 'Kozuki', 'Momonosuke', '8', 'chapitre 684', 'épisode 609', 'Kozuki Momonosuke est un enfant âgé de huit ans, il est le fils de Kozuki Oden dirigeant de la Famille Kozuki du Pays des Wa. Il était enfermé avec d\'autres enfants dans une salle plus connue sous le nom de \"Biscuit Room\" sur l\'île de Punk Hazard. Il a la capacité de se transformer en dragon après avoir mangé un Fruit du Démon Artificiel qui se trouvait dans la \"Salle Secrète\".\r\n\r\nIl a été mentionné pour la première fois lorsque Kinemon déclare à Sanji qu\'il était venu à Punk Hazard pour sauver son fils, son prénom a été révélé quand le samouraï a demandé aux enfants kidnappés de la Salle aux Biscuits s\'ils l\'avaient vu. Ce ne fut que sur Zou que sa véritable identité fut révélée.', 'image_op/momonosuke.png'),
(76, 'Fujitora', 'Issho', '54', 'chapitre 701', 'épisode 630', 'Issho, plus connu sous le nom de Fujitora, est un Amiral de la Marine. Il a été mentionné pour la première fois par l\'Amiral en Chef Sakazuki quand ce dernier parlait d\'un plan pour régler l\'affaire concernant l\'alliance de Monkey D. Luffy et Trafalgar Law. Son épithète signifie \"Tigre Violet\".\r\n\r\nIl est le second antagoniste de l\'Arc Dressrosa (Doflamingo étant le premier).\r\n\r\n', 'image_op/fujitora.png'),
(77, '', 'Bartolomeo', '24', 'chapitre 705', 'épisode 635', 'Bartolomeo, Le Rookie Fou ou encore Le Cannibale est un Rookie ainsi que le Capitaine de L\'Équipage de Bartolomeo et le Commandant de la seconde flotte de la Grande Flotte du Chapeau de Paille. Il a participé au tournoi du Colisée Corrida pour tenter de gagner le Mera Mera no Mi avec comme intentions de le remettre à Luffy. Il a mangé le Bari Bari no Mi, ce qui fait de lui un \"Homme-Barrière\".', 'image_op/bartolomeo.png'),
(78, '', 'Hajrudin', '81', 'chapitre 706', 'épisode 639', 'Hajrudin, aussi surnommé \"le Pirate Mercenaire\" est un guerrier Géant, il a participé au tournoi du Colisée Corrida pour tenter de gagner le Mera Mera no Mi. Il est originaire d\'Erbaf, le pays dans lequel vivent les géants et les géantes et est présenté comme faisant partie de la \"Nouvelle Génération\" des Géants de ce pays. Il est le capitaine du Nouvel Équipage des Géants.\r\nInitialement mercenaire de classe \"S\" des Pirates d\'Expédition dirigés par Baggy, il a décidé de quitter l\'organisation afin de devenir le Commandant de la 6ème Flotte de L\'Équipage du Chapeau de Paille à qui il a juré loyauté à la fin de l\'Arc Dressrosa.', 'image_op/hajrudin.png'),
(79, '', 'Carrot', '15', 'chapitre 804', 'épisode 753', 'Carrot est une lapine Mink qui vit sur l\'Île de Zou. Elle fait partie de l\'escouade de mousquetaires dirigée par Inuarashi. Elle est aussi un Oiseau Royal.', 'image_op/carrot.png'),
(80, '', 'Inuarashi', '40', 'chapitre 808', 'épisode 758', 'Inuarashi, est l\'un des deux ducs du duché de Mokomo sur Zou. C\'est un chien Mink et il est surnommé le \"Roi de l\'Aurore\", car il règne sur l\'île de six heures du matin à 6 heures du soir. Il est un serviteur de la Famille Kozuki du Pays de Wa.\nAvec Nekomamushi, ils étaient selon ses dires \"en quelque sorte\" membres de l\'Équipage de Barbe Blanche puis de l\'Équipage de Roger en tant que serviteurs de Kozuki Oden, bien qu\'ils n\'aient pas accompagnés Roger jusqu\'à Laugh Tale.\n\nAu sein de Wano, il est également connu comme faisant partie des Neuf Fourreaux Rouges.', 'image_op/inu.png'),
(81, '', 'Nekomamushi', '40', 'chapitre 809', 'épisode 759', 'Nekomamushi, est l\'un des deux rois du duché de Mokomo sur Zou. C\'est un chat Mink et il est surnommé le \"Roi du Crépuscule\", car il règne sur l\'île de six heures du soir à six heures du matin. Il est un serviteur de la Famille Kozuki du Pays de Wa.\r\n\r\nAvec Inuarashi, ils étaient selon ses dires \"en quelque sorte\" membres de L\'Équipage de Barbe Blanche puis de L\'Équipage des Pirates Roger en tant que serviteurs de Kozuki Oden, bien qu\'ils n\'aient pas accompagné Roger jusqu\'à Laugh Tale.\r\n\r\nAu sein du Pays des Wa, il est également connu comme faisant partie des Neuf Fourreaux Rouges.', 'image_op/neko.png'),
(82, 'Charlotte', 'Katakuri', '48', 'chapitre 860', 'épisode 825', 'Charlotte Katakuri est le 2ème fils et le 3ème enfant de la Famille Charlotte, et un triplé né en même temps qu\'Oven et Daifuku. Il est l\'un des trois Sweet Commanders de l\'Équipage de Big Mom ainsi que le Ministre de la Farine gouvernant l\'île du Blé.\r\nEn raison de ses actions, il est le troisième antagoniste de l\'Arc Whole Cake après Big Mom en premier et Vinsmoke Judge en deuxième.', 'image_op/kata.png'),
(83, 'Vinsmoke', 'Reiju', '24', 'chapitre 826', 'épisode 783', 'Vinsmoke Reiju, alias Poison Pink signifiant le \"Poison Rose\", est l\'unique fille de la Famille Vinsmoke. Cela fait d\'elle la princesse du Royaume de Germa et une commandante du Germa 66. Elle est la grande sœur d\'Ichiji, de Niji, de Sanji et de Yonji. C\'est une humaine génétiquement modifiée par son père.', 'image_op/reiju.png'),
(84, 'Charlotte', 'Perospero', '50', 'chapitre 834', 'épisode 795', 'Charlotte Perospero, ou Charlotte Slurp en français, est le fils aîné et le 1er enfant de la Famille Charlotte, membre de l\'Équipage de Big Mom ainsi que le Ministre des Bonbons de l\'île de Candy.\r\nEn raison de ses actions, il est un antagoniste majeur de l\'Arc Whole Cake Island.', 'image_op/peros.png'),
(85, '', 'Karasu', '47', 'chapitre 904', '880', 'Karasu est un commandant de l\'armée révolutionnaire, en charge de l\'armée du Nord.', 'image_op/karasu.png'),
(86, 'Belo', 'Betty', '34', 'chapitre 904', '880', 'Belo Betty est une commandante de l\'armée révolutionnaire, en charge de l\'Armée de l\'Est.', 'image_op/betty.png\r\n'),
(87, '', 'Ym', '', '906', '885', 'Ym est le \"Roi du Monde\" et la personne qui détient la plus haute autorité au sein du Gouvernement Mondial, supérieure même aux cinq Doyens. Il est la personne pouvant s\'asseoir sur le Trône Vacant.\r\nOn ne sait pas avec certitude son degré de participation aux affaires communes du Gouvernement Mondial. De par sa position, il est un antagoniste majeur du manga.\r\n\r\nNote : Rien n\'est connu concernant le genre d\'Ym', 'image_op/ym.png');
INSERT INTO `personnage` (`id_personnage`, `nom_p`, `prenom_p`, `age`, `apparition_manga`, `apparition_anime`, `description`, `personnage_img`) VALUES
(88, 'Kozuki', 'Oden', '39', 'chapitre 920', 'épisode 910', 'Kozuki Oden était le Daimyo de Kuri du Pays de Wa et le fils renié de l\'ancien Shogun Kozuki Sukiyaki. C\'est également l\'époux de Toki, le père de Momonosuke et de Hiyori. Il était le chef des neuf fourreaux rouges qui lui étaient extrêmement loyaux. Il a aussi fait partie de l\'Équipage de Barbe Blanche en tant que commandant de la 2e division, ainsi que de l\'Équipage des Pirates Roger.', 'image_op/oden.png'),
(89, '', 'Alber', '47', 'chapitre 925', 'épisode 918', 'Alber, mieux connu sous son alias de King, surnommé \"King l\'Incendie\", est un pirate membre de l\'Équipage aux Cent Bêtes mené par Kaido. Il est l\'une des trois \"Calamités\" de l\'Équipage aux Cent Bêtes, ainsi que le bras droit de Kaido. Il fait partie de la race des Lunarias, une espèce presque éteinte originaire de Red Line capable de créer et manipuler du feu.\r\n\r\nC\'est l\'un des antagonistes centraux de l\'arc Wano Kuni.', 'image_op/king.png'),
(90, '', 'Kikunojo', '22', 'chapitre 913', 'épisode 899', 'Kikunojo des neiges printanières, généralement appelée O-Kiku est une samouraï de Wano Kuni, elle officie également en tant que serveuse d\'un salon de thé dans le village d\'Okobore, dans la région de Kuri. Elle est cependant l\'un des Neuf Fourreaux Rouges qui sert la Famille Kozuki.\r\n\r\nBien qu\'étant née homme à la naissance, elle se considère comme une femme à tous les niveaux. Elle est également la jeune sœur d\'Izo et est originaire de la province de Ringo.', 'image_op/kiku.png'),
(91, '', 'lilith', '', 'chapitre 1061', '', 'Lilith, alias Punk-02, est le deuxième satellite de Vegapunk, représentant son \"mal\". ', 'image_op/lilith.png'),
(92, '', 'Shaka', '', 'chapitre 1062', '', 'Shaka alias Punk-01, est le premier satellite de Vegapunk, représentant sa \"logique\".', 'image_op/shaka.png'),
(93, '', 'York', '', 'chapitre 1065', '', 'York, alias Punk-06, est le sixième satellite de Vegapunk, représentant son \"envie\".', 'image_op/york.png');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utlisateur` int(11) NOT NULL,
  `pseudo` varchar(30) CHARACTER SET latin1 NOT NULL,
  `mdp` varchar(255) CHARACTER SET latin1 NOT NULL,
  `prenom_u` varchar(30) NOT NULL,
  `nom_u` varchar(30) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arc`
--
ALTER TABLE `arc`
  ADD PRIMARY KEY (`id_arc`);

--
-- Index pour la table `arc_personnage`
--
ALTER TABLE `arc_personnage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arc_1` (`arc_id`),
  ADD KEY `personnage_1` (`personnage_id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id_personnage`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utlisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arc`
--
ALTER TABLE `arc`
  MODIFY `id_arc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `arc_personnage`
--
ALTER TABLE `arc_personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id_personnage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utlisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `arc_personnage`
--
ALTER TABLE `arc_personnage`
  ADD CONSTRAINT `arc_1` FOREIGN KEY (`arc_id`) REFERENCES `arc` (`id_arc`),
  ADD CONSTRAINT `personnage_1` FOREIGN KEY (`personnage_id`) REFERENCES `personnage` (`id_personnage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
