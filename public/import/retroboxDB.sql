-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 01 mars 2021 à 02:39
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `retroboxDB`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `last_modified_at`, `image`, `discr`) VALUES
(6, 'ATARI FLASHBACK 8 GOLD', 'ATGames... Ce nom résume a lui seul le probleme de cette mini-console.<br/><br/>L\'Atari VCS ou Atari 2600 fut une console de 2eme génération, avant l\'ere 8bits, commercialisée par Atari en 1977.<br/>Tres grand succes commercial, cette machine fut pourtant une des causes du Krach des jeux videos de 1983.<br/><br/>L\'Atari Flashback 8 Gold est la 8eme itération de la mini-console Atari développée par ATGames.<br/>Interface pousssive, émulation passable, options graphiques et de sauvegarde rachitiques etc... ce n\'est pas brillant.<br/>Une liste conséquente de 120 jeux . C\'est le seul point fort de cet objet, tout le reste est a jeter !<br/>Oui les plus grands jeux Atari 2600 sont présent, mais soyons sérieux, une poignée de jeux auxquels nous jouerons quelques heures ne valent pas l\'investissement.<br/><br/>Emulateur :<br/>Qui s\'en souci ?..<br/><br/>Verdict :<br/>A fuir ! Garder vos sous pour un RaspberryPi 3B+<br/>2/5<br/><br/>Site officiel :<br/><a href=\"https://www.atgames.us/\">www.atgames.us</a>', '2020-11-08 12:21:12', 'images/atari-flashback-8-gold.jpg', 'miniConsole'),
(7, 'CAPCOM HOME ARCADE', 'Voici un double stick arcade et une console d\'émulation !<br/>Les bornes arcades de CAPCOM étaient les stars des années 90 et l\'entreprise Japonnaise souhaite surfer sur la vague retrogaming avec ce produit.<br/><br/>16 jeux issue des bornes CPS et CPS-2 (fin 80 et décennie 90). Ce sont les versions occidentales sans censure (courante a l\'époque).<br/>Le stick est équipé materiel Sanwa. Les jeux sont affichés en haute définition (1080p) gréce é une version personnalisée de l\'émulateur Final Burn Alpha.<br/><br/>Emulateur :<br/>version modifiée de Final Burn Alpha (émulateur Open Source)<br/><br/>Verdict :<br/>Bof bof...<br/>Les jeux sont bon et l\'émulation de bonne qualité. Le stick est résistant et équipé de pieces SANWA...<br/>Mais le design est discutable, le catalogue de jeux est maigre, l\'interface peu réactive, il manque les options graphiques et de sauvegardes, les boutons sont ne sont ni assez nombreux ni labellisés pour les consoles modernes et le prix est beaucoup trop élevé.<br/>2/5<br/><br/>Site officiel :<br/><a href=\"http://capcomhomearcade.com/home\">www.capcomhomearcade.com</a>', '2020-11-08 12:21:12', 'images/capcom-home-arcade-v2.jpg', 'miniConsole'),
(8, 'COMMODORE 64 MINI', 'Lancé en 1982 par Commodore, le C64 est l\'ordinateur personnel le plus vendu a ce jour (+ de 17 millions).<br/>Cet ordinateur 8bits fut le roi de cette période (en france nous étions de l\'école Amstrad, le C64 est resté confidentiel chez nous).<br/>C\'est par cette machine que l\'informatique a vraiment conquis les foyers grace a son processeur et sa puce sonore rendant le Commodore 64 attractif pour les jeux vidéos.<br/><br/>Ce mini ordinateur est un bon achat pour ceux ayant connu le C64. Ils trouveront un catalogue de jeux fourni et toutes les fonctions et options modernes que nous sommes en droit d\'attendre.<br/>Pour les autres... et bien... rendez-vous sur le site officiel et regardez les jeux présents. Ces vielleries valent-elles l\'achat ? Ce sont de bon jeux mais ils accusent le poid des annees.<br/><br/>Emulateur :<br/>VICE (émulateur Open Source)<br/><br/>Verdict :<br/>C\'est du presque tout bon... Le clavier est tres decevant (c\'est un faux) a part ca rien a redire. Le BASIC est meme intégré et fonctionnel (avec un clavier USB)! Et les temps de chargements sont grandement réduit. Ceci dit, si vous etes interressé par le C64 mini vous l\'avez surement deja... Pour les autres, ceux n\'ayant pas d\'affect particulier pour le C64, passez votre chemin, cette machine est un vrai ordinosaure en plus petit.<br/>3,5/5<br/><br/>Site officiel :<br/><a href=\"https://retrogames.biz/thec64\">www.retrogames.biz/thec64</a>', '2020-11-08 12:21:12', 'images/commodore-64-mini-v2.jpg', 'miniConsole'),
(9, 'MEGADRIVE FLASHBACK HD', 'Voici une mini console surfant sur la vague créée par la NES mini. Cette fois encore ATGames nous propose un produit mal fini dont le catalogue de 85 jeux est presque du troll.<br/><br/>L\'objet est plutôt joli, dispose d\'un port vrai port cartouche et permet de brancher ses manettes de l\'époque en plus des 2 sans fils fournies.<br/>Oui, alors qu\'est-ce qui ne vas pas ?..<br/><br/>L\'émulation est poussive sur les jeux rapides (imaginez Sonic !), la console parait peu résistante, la croix directionnelle est molle, la navigagtion dans l\'interface contre intuitive et le classement des jeux mal pensé.<br/>85 jeux donc. Oui il y\'a pas mal de hits, les Mortal Kombat, les Golden Axe, les Mickey etc... Et aussi des jeux Master System (15), Game Gear (3) et des jeux \"bonus\" (22 jeux jamais sortis ou des homebrews ou issus du catalogue que SEGA proposait aux hôtels ou a Thai Airways... facepalm).<br/>Bref, nul sur toute la ligne.<br/><br/>Emulateur :<br/>Trop lent pour Sonic donc bon...<br/><br/>Verdict :<br/>Simplement scandaleux. Surtout qu\'une mini megadrive produite par SEGA est sortie 20 mois plus tard.<br/>1/5<br/><br/>Site officiel :<br/><a href=\"https://www.atgames.us/\">https://www.atgames.us</a><br/>', '2020-11-08 12:21:12', 'images/megadrive-flashback-hd-v2.jpg', 'miniConsole'),
(10, 'NEO GEO MINI', 'Oh qu\'elle est mignonne, on dirai une borne arcade pour souris...<br/>Bah oui mais j\'ai des doigts taille humaine moi.<br/><br/>Ne tournons pas autour du pot, c\'est un bon produit mais vous ne l\'achèterez pas. A cause de sa taille (à la limite de la blague) et de son prix (pas si élevé en considérant l\'écran et le stick).<br/><br/>Toutes les fonctions modernes sont là et bien fonctionnelles. L\'offre de jeux est conséquente (40) et le choix est pertinent au regard de la ludothèque SNK (baston, shmup et Metal Slug).<br/><br/>Mais la taille du truc... Sérieusement ?<br/>Il est cependant possible de la brancher sur une TV (câble vendu séparément) de brancher 2 bornes ensemble (câble vendu séparément) ou de brancher une manette (vendue séparément).<br/><br/>Emulateur :<br/>Version modifié de NJEMU (émulateur Open Source)<br/><br/>Verdict :<br/>Trop cher pour une borne arcade taille fourmi... en plus il faut tout acheter séparément.<br/>2/5<br/><br/>Site officiel :<br/><a href=\"https://www.snk-corp.co.jp/us/neogeomini/\">www.snk-corp.co.jp/us/neogeomini</a><br/>', '2020-11-08 12:21:12', 'images/neo-geo-mini-v2.png', 'miniConsole'),
(11, 'NES CLASSIC MINI', 'Celle par qui tout a commencé ! Alors objectivement que vaut-elle ?<br/>Le coup, elle vaut le coup. A notre avis elle occupe la 2eme place du podium ex-aequo avec sa grande sœur la SNES mini.<br/><br/>Le catalogue de jeux est plutôt intéressant avec les hits Nintendo et quelques titres méconnus.<br/>L\'interface est claire et élégante, l\'accès au menu est simple et les options graphiques ou de sauvegarde sont réactives.<br/>La qualité d\'émulation est très bonne, meilleur que sur console virtuelle WII.<br/><br/>Et les défauts ?.. Oui il y\'en a bien sûr. Seulement 30 jeux, vendu avec 1 manette filaire (ce sont d\'ailleurs des prises spéciales, obligation d\'acheter une 2eme manette chez Nintendo) et les jeux sont en version US (donc pas de français).<br/><br/>Emulateur :<br/>Emulateur propriétaire Nintendo (créer par Nintendo Europe)<br/><br/>Verdict :<br/>Un tres bon produit qui vaut son prix, 2 defauts : pas de vf et les manettes.<br/>5/5<br/><br/>Site officiel :<br/><a href=\"https://www.nintendo.fr/Divers/Nintendo-Classic-Mini-Nintendo-Entertainment-System/Nintendo-Classic-Mini-Nintendo-Entertainment-System-1124287.html\">https://www.nintendo.fr/Divers/Nintendo-Classic-Mini-Nintendo-Entertainment-System</a><br/>', '2020-11-08 12:21:12', 'images/nes-classic-mini.jpg', 'miniConsole'),
(12, 'NINTENDO SWITCH ONLINE', 'Apres les succes des NES et SNES mini Nintendo offre aux abonnés SWITCH ONLINE la possibilité de jouer a une sélection de jeux 8 et 16 bits.<br/>Bien que plus modeste cétés Super Nintendo le catalogue de jeux disponibles est en constante évolution.<br/>Certains jeux NES proposent en plus du jeu original une version SP qui, suivant le jeu, nous donne des bonus ou nous fait démarrer au dernier niveau.<br/>Prenant la forme de 2 applications distinctes, ces deux émulateurs sont basés sur ceux tournant sur NES et SNES mini.<br/><br/>Emulateur :<br/>Développés par Nintendo Europe (émulateur propriétaire)<br/><br/>Verdict :<br/>Quasi indispensable pour les possesseur de Switch, l\'abonnement annuel permet de jouer a un catalogue grandissant de jeux. L\'émulation est bonne (un peu d\'input lag du au reseau), l\'interface claire, les fonctions de sauvegarde et les options graphique sont la. De plus certains jeux NES proposent une version SP... 2 petites ombres au tableau : c\'est un abonnement et les jeux ne sont qu\'en anglais.<br/>4/5<br/><br/>Site officiel :<br/><a href=\"https://www.nintendo.fr/Gamme-Nintendo-Switch/Nintendo-Switch-Online/NES-et-Super-NES-Nintendo-Switch-Online-1374626.html\">www.nintendo.fr</a>', '2020-11-08 12:21:12', 'images/Nintendo-Switch-Online-v2.jpg', 'miniConsole'),
(13, 'PC ENGINE CORE GRAFX MINI', 'La Rolls des mini-console ! S\'il fallait n\'en garder qu\'une se serait celle-ci!<br/><br/>La PC Engine était une console 8/16 bits developpée par NEC et Hudson Soft qui fut un grand succes au Japon mais tres mal distribuée en occident.<br/>Elle était considérée comme la reine des SHMUP et comme la console la plus rapide en son temps.<br/><br/>Cette mini-console est developpée par Konami, qui a racheter les droits de la PC Engine, et ils ont brillament réussi.<br/>Catalogue de jeux important, qualité de l\'émulation, options graphiques et de sauvegarde, interface soigné etc...<br/>Les points forts de cette machine ne manquent pas !<br/>2 defauts importants cependant : beaucup de jeux Japonnais et son prix de 110é<br/><br/>Emulateur :<br/>??? (a priori un émulateur développé par Konami donc propriétaire)<br/><br/>Verdict :<br/>Quand on voit les prix de certaines mini-consoles on se dit que cette PC Engine mini n\'est pas si chere vu la qualité global du produit.<br/>5/5<br/><br/>Site officiel :<br/><a href=\"https://www.konami.com/games/pcemini/gate?p=TFIvIyACC%2B0IjdnVfBygx8sQY%2F7etFYnxuLwOcVWUyw%3D\">www.konami.com</a>', '2020-11-08 12:21:12', 'images/pc-engine-core-grafx-mini-v2.jpg', 'miniConsole'),
(14, 'PLAYSTATION CLASSIC', 'Un échec cuisant, voilà qui résume la PSX mini.<br/><br/>Seul la carrosserie convient, tout le reste est à jeter.<br/>L\'interface est moche et peu pratique. L\'émulateur utilisé est le même que j\'utilise dans mon RaspberryPi (quand on connait la guerre que livre SONY aux émulateurs depuis la Playstation 1... un comble).<br/><br/>Seulement 20 jeux tous en version PAL (50 Hz au lieu de 60).<br/>Mais surtout ce catalogue incohérent... Pas de Tomb Raider, de MediEvil ou de Crash Bandicoot (des remakes/remastered des 2 derniers sortirons l\'année suivante sur PS4...). On a droit par contre à Rainbow Six pour surfer sur le succès de Rainbow Six Siege sorti 1 an plus tôt sur PS4.<br/>Oui Metal Gear Solid et Final Fantasy 7 sont là, mais en anglais seulement !... Lamentable.<br/><br/>Emulateur :<br/>PCSX ReARMed (émulateur Open Source)<br/><br/>Verdict :<br/>Scandaleux ! Laissez ces machines prendre la poussière sur les étals.<br/>2/5<br/><br/>Site officiel :<br/><a href=\"https://www.playstation.com/fr-fr/explore/playstation-classic/\">www.playstation.com/fr-fr/explore/playstation-classic</a><br/>', '2020-11-08 12:21:12', 'images/playstation-classic-v2.jpg', 'miniConsole'),
(15, 'SEGA MEGADRIVE MINI', 'Voila la réponse de SEGA que nous espérions. Nous fera-t-elle oublier la catastrophique MegaDrive Flashback de ATGames ?<br/><br/>Oui... sauf les manettes.<br/><br/>Cette mini console est presque parfaite : design, interface, prises et connectiques, 42 jeux... La liste de ses qualités est longue.<br/>Mais il y\'a du négatif.<br/>Pas de bloc alimentation, il faut l\'acheter en plus ou utiliser celui d\'un ancien téléphonne.<br/>Les 2 manettes sont filaires et sont les version 3 boutons alors que Street Fighter II en demande 6 (le pack vendu au Japon dispose lui des manettes 6 boutons).<br/><br/>La liste de jeux est fournie et bien équilibrée entre hits et titres meconnus. Notons quand même l\'absence des jeux Disney pourtant incontournables sur cette machine.<br/><br/>Emulateur :<br/>Emulateur propriétaire (créer par M2)<br/><br/>Verdict :<br/>Oui ! Bonne émulation, catalogue de jeux fourni... Rien a redire. Si vous etes fan de SEGA vous ne serez pas (trop) decu.<br/>4/5<br/><br/>Site officiel :<br/><a href=\"https://megadrivemini.sega.com/index.html?lang=fr>megadrivemini.sega.com</a><br/>', '2020-11-08 12:21:12', 'images/sega-megadrive-mini-v2.jpg', 'miniConsole'),
(16, 'SUPER NINTENDO CLASSIC MINI', 'La même que la NES mini avec un look et un catalogue de jeux différents.<br/>Et bien là aussi vous ne serez pas déçu de votre investissement, son seul défaut : 21 jeux.<br/><br/>Qualité d\'émulation top, interface soignée, options graphiques et de sauvegardes etc...<br/><br/>Le nombre de jeux, là est le point noir...<br/>Seulement 21 jeux, et aucun en français (Zelda sniff) !<br/><br/>Beaucoup critiquent le choix des titres. Ce n\'est pas notre avis, le catalogue couvre un large choix de style et les principaux titres Nintendo sont là.<br/>Mais il est vrai que 21 jeux c\'est trop peu. C\'est même le plus petit catalogue de toutes le mini consoles.<br/><br/>Emulateur :<br/>Emulateur propriétaire Nintendo (créer par Nintendo Europe)<br/><br/>Verdict :<br/>Un très bon produit qui vaut son prix, 2 défauts : peu de jeux et pas de Vf.<br/>4/5<br/><br/>Site officiel :<br/>https://www.nintendo.fr/Divers/Nintendo-Classic-Mini-Super-Nintendo-Entertainment-System/Nintendo-Classic-Mini-Super-Nintendo-Entertainment-System-1238330.html<br/>', '2020-11-08 12:21:12', 'images/snes-classic-mini.jpg', 'miniConsole'),
(17, 'DIY - Le Matériel', '<h3>Les cartes SOC</h3>\r\n<p>Pour l’émulation, il existe différentes solutions matérielles. Sur PC, notamment, on peut émuler ce qu’on veut à condition d’avoir une machine récente et une bonne capacité de stockage pour les roms de jeux récents. Mais nous, on veut jouer à des jeux Rétros (pré-2000) sur le grand écran du séjour, installés dans le canapé, donc une machine dédiée sera préférable. On appelle ça une carte SOC. Laquelle choisir ? Odroïd, LattePanda, Banane Pi, Raspberry-Pi ? Celle qui allie rapport qualité-prix, taille mini, personnalisation et basse consommation : le Raspberry-Pi 3B+.<br/>\r\nPassons aux infos concrètes:<br/>\r\n<h3>Raspberry Pi 3B+</h3><br/>\r\n<h4>Données Techniques</h4><br/>\r\n<p>Le Raspberry Pi 3 Model B+ est une carte SOC qui possède un processeur quad-core 64 bits cadencé à 1,4 GHz, un réseau sans fil Bibande (WiFi) de 2,4 GHz et 5 GHz, une connexion Bluetooth 4.2 / BLE, une connexion Ethernet 1 GHz.</p><br/>\r\n<h4>Connectiques</h4><br/>\r\n<p>Cette carte est dotée de : 1 port d’alim micro USB, 1 port Gigabit Ethernet, 4 ports USB 2.0, 1 port GPIO (40 pin), 1 port HDMI, 1 port MIPI CSI (petit jack / sortie son ou vidéo), 1 port cartes micro SD</p><br/><br/>\r\n<h4>Installation</h4><br/>\r\nCommençons par faire un tour sur Amazon pour acheter la base:<br/><br/>\r\n<table class=\"shopping-list\">\r\n<h4>Liste de courses</h4>\r\n<thead>\r\n<tr class=\"table-primary\">\r\n<th>Produit</th>\r\n<th>Description</th>\r\n<th>Lien</th>\r\n</tr>\r\n</thead>\r\n<tr class= « table-secondary »>\r\n	<td>Raspberry Pi 3B+</td>\r\n	<td>Le mini-ordinateur permettant de faire tourner tous ces émulateurs. Processeur 4 core 1,4Ghz / 1GO de RAM. Excellentes performances jusqu\'aux 64 bits.</td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/Raspberry-Pi-3-Mod%25C3%25A8le-B-Carte-m%25C3%25A8re/dp/B07BDR5PDW/ref=as_li_ss_tl?__mk_fr_FR=%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591&amp;keywords=Raspberry+Pi+3&amp;qid=1555595515&amp;s=gateway&amp;sr=8-1&amp;linkCode=sl1&amp;tag=raspberrypi075-21&amp;linkId=9f4b9daa197a31351f5057d56b195368&amp;language=fr_FR\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2FRaspberry-Pi-3-Mod%25C3%25A8le-B-Carte-m%25C3%25A8re%2Fdp%2FB07BDR5PDW%2Fref%3Das_li_ss_tl%3F__mk_fr_FR%3D%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591%26keywords%3DRaspberry%2BPi%2B3%26qid%3D1555595515%26s%3Dgateway%26sr%3D8-1%26linkCode%3Dsl1%26tag%3Draspberrypi075-21%26linkId%3D9f4b9daa197a31351f5057d56b195368%26language%3Dfr_FR&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script>\r\n	</td>\r\n</tr>\r\n<tr class= « table-secondary »>\r\n	<td>Boîtier</td>\r\n	<td>Boitier officiel RPI3CASE pour Rasperry Pi 3B+</td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/Raspberry-Pi-RPI3CASE-BG-Bo%25C3%25AEtier-pour-Mod%25C3%25A8le/dp/B01F1PSFY6/ref=sr_1_29?__mk_fr_FR=%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591&amp;crid=3B9O85KZDKHSG&amp;dchild=1&amp;keywords=boitier+raspebrry+pi+3&amp;qid=1603722315&amp;quartzVehicle=72-828&amp;replacementKeywords=boitier+raspebrry+pi&amp;sprefix=boitier+raspe%252Caps%252C220&amp;sr=8-29\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2FRaspberry-Pi-RPI3CASE-BG-Bo%25C3%25AEtier-pour-Mod%25C3%25A8le%2Fdp%2FB01F1PSFY6%2Fref%3Dsr_1_29%3F__mk_fr_FR%3D%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591%26crid%3D3B9O85KZDKHSG%26dchild%3D1%26keywords%3Dboitier%2Braspebrry%2Bpi%2B3%26qid%3D1603722315%26quartzVehicle%3D72-828%26replacementKeywords%3Dboitier%2Braspebrry%2Bpi%26sprefix%3Dboitier%2Braspe%252Caps%252C220%26sr%3D8-29&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script></td>\r\n</tr>\r\n<tr class= « table-secondary »>\r\n	<td>Alimentation</td>\r\n	<td>Alimentation micro-USB 5V 3000mA</td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/dp/B01M58O9M9/ref=dp_prsubs_2\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2Fdp%2FB01M58O9M9%2Fref%3Ddp_prsubs_2&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script></td>\r\n</tr>\r\n<tr class= « table-secondary »>\r\n	<td>Carte Micro SD</td>\r\n	<td>Le support de stockage du système Recalbox. Une très grande carte n\'a pas d\'utilité, nous ne stockerons pas les jeux dessus. </td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/SanDisk-SDSQUAR-016G-GN6MA-M%25C3%25A9moire-MicroSDHC-Nouvelle/dp/B073K14CVB/ref=as_li_ss_tl?__mk_fr_FR=%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591&amp;keywords=carte+micro+sd+16&amp;qid=1555595110&amp;s=gateway&amp;sr=8-1&amp;linkCode=sl1&amp;tag=raspberrypi075-21&amp;linkId=1ea9878e3021d1baaba3dd14c22d200d&amp;language=fr_FR\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2FSanDisk-SDSQUAR-016G-GN6MA-M%25C3%25A9moire-MicroSDHC-Nouvelle%2Fdp%2FB073K14CVB%2Fref%3Das_li_ss_tl%3F__mk_fr_FR%3D%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591%26keywords%3Dcarte%2Bmicro%2Bsd%2B16%26qid%3D1555595110%26s%3Dgateway%26sr%3D8-1%26linkCode%3Dsl1%26tag%3Draspberrypi075-21%26linkId%3D1ea9878e3021d1baaba3dd14c22d200d%26language%3Dfr_FR&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script></td>\r\n</tr>\r\n<tr class= « table-secondary »>\r\n	<td>Clef USB</td>\r\n	<td>Le support de stockage des jeux (roms). Le poids des jeux est négligeable jusqu\'aux 32 bits, par exemple l\'intégralité de la ludothèque Megadrive pèse moins d\'1GO ; par contre 1 jeux PSX pèse 700MO en moyenne. Une clef USB de 64GO hébergera facilement quelques milliers de jeux 8 et 16 bits plus une centaine de jeux Playstation. </td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/SanDisk-Ultra-allant-jusqu%25C3%25A0-130Mo/dp/B077VYCV37/ref=sr_1_17?__mk_fr_FR=%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591&amp;crid=8R0U5G89D7IZ&amp;dchild=1&amp;keywords=clef%252Busb%252B64%252Bgo&amp;qid=1606316550&amp;sprefix=clef%252Busb%252Caps%252C204&amp;sr=8-17&amp;th=1\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2FSanDisk-Ultra-allant-jusqu%25C3%25A0-130Mo%2Fdp%2FB077VYCV37%2Fref%3Dsr_1_17%3F__mk_fr_FR%3D%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591%26crid%3D8R0U5G89D7IZ%26dchild%3D1%26keywords%3Dclef%252Busb%252B64%252Bgo%26qid%3D1606316550%26sprefix%3Dclef%252Busb%252Caps%252C204%26sr%3D8-17%26th%3D1&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script></td>\r\n</tr>\r\n<tr class= « table-secondary »>\r\n	<td>Câble HDMI</td>\r\n	<td>Raccord écran… </td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/AmazonBasics-Compatible-Ethernet-retour-Nouvelles/dp/B014I8SIJY/ref=as_li_ss_tl?__mk_fr_FR=%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591&amp;keywords=cable%252Bhdmi&amp;qid=1555595069&amp;s=gateway&amp;sr=8-3&amp;linkCode=sl1&amp;tag=raspberrypi075-21&amp;linkId=50a06b48bda43a8852da0f958ead0ab6&amp;language=fr_FR&amp;th=1\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2FAmazonBasics-Compatible-Ethernet-retour-Nouvelles%2Fdp%2FB014I8SIJY%2Fref%3Das_li_ss_tl%3F__mk_fr_FR%3D%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591%26keywords%3Dcable%252Bhdmi%26qid%3D1555595069%26s%3Dgateway%26sr%3D8-3%26linkCode%3Dsl1%26tag%3Draspberrypi075-21%26linkId%3D50a06b48bda43a8852da0f958ead0ab6%26language%3Dfr_FR%26th%3D1&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script></td>\r\n</tr>\r\n<tr class= « table-secondary »>\r\n	<td>Manettes (filaires)</td>\r\n	<td>Lot de 2 manettes imitation SNES filaires. Ne pas acheter si vous possédez des manettes Xbox (360 et ONE) ou Playstation (3 et 4). </td>\r\n	<td><div class=\"iframely-embed\"><div class=\"iframely-responsive\" style=\"height: 140px; padding-bottom: 0;\"><a href=\"https://www.amazon.fr/iNNEXT-Manette-Controller-Joystick-Raspberry/dp/B01EA7MVTQ/ref=sr_1_1?__mk_fr_FR=%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591&amp;dchild=1&amp;keywords=innext&amp;qid=1603722442&amp;sr=8-1\" data-iframely-url=\"//cdn.iframe.ly/api/iframe?url=https%3A%2F%2Fwww.amazon.fr%2FiNNEXT-Manette-Controller-Joystick-Raspberry%2Fdp%2FB01EA7MVTQ%2Fref%3Dsr_1_1%3F__mk_fr_FR%3D%25C3%2585M%25C3%2585%25C5%25BD%25C3%2595%25C3%2591%26dchild%3D1%26keywords%3Dinnext%26qid%3D1603722442%26sr%3D8-1&amp;key=86b28baf00a4da6e4951bece7aa659e1&amp;iframe=card-small\"></a></div></div><script async src=\"//cdn.iframe.ly/embed.js\" charset=\"utf-8\"></script></td>\r\n</tr>\r\n</table>\r\n\r\n<br/>\r\n<p> Vous voilà équipés ! Maintenant, il faut la couche logicielle avant de pouvoir jouer… Comment faire ? C’est beaucoup moins compliqué que ça en a l’air. Suivez les deux liens ci-dessous afin de télécharger Etcher et Recalbox 7, la suite vous est expliquée <a href=\"/article/DIY%20-%20Recalbox\">par ici</a>.<br/>\r\n<a href=\"https://www.balena.io/etcher/\">Etcher : Pour installer Recalbox sur votre carte SD</a><br/>\r\n<a href=\"https://download.recalbox.com/\">Recalbox : votre futur meilleur pote ! </a><br/>\r\n\r\n', '2021-01-12 12:55:35', 'images/materiel.jpg', 'article'),
(18, 'DIY - Recalbox', '<h4>Pour commencer</h4><br/>\r\n<p> Si vous ne savez pas sur quel appareil faire fonctionner votre solution de rétrogaming, commencez par lire <a href=\"/article/DIY%20-%20Le%20Mat%C3%A9riel\">cet article</a>.\r\n<p> Vous voilà équipés ? Maintenant, il faut la couche logicielle avant de pouvoir jouer… Comment faire ? C’est beaucoup moins compliqué que ça en a l’air. Suivez les deux liens ci-dessous afin de télécharger Etcher et Recalbox 7.\r\n<a href=\"https://www.balena.io/etcher/\">Etcher : Pour installer Recalbox sur votre carte SD</a><br/>\r\n<a href=\"https://download.recalbox.com/\">Recalbox : votre futur meilleur pote ! </a><br/>\r\n<p>Maintenant, parlons de ce qu\'est Recalbox. <br/></p><br/>\r\n<h4>Définition</h4>\r\n<br/>\r\n<blockquote>Recalbox est un système d\'exploitation libre, gratuit et open source dédié à l\'émulation, la préservation et l\'accessibilité des vieux jeux vidéo (retrogaming).<br/><br/>\r\nRecalbox est un projet qui cible principalement les débutants et les technophobes, grâce à la pré-configuration du système, et une assistance dans l\'utilisation au quotidien. Le système inclut de nombreux jeux open source à la première installation et est dépourvu de contenu sous copyright (roms, bios...). Sauf autorisation précise, Recalbox est interdit à la vente, revente ou tout autre usage commercial, comme le stipulent sa licence d\'utilisation1 et les licences d\'utilisation de RetroArch/Libretro, architecture sur laquelle s\'appuie en partie le projet.<br/><br/>\r\n<span class=«author»>Wikipédia</span></blockquote><br/>\r\n<p>C’est une bonne définition...<br/>\r\nMais personne n’en parle mieux que Fab2ris, le Community Manager de Recalbox. Nous vous invitons à suivre les liens suivants : <br/><br/>\r\n<a href= « https://ouiaremakers.com/posts/tutoriel-diy-montez-facilement-votre-console-de-jeu-retrogaming-avec-recalbox »>Guide de Fab2ris sur Ouiaremakers.com</a><br/>\r\n<a href= « https://www.youtube.com/playlist?list=PL2oNQ0AT7fx2ExiSNrfHUzga5GnogI4sh »>La Playlist de tous les Tuto de la chaîne Youtube Recalbox</a><br/>\r\nAvec ces deux liens, vous êtes parés, mais on ne va pas vous laisser comme ça ;-)</p><br/>\r\n<h4>Installation</h4><br/>\r\n<p>Voici la liste des étapes à suivre*:<br/>\r\n	<ol class= « to-do-list »>\r\n		<li>Télécharger et installer ETCHER sur votre PC</li>\r\n		<li>Télécharger la dernière version de RECALBOX</li>\r\n		<li>Installer RECALBOX sur la carte SD avec ETCHER(et votre PC)</li>\r\n		<li>Placer le RASPBERRY dans son boitier puis mettre la clef usb</li>\r\n		<li>Insérer la carte SD dans le RASPBERRY PI</li>\r\n		<li>Brancher et démarrer le RASPBERRY</li>\r\n		<li>Ce 1er démarrage prend beaucoup de temps...</li>\r\n		<li>Brancher 1 manette</li>\r\n		<li>Paramétrer le stockage sur la clef USB</li>\r\n		<li>Redémarrer la mini-console</li>\r\n		<li>Brancher 1 manette</li>\r\n		<li>Configurer la langue (et modifier l\'affichage, les options etc...)</li>\r\n		<li>Télécharger les BIOS (Google \"recalbox 7 bios pack download\")</li>\r\n		<li>Télécharger des ROMS (la aussi Google)</li>\r\n		<li>Ajouter les BIOS à la console (Dans la clef USB, dossier \\Recalbox\\bios)</li>\r\n		<li>Ajouter des ROMS à la console (Dans la clef USB, dossier \\Recalbox\\roms\\dossier-de-la-console)</li>\r\n		<li>Redémarrer</li>\r\n		<li>Jouer !</li>\r\n	</ol>\r\nEnjoy !</p>', '2020-07-03 13:14:05', 'images/recalbox.png', 'article');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `related_to_id` int NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_reported` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `related_to_id`, `author`, `content`, `created_at`, `is_reported`) VALUES
(19, 12, 'Dev-Mpx', 'Salut ! Vous pouvez laisser un commentaire ici !', '2020-11-24 15:12:30', 0),
(20, 7, 'Dev-pour-test', 'Test de commentaire à signaler', '2021-01-28 16:02:34', 0),
(21, 17, 'Dev-pour-test', 'Test de commentaire à signaler', '2021-01-28 16:03:25', 0);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200701112907', '2020-07-01 13:29:18', 199),
('DoctrineMigrations\\Version20200702043443', '2020-07-02 06:34:55', 105),
('DoctrineMigrations\\Version20200703154257', '2020-07-03 17:43:23', 349),
('DoctrineMigrations\\Version20210129142021', '2021-01-29 15:22:16', 60);

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `emulated_on_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_year` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`id`, `emulated_on_id`, `name`, `release_year`, `type`, `description`) VALUES
(1, 6, '3-D Tic-Tac-Toe', 1980, 'puzzle', ''),
(2, 6, 'Adventure', 1979, 'rpg', ''),
(3, 6, 'Adventure II', 2005, 'rpg', ''),
(4, 6, 'Air-Sea Battle', 1977, 'shoot\'em up', ''),
(5, 6, 'Aquaventure', 1983, 'shoot\'em up', ''),
(6, 6, 'Asteroids', 1981, 'shoot\'em up', ''),
(7, 6, 'Atari Climber', 1987, 'arcade', ''),
(8, 6, 'Backgammon', 1979, 'board', ''),
(9, 6, 'Barnstorming', 1982, 'course', ''),
(10, 6, 'Basketball', 1979, 'sport', ''),
(11, 6, 'Beamrider', 1984, 'shoot\'em up', ''),
(12, 6, 'Black Jack', 1977, 'board', ''),
(13, 6, 'Bloody Human Freeway', 1981, 'arcade', ''),
(14, 6, 'Bowling', 1978, 'sport', ''),
(15, 6, 'Boxing', 1980, 'sport', ''),
(16, 6, 'Breakout', 1978, 'arcade', ''),
(17, 6, 'Bridge', 1980, 'board', ''),
(18, 6, 'Canyon Bomber ', 1978, 'shoot\'em up', ''),
(19, 6, 'Centipede', 1982, 'arcade', ''),
(20, 6, 'Championship Soccer', 1980, 'sport', ''),
(21, 6, 'Checkers', 1980, 'board', ''),
(22, 6, 'Chopper Command', 1982, 'shoot\'em up', ''),
(23, 6, 'Circus Atari', 1978, 'arcade', ''),
(24, 6, 'Combat Two', 1982, 'shoot\'em up', ''),
(25, 6, 'Combat', 1978, 'shoot\'em up', ''),
(26, 6, 'Cosmic Commuter', 1984, 'arcade', ''),
(27, 6, 'Crackpots', 1983, 'shoot\'em up', ''),
(28, 6, 'Crystal Castles', 1984, 'arcade', ''),
(29, 6, 'Decathlon', 0, 'sport', ''),
(30, 6, 'Demons to Diamonds', 1982, 'shoot\'em up', ''),
(31, 6, 'Desert Falcon', 1987, 'shoot\'em up', ''),
(32, 6, 'Dodge Em', 1980, 'arcade', ''),
(33, 6, 'Dolphin', 1983, 'arcade', ''),
(34, 6, 'Double Dunk', 1988, 'sport', ''),
(35, 6, 'Dragster', 1980, 'course', ''),
(36, 6, 'Enduro', 1983, 'course', ''),
(37, 6, 'Fatal Run', 1989, 'course', ''),
(38, 6, 'Fishing Derby', 1980, 'arcade', ''),
(39, 6, 'Flag Capture', 1978, 'puzzle', ''),
(40, 6, 'Football', 1988, 'sport', ''),
(41, 6, 'Freeway', 1981, 'arcade', ''),
(42, 6, 'Frog Pond', 1982, 'arcade', ''),
(43, 6, 'Front Line', 1984, 'arcade', ''),
(44, 6, 'Frostbite', 1983, 'arcade', ''),
(45, 6, 'Fun with Numbers', 1977, 'education', ''),
(46, 6, 'Golf', 1978, 'sport', ''),
(47, 6, 'Grand Prix', 1982, 'course', ''),
(48, 6, 'Gravitar', 1983, 'shoot\'em up', ''),
(49, 6, 'H.E.R.O.', 1984, 'action', ''),
(50, 6, 'Hangman', 1978, 'board', ''),
(51, 6, 'Haunted House', 1981, 'aventure', ''),
(52, 6, 'Home Run', 1978, 'sport', ''),
(53, 6, 'Human Cannonball', 1978, 'shoot\'em up', ''),
(54, 12, 'Ice Hockey', 1988, 'sport', 'NES'),
(55, 6, 'Indy 500', 1978, 'course', ''),
(56, 6, 'Jungle Hunt', 1983, 'arcade', ''),
(57, 6, 'Kaboom!', 1981, 'arcade', ''),
(58, 6, 'Keystone Kapers', 1983, 'plateforme', ''),
(59, 6, 'Laser Blast', 1981, 'shoot\'em up', ''),
(60, 6, 'Maze Craze', 1978, 'arcade', ''),
(61, 6, 'Megamania', 1982, 'shoot\'em up', ''),
(62, 6, 'Millipede', 1984, 'arcade', ''),
(63, 6, 'Miniature Golf', 1978, 'sport', ''),
(64, 6, 'Missile Command', 1980, 'arcade', ''),
(65, 6, 'MotoRodeo', 1990, 'course', ''),
(66, 6, 'Night Driver', 1980, 'course', ''),
(67, 6, 'Off The Wall', 1989, 'arcade', ''),
(68, 6, 'Oink!', 1983, 'arcade', ''),
(69, 6, 'Outlaw', 1979, 'shoot\'em up', ''),
(70, 6, 'Pitfall II: Lost Caverns', 1984, 'plateforme', ''),
(71, 6, 'Pitfall!', 1983, 'plateforme', ''),
(72, 6, 'Plaque Attack', 1983, 'shoot\'em up', ''),
(73, 6, 'Polaris', 1983, 'shoot\'em up', ''),
(74, 6, 'Pong (Video Olympics)', 1977, 'arcade', ''),
(75, 6, 'Pressure Cooker', 1983, 'arcade', ''),
(76, 6, 'Radar Lock', 1989, 'shoot\'em up', ''),
(77, 6, 'Realsports Baseball', 1982, 'sport', ''),
(78, 6, 'Realsports Basketball', 1983, 'sport', ''),
(79, 6, 'Realsports Soccer', 1982, 'sport', ''),
(80, 6, 'Realsports Volleyball', 1983, 'sport', ''),
(81, 6, 'Return to Haunted', 2005, 'aventure', ''),
(82, 6, 'River Raid', 1982, 'shoot\'em up', ''),
(83, 6, 'River Raid II', 1988, 'shoot\'em up', ''),
(84, 6, 'Robot Tank', 1983, 'shoot\'em up', ''),
(85, 6, 'Saboteur', 1983, 'shoot\'em up', ''),
(86, 6, 'Save Mary', 1989, 'arcade', ''),
(87, 6, 'Seaquest', 1983, 'shoot\'em up', ''),
(88, 6, 'Secret Quest', 1989, 'aventure', ''),
(89, 6, 'Skiing', 1980, 'sport', ''),
(90, 6, 'Sky Diver', 1978, 'arcade', ''),
(91, 6, 'Slot Machine', 1979, 'puzzle', ''),
(92, 6, 'Slot Racers', 1978, 'arcade', ''),
(93, 6, 'Solaris', 1986, 'simulation', ''),
(94, 6, 'Space Invaders', 1980, 'shoot\'em up', ''),
(95, 6, 'Space War', 1978, 'shoot\'em up', ''),
(96, 6, 'Spider Fighter', 1982, 'shoot\'em up', ''),
(97, 6, 'Sprintmaster', 1988, 'course', ''),
(98, 6, 'Stampede', 1981, 'action', ''),
(99, 6, 'Star Ship', 1977, 'simulation', ''),
(100, 6, 'Starmaster', 1982, 'simulation', ''),
(101, 6, 'Steeplechase', 1980, 'sport', ''),
(102, 6, 'Stellar Track', 1980, 'textuel', ''),
(103, 6, 'Street Racer', 1977, 'course', ''),
(104, 6, 'Submarine Commander', 1982, 'simulation', ''),
(105, 6, 'Super Baseball', 0, 'sport', ''),
(106, 6, 'Super Breakout', 1978, 'arcade', ''),
(107, 6, 'Super Football', 1988, 'sport', ''),
(108, 6, 'Surround', 1977, 'arcade', ''),
(109, 6, 'Swordquest: Earthworld', 1982, 'rpg', ''),
(110, 6, 'Swordquest: Fireworld', 1983, 'rpg', ''),
(111, 6, 'Swordquest: Waterworld', 1984, 'rpg', ''),
(112, 6, 'Tempest', 1981, 'shoot\'em up', ''),
(113, 12, 'Tennis', 1984, 'sport', 'NES'),
(114, 6, 'Video Checkers', 1980, 'board', ''),
(115, 6, 'Video Chess', 1979, 'board', ''),
(116, 6, 'Video Pinball', 1978, 'flipper', ''),
(117, 6, 'Warlords', 1981, 'action', ''),
(118, 6, 'Wizard', 2005, 'aventure', ''),
(119, 6, 'Yars  Return', 2005, 'shoot\'em up', ''),
(120, 6, 'Yars  Revenge', 1981, 'shoot\'em up', ''),
(121, 6, 'House', 1982, 'aventure', ''),
(122, 12, 'Balloon Fight', 1984, 'arcade', 'NES'),
(123, 11, 'Bubble Bobble', 1988, 'plateforme', ''),
(124, 11, 'Castlevania', 1986, 'action', ''),
(125, 11, 'Castlevania II: Simon\'s Quest', 1989, 'action', ''),
(126, 12, 'Donkey Kong', 1983, 'plateforme', 'NES'),
(127, 12, 'Donkey Kong Jr.', 1986, 'plateforme', 'NES'),
(128, 12, 'Double Dragon II: The Revenge', 1989, 'beat\'em all', 'NES'),
(129, 11, 'Dr Mario', 1989, 'puzzle', ''),
(130, 12, 'Excitebike', 1985, 'course', 'NES'),
(131, 11, 'Final Fantasy', 1987, 'rpg', ''),
(132, 11, 'Galaga', 1984, 'shoot\'em up', ''),
(133, 11, 'Ghosts\'n Goblins', 1986, 'action', ''),
(134, 13, 'Gradius', 1991, 'shoot\'em up', ''),
(135, 12, 'Ice Climber', 1985, 'arcade', 'NES'),
(136, 11, 'Kid Icarus', 1986, 'plateforme', ''),
(137, 11, 'Kirby\'s Adventure', 1993, 'plateforme', ''),
(138, 12, 'Mario Bros.', 1986, 'arcade', 'NES'),
(139, 11, 'Mega Man 2', 1988, 'action', ''),
(140, 11, 'Metroid', 1986, 'plateforme', ''),
(141, 11, 'Ninja Gaiden', 1988, 'action', ''),
(142, 11, 'Pac-Man', 1984, 'arcade', ''),
(143, 12, 'Punch-Out!!', 1987, 'sport', 'NES'),
(144, 12, 'StarTropics', 1990, 'action', 'NES'),
(145, 11, 'Super C', 1988, 'action', ''),
(146, 12, 'Super Mario Bros.', 1983, 'plateforme', 'NES'),
(147, 12, 'Super Mario Bros. 2', 1988, 'plateforme', 'NES'),
(148, 12, 'Super Mario Bros. 3', 1990, 'plateforme', 'NES'),
(149, 12, 'Tecmo Bowl', 1988, 'sport', 'NES'),
(150, 11, 'The Legend of Zelda', 1987, 'rpg', ''),
(151, 12, 'Zelda II: The Adventure of Link', 1988, 'rpg', 'NES'),
(152, 12, 'Donkey Kong Country', 1994, 'plateforme', 'Super NES'),
(153, 16, 'EarthBound', 1994, 'rpg', ''),
(154, 16, 'Final Fantasy VI (Final Fantasy III)', 1994, 'rpg', ''),
(155, 12, 'F-Zero', 1991, 'course', 'Super NES'),
(156, 12, 'Kirby\'s Dream Course', 1995, 'course', 'Super NES'),
(157, 16, 'Kirby\'s Fun Pak (Kirby Super Star)', 1996, 'mini-jeux', ''),
(158, 16, 'Mega Man X', 1994, 'action', ''),
(159, 16, 'Secret of Mana', 1994, 'rpg', ''),
(160, 12, 'Star Fox', 1993, 'shoot\'em up', 'Super NES'),
(161, 12, 'Star Fox 2', 2017, 'shoot\'em up', 'Super NES'),
(162, 7, 'Street Fighter II\': Hyper Fighting', 1992, 'combat', ''),
(163, 16, 'Super Castlevania IV', 1992, 'action', ''),
(164, 12, 'Super Ghouls\'n Ghosts', 1992, 'action', 'Super NES'),
(165, 12, 'Super Mario Kart', 1993, 'course', 'Super NES'),
(166, 16, 'Super Mario RPG: Legend of the Seven Stars', 1996, 'rpg', ''),
(167, 12, 'Super Mario World', 1992, 'plateforme', 'Super NES'),
(168, 12, 'Super Mario World 2: Yoshi\'s Island', 1995, 'plateforme', 'Super NES'),
(169, 12, 'Super Metroid', 1994, 'action', 'Super NES'),
(170, 16, 'Super Probotector: Alien Rebels (Contra III)', 1992, 'action', ''),
(171, 12, 'Super Punch-Out!!', 1994, 'sport', 'Super NES'),
(172, 12, 'The Legend of Zelda: A Link to the Past', 1992, 'rpg', 'Super NES'),
(173, 12, 'Adventures of Lolo', 1989, 'puzzle', 'NES'),
(174, 12, 'Adventures of Lolo 2', 1990, 'puzzle', 'NES'),
(175, 12, 'Baseball', 1983, 'sport', 'NES'),
(176, 12, 'Blaster Master (+ Special Version)', 1988, 'action', 'NES'),
(177, 12, 'City Connection', 1985, 'plateforme', 'NES'),
(178, 12, 'Clu Clu Land', 1984, 'arcade', 'NES'),
(179, 12, 'Clu Clu Land: Welcome to New Cluclu Land', 1985, 'arcade', 'NES'),
(180, 12, 'Crystalis', 1990, 'rpg', 'NES'),
(181, 12, 'Donkey Kong 3', 1983, 'plateforme', 'NES'),
(182, 12, 'Double Dragon', 1987, 'beat\'em all', 'NES'),
(183, 12, 'Dr. Mario  (+ Special Version)', 1990, 'puzzle', 'NES'),
(184, 12, 'Eliminator Boat Duel', 1991, 'action', 'NES'),
(185, 12, 'Fire Emblem: Ankoku Ry? to Hikari no Tsurugi', 1990, 'rpg', 'NES'),
(186, 12, 'Ghosts\'n Goblins  (+ Special Version)', 1985, 'action', 'NES'),
(187, 12, 'Gradius  (+ Special Version + Second loop)', 1986, 'shoot\'em up', 'NES'),
(188, 12, 'Journey to Silius', 1990, 'run\'n gun', 'NES'),
(189, 12, 'Joy Mech Fight', 1993, 'combat', 'NES'),
(190, 12, 'Kid Icarus  (+ Special Version)', 1986, 'plateforme', 'NES'),
(191, 12, 'Kirby\'s Adventure  (+ Special Version)', 1993, 'plateforme', 'NES'),
(192, 12, 'Kung-Fu Heroes', 1986, 'action', 'NES'),
(193, 12, 'Mario and Yoshi', 1991, 'puzzle', 'NES'),
(194, 12, 'Metroid  (+ Special Version Mother Brain battle & Ridley battle)', 1987, 'action', 'NES'),
(195, 12, 'Mighty Bomb Jack', 1987, 'arcade', 'NES'),
(196, 12, 'NES Open Tournament Golf  (+ Special Version)', 1991, 'sport', 'NES'),
(197, 12, 'Ninja Gaiden  (+ Special Version)', 1988, 'action', 'NES'),
(198, 12, 'Pro Wrestling', 1986, 'combat', 'NES'),
(199, 12, 'River City Ransom', 1989, 'action', 'NES'),
(200, 12, 'Shadow of the Ninja', 1990, 'action', 'NES'),
(201, 12, 'Soccer', 1985, 'sport', 'NES'),
(202, 12, 'Solomon\'s Key', 1986, 'puzzle', 'NES'),
(203, 12, 'Star Soldier  (+ Special Version)', 1986, 'shoot\'em up', 'NES'),
(204, 12, 'Super Dodge Ball', 1988, 'sport', 'NES'),
(205, 12, 'Super Mario Bros.: The Lost Levels', 1986, 'plateforme', 'NES'),
(206, 12, 'The Legend of Zelda  (+ Special Version)', 1987, 'rpg', 'NES'),
(207, 12, 'Tsuppari Oozumou', 1987, 'combat', 'NES'),
(208, 12, 'TwinBee  (+ Special Version)', 1986, 'shoot\'em up', 'NES'),
(209, 12, 'Vice: Project Doom', 1991, 'action', 'NES'),
(210, 12, 'Volleyball', 1986, 'sport', 'NES'),
(211, 12, 'Vs. Excitebike', 1988, 'course', 'NES'),
(212, 12, 'Wario\'s Woods', 1994, 'puzzle', 'NES'),
(213, 12, 'Wrecking Crew', 1985, 'arcade', 'NES'),
(214, 12, 'Yie Ar Kung-Fu', 1985, 'combat', 'NES'),
(215, 12, 'Brawl Brothers', 1993, 'beat\'em all', 'Super NES'),
(216, 12, 'Breath of Fire', 1993, 'rpg', 'Super NES'),
(217, 12, 'Breath of Fire II', 1994, 'rpg', 'Super NES'),
(218, 12, 'Demon\'s Crest', 1994, 'action', 'Super NES'),
(219, 12, 'Joe and Mac 3: Lost in the Tropics', 1994, 'plateforme', 'Super NES'),
(220, 12, 'Kirby\'s Dream Land 3', 1997, 'plateforme', 'Super NES'),
(221, 12, 'Kirby\'s Fun Pak', 1996, 'mini-jeux', 'Super NES'),
(222, 12, 'Pilotwings', 1992, 'simulation', 'Super NES'),
(223, 12, 'Pop\'n TwinBee', 1993, 'shoot\'em up', 'Super NES'),
(224, 12, 'Smash Tennis', 1994, 'sport', 'Super NES'),
(225, 12, 'Stunt Race FX', 1994, 'course', 'Super NES'),
(226, 12, 'Super E.D.F Earth Defence Force', 1991, 'shoot\'em up', 'Super NES'),
(227, 12, 'Super Puyo Puyo 2', 1995, 'puzzle', 'Super NES'),
(228, 12, 'Super Soccer', 1992, 'sport', 'Super NES'),
(229, 12, 'Super Tennis', 1992, 'sport', 'Super NES'),
(230, 15, 'Alex Kidd in the Enchanted Castle', 1989, 'plateforme', ''),
(231, 9, 'Alien Storm ', 1991, 'beat\'em up', ''),
(232, 15, 'Altered Beast', 1989, 'beat\'em up', ''),
(233, 9, 'Arrow Flash ', 1990, 'shoot\'em up', ''),
(234, 9, 'Bonanza Bros. ', 1991, 'plateforme', ''),
(235, 9, 'Chakan : The Forever Man ', 1992, 'action', ''),
(236, 9, 'Columns III ', 1994, 'puzzle', ''),
(237, 15, 'Columns', 1990, 'puzzle', ''),
(238, 15, 'Comix Zone', 1995, 'action', ''),
(239, 9, 'Crack Down ', 1990, 'arcade', ''),
(240, 9, 'Decap Attack ', 1991, 'plateforme', ''),
(241, 15, 'Dr. Robotnik\'s Mean Bean Machine', 1993, 'puzzle', ''),
(242, 9, 'E-SWAT : City Under Siege ', 1990, 'action', ''),
(243, 15, 'Eternal Champions', 1993, 'combat', ''),
(244, 9, 'Fatal Labyrinth ', 1990, 'rpg', ''),
(245, 9, 'Flicky ', 1990, 'arcade', ''),
(246, 9, 'Gain Ground ', 1991, 'action', ''),
(247, 9, 'Golden Axe II ', 1989, 'beat\'em up', ''),
(248, 9, 'Golden Axe III ', 1991, 'beat\'em up', ''),
(249, 15, 'Golden Axe', 1989, 'beat\'em up', ''),
(250, 9, 'Jewel Master ', 1991, 'plateforme', ''),
(251, 15, 'Kid Chameleon', 1992, 'plateforme', ''),
(252, 9, 'Mortal Kombat 3 ', 1995, 'combat', ''),
(253, 9, 'Mortal Kombat II ', 1994, 'combat', ''),
(254, 9, 'Mortal Kombat ', 1992, 'combat', ''),
(255, 9, 'Phantasy Star II ', 1989, 'rpg', ''),
(256, 9, 'Phantasy Star III : Generations of Doom ', 1991, 'rpg', ''),
(257, 9, 'Phantasy Star IV ', 1994, 'rpg', ''),
(258, 9, 'Ristar ', 1995, 'plateforme', ''),
(259, 9, 'Shadow Dancer : The Secret of Shinobi ', 1990, 'action', ''),
(260, 9, 'Shining Force: The Legacy of Great Intention ', 1993, 'rpg', ''),
(261, 9, 'Shining Force II: The Ancient Seal ', 1994, 'rpg', ''),
(262, 9, 'Shining in the Darkness ', 1991, 'rpg', ''),
(263, 9, 'Shinobi III : Return of the Ninja Master ', 1993, 'action', ''),
(264, 9, 'Sonic & Knuckles ', 1994, 'plateforme', ''),
(265, 9, 'Sonic 3D Blast ', 1996, 'plateforme', ''),
(266, 15, 'Sonic Spinball', 1993, 'flipper', ''),
(267, 15, 'Sonic The Hedgehog 2', 1992, 'plateforme', ''),
(268, 15, 'Sonic The Hedgehog', 1991, 'plateforme', ''),
(269, 9, 'Super Thunder Blade ', 1989, 'shoot\'em up', ''),
(270, 9, 'Sword of Vermilion', 1990, 'rpg', ''),
(271, 9, 'the Ooze', 1995, 'action', ''),
(272, 9, 'Vectorman 2 ', 1995, 'action', ''),
(273, 15, 'Vectorman', 1995, 'action', ''),
(274, 15, 'Virtua Fighter 2', 1997, 'combat', ''),
(275, 9, 'Alex Kidd in High Tech World', 1989, 'plateforme', ''),
(276, 9, 'Alex Kidd in Miracle World', 1987, 'plateforme', ''),
(277, 9, 'Alex Kidd: The Lost Stars', 1988, 'plateforme', ''),
(278, 9, 'Assault City ', 1990, 'arcade', ''),
(279, 9, 'Astro Warrior ', 1986, 'shoot\'em up', ''),
(280, 9, 'Baku Baku Animal', 1995, 'puzzle', ''),
(281, 9, 'Dragon Crystal', 1990, 'rpg', ''),
(282, 13, 'Fantasy Zone', 1988, 'shoot\'em up', ''),
(283, 9, 'Fantasy Zone : The Maze', 1987, 'shoot\'em up', ''),
(284, 9, 'Kenseiden ', 1988, 'action', ''),
(285, 9, 'Kung Fu Kid ', 1987, 'action', ''),
(286, 9, 'Phantasy Star', 1988, 'rpg', ''),
(287, 9, 'Psycho Fox ', 1989, 'plateforme', ''),
(288, 9, 'Sonic Chaos', 1993, 'plateforme', ''),
(289, 9, 'the Ninja ', 1986, 'action', ''),
(290, 9, 'Sonic Drift 2', 1995, 'course', ''),
(291, 9, 'Sonic Triple Trouble', 1994, 'plateforme', ''),
(292, 9, 'Tails Adventure', 1995, 'plateforme', ''),
(293, 9, 'Adventure in the park ', 0, 'arcade', ''),
(294, 9, 'Air Hockey ', 0, 'arcade', ''),
(295, 9, 'Bomber', 0, 'arcade', ''),
(296, 9, 'Bubbles Master ', 0, 'arcade', ''),
(297, 9, 'Cannon ', 0, 'rpg', ''),
(298, 9, 'Checker ', 0, 'board', ''),
(299, 9, 'Cross the Road ', 0, 'course', ''),
(300, 9, 'Curling 2010 ', 0, 'sport', ''),
(301, 9, 'Defenders of Oasis ', 0, 'rpg', ''),
(302, 9, 'Fight or Lose ', 0, 'board', ''),
(303, 9, 'Hexagonos ', 0, 'puzzle', ''),
(304, 9, 'Jack\'s Pea ', 0, 'arcade', ''),
(305, 9, 'Jewel Magic ', 0, 'puzzle', ''),
(306, 9, 'Memory ', 0, 'puzzle', ''),
(307, 9, 'Mr. Balls ', 0, 'puzzle', ''),
(308, 9, 'Naval Power ', 0, 'simulation', ''),
(309, 9, 'Plumbing Contest ', 0, 'puzzle', ''),
(310, 9, 'Snail Maze ', 0, 'arcade', ''),
(311, 9, 'Snake', 0, 'arcade', ''),
(312, 9, 'Spider ', 0, 'arcade', ''),
(313, 9, 'Super Columns ', 0, 'puzzle', ''),
(314, 9, 'Wall-Breaking', 0, 'arcade', ''),
(315, 15, 'Alisia Dragoon', 1992, 'action', ''),
(316, 15, 'Castle of Illusion Starring Mickey Mouse', 1990, 'plateforme', ''),
(317, 15, 'Castlevania: The New Generation', 1994, 'action', ''),
(318, 15, 'Darius', 1990, 'shoot\'em up', ''),
(319, 15, 'Dynamite Headdy', 1994, 'plateforme', ''),
(320, 15, 'Earthworm Jim', 1994, 'plateforme', ''),
(321, 15, 'Ecco the Dolphin', 1992, 'aventure', ''),
(322, 7, 'Ghouls \'n Ghosts', 1988, 'action', ''),
(323, 15, 'Gunstar Heroes', 1993, 'run\'n gun', ''),
(324, 15, 'Landstalker', 1993, 'rpg', ''),
(325, 15, 'Light Crusader', 1995, 'rpg', ''),
(326, 15, 'Mega Man: The Wily Wars', 1994, 'action', ''),
(327, 15, 'Monster World IV', 1994, 'action', ''),
(328, 15, 'Phantasy Star IV: The End of the Millennium', 1994, 'rpg', ''),
(329, 15, 'Probotector', 1994, 'action', ''),
(330, 15, 'Road Rash II', 1991, 'course', ''),
(331, 15, 'Shining Force', 1993, 'rpg', ''),
(332, 15, 'Shinobi III', 1993, 'action', ''),
(333, 15, 'Space Harrier 2', 1989, 'shoot\'em up', ''),
(334, 15, 'Street Fighter II\' : Special Champion Edition', 1993, 'combat', ''),
(335, 15, 'Streets of Rage 2', 1992, 'beat\'em up', ''),
(336, 7, 'Strider', 1989, 'action', ''),
(337, 15, 'Super Fantasy Zone', 1992, 'shoot\'em up', ''),
(338, 15, 'Tetris', 2006, 'puzzle', ''),
(339, 15, 'The Story of Thor', 1994, 'rpg', ''),
(340, 15, 'Thunder Force III', 1990, 'shoot\'em up', ''),
(341, 15, 'ToeJam & Earl', 1991, 'plateforme', ''),
(342, 15, 'Wonder Boy in Monster World', 1991, 'plateforme', ''),
(343, 15, 'World of Illusion Starring Mickey Mouse & Donald Duck', 1992, 'plateforme', ''),
(344, 13, 'Air Zonk', 1992, 'shoot\'em up', ''),
(345, 13, 'Akumaj? Dracula X Chi no Rondo (Castlevania)', 1993, 'action', ''),
(346, 13, 'Aldynes', 1991, 'shoot\'em up', ''),
(347, 13, 'Alien Crush', 1988, 'flipper', ''),
(348, 13, 'Appare! Gateball', 1988, 'sport', ''),
(349, 13, 'Blazing Lazers (Gunhed)', 1989, 'shoot\'em up', ''),
(350, 13, 'Bomberman  93', 1992, 'mini-jeux', ''),
(351, 13, 'Bomberman  94', 1993, 'mini-jeux', ''),
(352, 13, 'Bomberman Panic Bomber', 1994, 'mini-jeux', ''),
(353, 13, 'Bonk s Revenge', 1989, 'plateforme', ''),
(354, 13, 'Bonk\'s Adventure', 1991, 'plateforme', ''),
(355, 13, 'Cadash', 1989, 'rpg', ''),
(356, 13, 'Chew-Man-Fu', 1990, 'arcade', ''),
(357, 13, 'Ch? Aniki', 1992, 'shoot\'em up', ''),
(358, 13, 'Daimakaimura (Ghouls\'n Ghosts)', 1990, 'plateforme', ''),
(359, 13, 'Dragon Spirit', 1989, 'shoot\'em up', ''),
(360, 13, 'Dungeon Explorer', 1989, 'rpg', ''),
(361, 13, 'Galaga  88', 1988, 'shoot\'em up', ''),
(362, 13, 'Ginga Fukei Densetsu Sapphire', 1995, 'shoot\'em up', ''),
(363, 13, 'Gradius II   Gofer no Yab?  ', 1992, 'shoot\'em up', ''),
(364, 13, 'J.J. & Jeff', 1990, 'plateforme', ''),
(365, 13, 'Jaseiken Necromancer', 1988, 'rpg', ''),
(366, 13, 'Lords of Thunder', 1993, 'shoot\'em up', ''),
(367, 13, 'Military Madness', 1990, 'strategie ', ''),
(368, 13, 'Moto Roader', 1989, 'course', ''),
(369, 13, 'Nectaris', 1989, 'strategie ', ''),
(370, 13, 'Neutopia', 1989, 'rpg', ''),
(371, 13, 'Neutopia II', 1991, 'rpg', ''),
(372, 13, 'New Adventure Island', 1992, 'plateforme', ''),
(373, 13, 'Ninja Ry?kenden (Ninja Gaiden)', 1992, 'action', ''),
(374, 13, 'Ninja Spirit', 1990, 'action', ''),
(375, 13, 'Parasol Stars', 1991, 'arcade', ''),
(376, 13, 'Power Golf', 1989, 'sport', ''),
(377, 13, 'Psychosis', 1990, 'shoot\'em up', ''),
(378, 13, 'R-Type', 1989, 'shoot\'em up', ''),
(379, 13, 'Salamander', 1991, 'shoot\'em up', ''),
(380, 13, 'Seirei Senshi Spriggan', 1991, 'shoot\'em up', ''),
(381, 13, 'Snatcher', 1992, 'aventure', ''),
(382, 13, 'Soldier Blade', 1992, 'shoot\'em up', ''),
(383, 13, 'Space Harrier', 1990, 'shoot\'em up', ''),
(384, 13, 'Splatterhouse', 1990, 'beat\'em up', ''),
(385, 13, 'Spriggan Mark 2', 1992, 'shoot\'em up', ''),
(386, 13, 'Star Parodier', 1992, 'shoot\'em up', ''),
(387, 13, 'Super Darius', 1990, 'shoot\'em up', ''),
(388, 13, 'Super Momotar? Dentetsu II', 1988, 'mini-jeux', ''),
(389, 13, 'Super Star Soldier', 1990, 'shoot\'em up', ''),
(390, 13, 'The Genji and the Heike Clans', 1990, 'beat\'em up', ''),
(391, 13, 'The Kung Fu (China Warrior)', 1987, 'combat', ''),
(392, 13, 'The Legend of Valkyrie', 1989, 'action', ''),
(393, 13, 'Victory Run', 1989, 'course', ''),
(394, 13, 'Ys book I & II', 1989, 'rpg', ''),
(395, 14, 'Battle Arena Toshinden', 1995, 'combat', ''),
(396, 14, 'Cool Boarders 2', 1997, 'sport', ''),
(397, 14, 'Destruction Derby', 1995, 'course', ''),
(398, 14, 'Final Fantasy VII', 1997, 'rpg', ''),
(399, 14, 'Grand Theft Auto', 1997, 'action', ''),
(400, 14, 'Intelligent Qube', 1997, 'puzzle', ''),
(401, 14, 'Jumping Flash', 1995, 'fps', ''),
(402, 14, 'Metal Gear Solid', 1998, 'infiltration', ''),
(403, 14, 'Mr Driller', 1999, 'puzzle', ''),
(404, 14, 'Oddworld: Abe s Oddysee', 1997, 'plateforme', ''),
(405, 14, 'Rayman', 1995, 'plateforme', ''),
(406, 14, 'Resident Evil Director s Cut', 1996, 'survie', ''),
(407, 14, 'Revelations: Persona', 1996, 'rpg', ''),
(408, 14, 'Ridge Racer Type 4', 1999, 'course', ''),
(409, 7, 'Super Puzzle Fighter II Turbo', 1996, 'puzzle', ''),
(410, 14, 'Syphon Filter', 1999, 'infiltration', ''),
(411, 14, 'Tekken 3', 1997, 'combat', ''),
(412, 14, 'Tom Clancy s Rainbow 6', 1998, 'fps', ''),
(413, 14, 'Twisted Metal', 1995, 'action', ''),
(414, 14, 'Wild Arms', 1996, 'rpg', ''),
(415, 10, '3 Count Bout', 1993, 'combat', ''),
(416, 10, 'Art of Fighting', 1994, 'combat', ''),
(417, 10, 'Blazing Star', 1998, 'shoot\'em up', ''),
(418, 10, 'Blue s Journey', 1991, 'shoot\'em up', ''),
(419, 10, 'Crossed Swords', 1991, 'beat\'em up', ''),
(420, 10, 'Fatal Fury Special', 1993, 'combat', ''),
(421, 10, 'Foot Ball Frenzy', 1992, 'sport', ''),
(422, 10, 'Garou : Mark of the Wolves', 1999, 'combat', ''),
(423, 10, 'Ghost Pilots', 1991, 'shoot\'em up', ''),
(424, 10, 'King of the Monsters', 1991, 'beat\'em up', ''),
(425, 10, 'King of the Monsters 2', 1992, 'beat\'em up', ''),
(426, 10, 'Kizuna Encounter : Super Tag Battle', 1996, 'combat', ''),
(427, 10, 'Last Resort', 1992, 'shoot\'em up', ''),
(428, 10, 'Magician Lord', 1990, 'beat\'em up', ''),
(429, 10, 'Metal Slug', 1996, 'run\'n\'gun', ''),
(430, 10, 'Metal Slug 2', 1998, 'run\'n\'gun', ''),
(431, 10, 'Metal Slug 3', 2000, 'run\'n\'gun', ''),
(432, 10, 'Metal Slug 4', 2002, 'run\'n\'gun', ''),
(433, 10, 'Metal Slug 5', 2003, 'run\'n\'gun', ''),
(434, 10, 'Metal Slug X', 1999, 'run\'n\'gun', ''),
(435, 10, 'Mutation Nation', 1992, 'beat\'em up', ''),
(436, 10, 'Ninja Master\'s : Haou Ninpou Chou', 1996, 'combat', ''),
(437, 10, 'Puzzled', 1990, 'puzzle', ''),
(438, 10, 'Real Bout : Fatal Fury', 1995, 'combat', ''),
(439, 10, 'Robo Army', 1991, 'beat\'em up', ''),
(440, 10, 'Samurai Shodown II', 1994, 'combat', ''),
(441, 10, 'Samurai Shodown IV : Amakusa s Revenge', 1996, 'combat', ''),
(442, 10, 'Samurai Shodown V Special', 2004, 'combat', ''),
(443, 10, 'Sengoku 3', 2003, 'beat\'em up', ''),
(444, 10, 'Shock Troopers', 1997, 'run\'n\'gun', ''),
(445, 10, 'Shock Troopers : 2nd Squad', 1998, 'run\'n\'gun', ''),
(446, 10, 'Super Sidekicks', 1992, 'sport', ''),
(447, 10, 'The King of Fighters 2000', 2000, 'combat', ''),
(448, 10, 'The King of Fighters 2002', 2002, 'combat', ''),
(449, 10, 'The King of Fighters \'95', 1995, 'combat', ''),
(450, 10, 'The King of Fighters \'97', 1997, 'combat', ''),
(451, 10, 'The King of Fighters \'98', 1998, 'combat', ''),
(452, 10, 'The Last Blade 2', 1997, 'combat', ''),
(453, 10, 'Top Player\'s Golf', 1990, 'sport', ''),
(454, 10, 'World Heroes Perfect', 1995, 'combat', ''),
(455, 7, '1944: The Loop Master', 2000, 'shoot\'em up', ''),
(456, 7, 'Alien vs. Predator', 1994, 'beat\'em up', ''),
(457, 7, 'Armored Warriors', 1994, 'beat\'em up', ''),
(458, 7, 'Capcom Sports Club', 1997, 'sport', ''),
(459, 7, 'Captain Commando', 1991, 'beat\'em up', ''),
(460, 7, 'Cyberbots: Fullmetal Madness', 1995, 'combat', ''),
(461, 7, 'Darkstalkers: The Night Warriors', 1994, 'combat', ''),
(462, 7, 'Eco Fighters', 1993, 'shoot\'em up', ''),
(463, 7, 'Final Fight', 1989, 'beat\'em up', ''),
(464, 7, 'GigaWing', 1999, 'shoot\'em up', ''),
(465, 7, 'Mega Man: The Power Battle', 1995, 'combat', ''),
(466, 7, 'Progear', 2001, 'shoot\'em up', ''),
(467, 8, 'Alleykat', 1986, 'shoot\'em up', ''),
(468, 8, 'Anarchy', 1987, 'puzzle', ''),
(469, 8, 'Attack of the Mutant Camels', 1983, 'shoot\'em up', ''),
(470, 8, 'Avenger', 1987, 'prg', ''),
(471, 8, 'Battle Valley', 1988, 'shoot\'em up', ''),
(472, 8, 'Bear Bovver', 1983, 'shoot\'em up', ''),
(473, 8, 'Boulder Dash', 1984, 'plateforme', ''),
(474, 8, 'Bounder', 1985, 'puzzle', ''),
(475, 8, 'California Games', 1987, 'sport', ''),
(476, 8, 'Chips Challenge', 1990, 'puzzle', ''),
(477, 8, 'Confuzion', 1985, 'puzzle', ''),
(478, 8, 'Cosmic Causeway', 1987, 'puzzle', ''),
(479, 8, 'Cyberdyne Warrior', 1989, 'plateforme', ''),
(480, 8, 'Cybernoid II', 1988, 'shoot\'em up', ''),
(481, 8, 'Deflektor', 1987, 'puzzle', ''),
(482, 8, 'Destroyer', 1986, 'simulation', ''),
(483, 8, 'Everyone s a Wally', 1985, 'aventure', ''),
(484, 8, 'Firelord', 1986, 'rpg', ''),
(485, 8, 'Galencia', 2017, 'shoot\'em up', ''),
(486, 8, 'Gateway to Apshai', 1983, 'rpg', ''),
(487, 8, 'Gribbly s Day Out', 1985, 'plateforme', ''),
(488, 8, 'Gridrunner (VIC 20)', 1983, 'shoot\'em up', ''),
(489, 8, 'Heartland', 1985, 'plateforme', ''),
(490, 8, 'Herobotix', 1987, 'aventure', ''),
(491, 8, 'Highway Encounter', 1986, 'shoot\'em up', ''),
(492, 8, 'Hover Bovver', 1983, 'puzzle', ''),
(493, 8, 'Impossible Mission', 1983, 'plateforme', ''),
(494, 8, 'Impossible Mission II', 1988, 'plateforme', ''),
(495, 8, 'IO', 1988, 'shoot\'em up', ''),
(496, 8, 'Iridis Alpha', 1986, 'shoot\'em up', ''),
(497, 8, 'Jumpman', 1983, 'plateforme', ''),
(498, 8, 'Mega Apocalypse', 1987, 'shoot\'em up', ''),
(499, 8, 'Mission AD', 1986, 'plateforme', ''),
(500, 8, 'Monty Mole', 1984, 'plateforme', ''),
(501, 8, 'Monty on the Run', 1985, 'plateforme', ''),
(502, 8, 'Nebulus', 1987, 'plateforme', ''),
(503, 8, 'Netherworld', 1988, 'shoot\'em up', ''),
(504, 8, 'Nodes of Yesod', 1985, 'plateforme', ''),
(505, 8, 'Paradroid', 1985, 'shoot\'em up', ''),
(506, 8, 'Pitstop II', 1984, 'course', ''),
(507, 8, 'Planet of Death', 1984, 'aventure', ''),
(508, 8, 'Psychedelia (VIC 20)', 1983, 'demo', ''),
(509, 8, 'Ranarama', 1987, 'aventure', ''),
(510, 8, 'Robin of the Wood', 1985, 'aventure', ''),
(511, 8, 'Silicon Warrior', 1984, 'puzzle', ''),
(512, 8, 'Skate Crazy', 1988, 'sport', ''),
(513, 8, 'Speedball 2', 1991, 'sport', ''),
(514, 8, 'Spindizzy', 1986, 'puzzle', ''),
(515, 8, 'Steel', 1989, 'shoot\'em up', ''),
(516, 8, 'Street Sports Baseball', 1985, 'sport', ''),
(517, 8, 'Street Sports Basketball', 1987, 'sport', ''),
(518, 8, 'Summer Games II (inclus Summer Games)', 1985, 'sport', ''),
(519, 8, 'Super Cycle', 1986, 'course', ''),
(520, 8, 'Sword of Fargoal', 1983, 'rpg', ''),
(521, 8, 'Temple of Apshai Trilogy', 1985, 'rpg', ''),
(522, 8, 'The Arc of Yesod', 1985, 'plateforme', ''),
(523, 8, 'Thing Bounces Back', 1987, 'plateforme', ''),
(524, 8, 'Thing on a Spring', 1985, 'plateforme', ''),
(525, 8, 'Trailblazer', 1986, 'puzzle', ''),
(526, 8, 'Uridium', 1986, 'shoot\'em up', ''),
(527, 8, 'Who Dares Wins II', 1985, 'action', ''),
(528, 8, 'Winter Games', 1986, 'sport', ''),
(529, 8, 'World Games', 1986, 'sport', ''),
(530, 8, 'Zynaps', 1987, 'shoot\'em up', ''),
(531, 12, 'Donkey Kong Country 2: Diddy Kong\'s Quest', 1995, 'plateforme', 'Super NES'),
(532, 12, 'Mario\'s Super Picross', 1995, '', 'Super NES'),
(533, 12, 'Natsume Championship Wrestling ', 1994, 'combat', 'Super NES'),
(534, 12, 'The Peace Keepers', 1993, 'beat\'em all', 'Super NES'),
(535, 12, 'Double Dragon II: The Revenge', 1989, 'beat\'em all', 'NES'),
(536, 12, 'Fire Emblem: Ankoku Ry? to Hikari no Tsurugi', 1990, 'rpg', 'NES'),
(537, 12, 'S.C.A.T.: Special Cybernetic Attack Team', 1990, 'shoot\'em up', 'NES'),
(538, 12, 'The Immortal', 1990, 'rpg', 'NES'),
(539, 12, 'Zelda II: The Adventure of Link', 1988, 'rpg', 'NES'),
(540, 12, 'Donkey Kong Country 2: Diddy Kong s Quest', 1995, 'plateforme', 'Super NES'),
(541, 12, 'Mario s Super Picross', 1995, '', 'Super NES');

-- --------------------------------------------------------

--
-- Structure de la table `mini_console`
--

CREATE TABLE `mini_console` (
  `id` int NOT NULL,
  `release_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opinion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mini_console`
--

INSERT INTO `mini_console` (`id`, `release_year`, `price`, `opinion`) VALUES
(6, 'dec 2017', '40 - 90', 'Médiocre'),
(7, 'nov 2019', '180 - 250', 'Médiocre'),
(8, 'mars 2018', '50 - 60', 'Intéressant'),
(9, 'dec 2017', '90 - 140', 'Arnaque'),
(10, 'juil 2018', '65 - 120', 'Médiocre'),
(11, 'nov 2016', '55 - 70', 'Très bon investissement'),
(12, 'sept 2018', '20 € / an', 'Intéressant'),
(13, 'mars 2020', '110', 'Très bon investissement'),
(14, 'dec 2018', '30 - 50', 'Médiocre'),
(15, 'oct 2019', '70', 'Intéressant'),
(16, 'sept 2017', '80 - 120', 'Pour les fans');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C40B4AC4E` (`related_to_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FF232B31A6E62DAA` (`emulated_on_id`);

--
-- Index pour la table `mini_console`
--
ALTER TABLE `mini_console`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C40B4AC4E` FOREIGN KEY (`related_to_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `FK_FF232B31A6E62DAA` FOREIGN KEY (`emulated_on_id`) REFERENCES `mini_console` (`id`);

--
-- Contraintes pour la table `mini_console`
--
ALTER TABLE `mini_console`
  ADD CONSTRAINT `FK_FE36F1AABF396750` FOREIGN KEY (`id`) REFERENCES `article` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
