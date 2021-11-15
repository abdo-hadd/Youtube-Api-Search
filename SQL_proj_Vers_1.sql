-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 24 nov. 2019 à 14:36
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_bd1`
--

-- --------------------------------------------------------

--
-- Structure de la table `chaine`
--

CREATE TABLE `chaine` (
  `Nom_chaine` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `Nb_abonner` int(11) NOT NULL,
  `Date_creation` date NOT NULL,
  `Nb_vues` int(11) NOT NULL,
  `Description_chaine` varchar(40) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `chaine`
--

INSERT INTO `chaine` (`Nom_chaine`, `Nb_abonner`, `Date_creation`, `Nb_vues`, `Description_chaine`) VALUES
('Almohtarif', 38456213, '2010-10-19', 14524672, 'raghibamine@gmail.co'),
('Humility', 187000, '2011-11-11', 3845623, 'Vidéaste sur l\'unive'),
('Justin Bie', 35621423, '2012-11-28', 2147483646, 'Help change the worl'),
('LaLiga Santander', 4796325, '2006-11-28', 1107681830, 'Canal oficial de LaL'),
('One Direct', 30245631, '2014-11-30', 183654892, 'Liens'),
('PewDiePie', 1045236248, '2012-11-25', 2147483646, 'I make videos.');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `Id_commentaire` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `text_com` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `Nb_like_com` int(11) DEFAULT NULL,
  `Nb_rependu` int(11) DEFAULT NULL,
  `Id_Video` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `Nom_chaine` varchar(30) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`Id_commentaire`, `text_com`, `Nb_like_com`, `Nb_rependu`, `Id_Video`, `Nom_chaine`) VALUES
('1324HJZF', 'fziuflkafazfa', 13423, 643, 'dzdk84dzZ', 'Justin Bie'),
('132ILfz', 'geojglegkegez', 3452, 35, 'opqnLKm1', 'Justin Bie'),
('135HIFZ1e', 'gemhjlkegzge', 78, 1, 'EHKDhb4', 'Humility'),
('13JKZFZ', 'fzaomklfzaz', 8945, 5, 'fz486FZ1ll', 'Humility'),
('13egzefe', 'uolkeg!zelglzemkgzezgeojn', 85, 2, 'fz486FZ1ll', 'PewDiePie'),
('13fIJzff', 'egguozemglze', 3658, 254, 'fz486FZ1ll', 'Justin Bie'),
('13jom46FZ', 'GEJMIHGZJEGL', 4, 14563, 'jgjzIUF42f', 'Almohtarif'),
('13zfiJKJZF', 'ghuojglkzemgzegzegze', 1354, 353, 'dzdk84dzZ', 'One Direct'),
('13zfzzfge', 'fzafza1531f3zaf', 45332, 25, 'dzdk84dzZ', 'Justin Bie'),
('15HIKHJL2', 'mjkezgjmezgn', 4563, 54, 'EHKDhb4', 'Justin Bie'),
('15JELKV13', 'gzjlekgmzegze', 1345, 123, 'smFTf_dpjK', 'Justin Bie'),
('1f3zaHK', 'ghuojglkzemgzegzegze', 1354, 131, 'HFZN1zf4', 'One Direct'),
('456fzafHIU', 'egzgzegnjbjelga', 1354, 13, 'ofjzNHEK', 'One Direct'),
('486eazOI', 'geaomglkznejglkze', 3465, 1, 'smFTf_dpjK', 'Humility'),
('486gezg', 'gezjlfezgezgze', 1231, 23, 'jgjzIUF42f', 'Justin Bie'),
('513513GY', 'kpùmajfmklnzeg', 8456, 2, 'jgjzIUF42f', 'Almohtarif'),
('541UYJ', 'gze53gzegezg', 345, 4, 'opqnLKm1', 'Humility'),
('7KZFfzzn', 'fafalkfk,akmgmoeleg', 14, 1, 'EHKDhb4', 'Almohtarif'),
('FAZ_A2314', 'fz1313effaezfza', 3422, 3, '46ezHBZ', 'Humility'),
('FZFZ21', 'dhlzjfbkalzfkzaf', 24389, 3523, 'ofjzNHEK', 'Justin Bie'),
('GEGZE21z', 'fazmflnajbf:a', 3, NULL, 'jg48FE1F', 'Almohtarif'),
('GR65G41', 'uolkeg!zfzaelgrazrazezgeojn', 53, 2341, 'ofjzNHEK', 'PewDiePie'),
('JHZFL', 'zegzhehare', 4654, NULL, 'GKDN1d3', 'Almohtarif'),
('ad561z', 'egzgzegnjbjelga', 5343, 135, 'smFTf_dpjK', 'One Direct'),
('ae453raz', 'uolkeg!zelglzemkgzezgeojn', 645, 3878, 'opqnLKm1', 'PewDiePie'),
('aze3135t', 'rhjiklreher', 1, NULL, 'ofjzNHEK', 'Almohtarif'),
('deg4z65gz', 'uolkeg!zelglzemkgzezgeojn', 1, 2, 'jg48FE1F', 'PewDiePie'),
('dhh5er', 'gzgeeherher', 452, 3, 'GKDN1d3', 'Almohtarif'),
('ea123fa', 'geZGHREhGFGR', 234, NULL, 'smFTf_dpjK', 'Almohtarif'),
('eaz4635f', 'fazujzalfmkazpfazf', 23, 21, 'Oo12KNDZ', 'Humility'),
('epo153fe', 'gezmgjzklegze', 653, 1, '46ezHBZ', 'Almohtarif'),
('ezg876e5', 'egjmozkeglzegze', 85, 3, 'smFTf_dpjK', 'Almohtarif'),
('fazf15532f', 'uolkeg!zelglzemkgzezgeojn', 5684, 23, 'smFTf_dpjK', 'PewDiePie'),
('fz135fziuk', 'egzgzegnjbjelga', NULL, NULL, 'fz486FZ1ll', 'One Direct'),
('fza46f', 'uolkeg!zelglzemkgzezgeojn', 7895, 456, 'smFTf_dpjK', 'PewDiePie'),
('fza4fza', 'uolkeg!zelglzemkgzezgeojn', 654, 123, 'Oo12KNDZ', 'PewDiePie'),
('fzbLNJFZM', 'fanjfla,z:fadzfa', 214, 2, 'EHKDhb4', 'Almohtarif'),
('fzf153ge', 'GZGKZLGZMEMGZE', 8, NULL, 'Oo12KNDZ', 'Almohtarif'),
('gezjlkKL', 'FZAUFHOAKLFeojggze', 1342, 3, 'EHKDhb4', 'Almohtarif'),
('gze68765g', 'uolkeg!zelglzemkgzezgeojn', 456, 123, 'Oo12KNDZ', 'PewDiePie'),
('gze87g4', 'arzrarauolkeg!zelglzemkgzezgeojn', 2352, 5453, 'HFZN1zf4', 'PewDiePie'),
('hugelge', 'salamo 3alaykom wasin sadi9i', 142, 231, 'jgjzIUF42f', 'Humility'),
('nEYTHK1', 'gezGEgeg', 234, 2, 'HFZN1zf4', 'Almohtarif'),
('oihlk4565', 'gzeigkzmgze', 9635, 2, 'HFGVnbs1', 'Almohtarif'),
('ommf52', 'fzamofhjalfazfa1563f1zaf', 46, 6465, 'jg48FE1F', 'Humility'),
('rez15354gz', 'ghuojglkzemgzegzegze', 1342, 234, 'opqnLKm1', 'One Direct'),
('zae46a5e', 'uolkeg!zelglzemkgzezgeojn', 786, 456, 'jg48FE1F', 'PewDiePie'),
('zf135zf', 'ghuojglkzemgzegzegze', NULL, 2, 'GKDN1d3', 'One Direct');

-- --------------------------------------------------------

--
-- Structure de la table `correspend`
--

CREATE TABLE `correspend` (
  `Id_Query` int(11) NOT NULL,
  `Id_Video` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `correspend`
--

INSERT INTO `correspend` (`Id_Query`, `Id_Video`) VALUES
(1, '.23LKny'),
(1, 'Z3OplkTyn'),
(1, 'jgjzIUF42f'),
(2, 'HFZN1zf4'),
(2, 'OZUENfz2'),
(2, 'Oo12KNDZ'),
(2, 'dzdk84dzZ'),
(2, 'fz486FZ1ll'),
(3, '._._.haha'),
(3, 'HFGVnbs1'),
(3, '__ffffff'),
(3, 'egok4FZ'),
(3, 'opqnLKm1'),
(4, 'QNLARCv'),
(4, 'jg48FE1F'),
(4, 'ofjzNHEK'),
(5, '._._.haha'),
(5, 'HFGVnbs1'),
(5, '__ffffff'),
(5, 'egok4FZ'),
(5, 'opqnLKm1'),
(6, '.o.o.Kyt'),
(6, 'GKDN1d3'),
(6, '_AHTyo98'),
(6, 'smFTf_dpjK'),
(7, '._._.haha'),
(7, 'HFGVnbs1'),
(7, '__ffffff'),
(7, 'egok4FZ'),
(7, 'opqnLKm1'),
(8, 'QNLARCv'),
(8, 'jg48FE1F'),
(8, 'ofjzNHEK'),
(9, 'QNLARCv'),
(9, 'jg48FE1F'),
(9, 'ofjzNHEK'),
(10, '._._.haha'),
(10, '1ZF32dz'),
(10, 'HFGVnbs1'),
(10, '__ffffff'),
(10, 'egok4FZ'),
(10, 'opqnLKm1'),
(11, '46ezHBZ'),
(11, 'HFZN1zf4'),
(11, 'OZUENfz2'),
(11, 'Oo12KNDZ'),
(11, 'dzdk84dzZ'),
(11, 'fz486FZ1ll');

-- --------------------------------------------------------

--
-- Structure de la table `query`
--

CREATE TABLE `query` (
  `Id_Query` int(20) NOT NULL,
  `Query` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `Date_debut` date NOT NULL,
  `Date_fin` date NOT NULL,
  `Date_Recherche` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `query`
--

INSERT INTO `query` (`Id_Query`, `Query`, `Date_debut`, `Date_fin`, `Date_Recherche`) VALUES
(1, 'Sport', '2019-01-04', '2019-07-14', '2019-11-04'),
(2, 'Music', '2019-02-03', '2019-08-04', '2019-11-07'),
(3, 'Jeux', '2019-02-03', '2019-08-19', '2019-11-11'),
(4, 'Vlogs', '2019-01-10', '2019-08-19', '2019-11-11'),
(5, 'Jeux', '2019-03-19', '2019-08-19', '2019-11-12'),
(6, 'education', '2019-02-03', '2019-08-19', '2019-11-11'),
(7, 'Jeux', '2019-02-19', '2019-08-19', '2019-11-13'),
(8, 'Vlogs', '2019-01-19', '2019-08-19', '2019-11-13'),
(9, 'Vlogs', '2019-02-03', '2019-08-14', '2019-11-13'),
(10, 'Jeux', '2019-02-03', '2019-08-19', '2019-11-14'),
(11, 'Music', '2019-02-10', '2019-09-14', '2019-11-17');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `Id_reponse` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `Text` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `Id_commentaire` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `Nom_chaine` varchar(30) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`Id_reponse`, `Text`, `Id_commentaire`, `Nom_chaine`) VALUES
('1212NFGFJ', 'dqsfuopmqdjiq', '13egzefe', 'Justin Bie'),
('312ryuj', 'geieljezbdhdlfkze', 'fazf15532f', 'Justin Bie'),
('345fghJKFGH', 'fyguhijhjk455', 'eaz4635f', 'PewDiePie'),
('453fguhj', '456fguhjk', '486gezg', 'PewDiePie'),
('456ERDTFYG', 'DTRFYGUHJ4531', 'ezg876e5', 'PewDiePie'),
('46351guky', 'azholjfklmafkjmkjk', 'eaz4635f', 'Justin Bie'),
('4653CFHGJK', '51zegfghjkl', '15JELKV13', 'PewDiePie'),
('543RSEDTFYGU', 'REDTFYGUHFTG4865', 'GEGZE21z', 'PewDiePie'),
('6453trfygu', 'RTFYGUHIJghjklyguh', '1324HJZF', 'PewDiePie'),
('645bhgYGK', 'asdihksww', '135HIFZ1e', 'Justin Bie'),
('654trfgyuhj', 'tyguhjiokytguhjk', '541UYJ', 'PewDiePie'),
('8456tfyguhj', 'RDTFYGUHJIRFVGHDXCF', 'ommf52', 'PewDiePie'),
('8465dtfrghujk', 'REDTFYGHUI', 'oihlk4565', 'PewDiePie'),
('AQZESRcgh', 'SERDTFYGUHIJDTRFYGH', 'FAZ_A2314', 'PewDiePie'),
('AUIOlnj', 'wfdfdeflkjf', '13zfiJKJZF', 'Justin Bie'),
('BNFTYD456', 'ERYTUIGHJBKGHJ', 'ea123fa', 'PewDiePie'),
('CFGHjk', 'resdtfyguhi', 'zf135zf', 'PewDiePie'),
('DQdKBH', 'zafvhkfzjfmajfa', '13JKZFZ', 'One Direct'),
('GUHKJ', 'gukhukjlm', '13zfiJKJZF', 'PewDiePie'),
('MLKNLKJ', 'foazuifzalhbfjzafhk', 'JHZFL', 'One Direct'),
('PMJJLjgk', 'cghvjbazkfazhijkl', 'nEYTHK1', 'One Direct'),
('POIKPAqs', 'eyauioaflkjlhbfbomaz', 'gze68765g', 'One Direct'),
('TGUYIIvjj', 'TUYIRFYGHYFGHJ', 'deg4z65gz', 'PewDiePie'),
('TRY57hk', 'RTFYGUHJ', 'zae46a5e', 'PewDiePie'),
('VGHJBTYGH', '78456erdtfgyhj', 'gze87g4', 'PewDiePie'),
('VJHBK7865', 'rlgorjglhrgljzenglzeg', 'FZFZ21', 'Justin Bie'),
('VNXGFtyu', 'dtrfguyioljdrtfyguhifyguhj', 'dhh5er', 'PewDiePie'),
('YTGU545', 'RTFYGUHJIOUHJ', 'ad561z', 'PewDiePie'),
('afvjhbkzahff', 'ghzillzegg', '7KZFfzzn', 'PewDiePie'),
('azr453ar3', 'gzegeoilzekjglzie', '13zfiJKJZF', 'Humility'),
('cfgvhjygu8YTGH', '846drfghj', 'nEYTHK1', 'PewDiePie'),
('cjguJ4654VJ', 'fzhikzfazf', '541UYJ', 'Justin Bie'),
('dqbdqjkB', 'sdaufifluyfjkazasq', '15HIKHJL2', 'One Direct'),
('dqdqkld', 'sxwghjzkfbah', '13zfzzfge', 'One Direct'),
('dqkmdlq', 'vhkabskwxwfvjhkf', '132ILfz', 'One Direct'),
('dqpoiopqs', 'fzafakuvghfazufkl', '13jom46FZ', 'One Direct'),
('eazear', 'femoufjlzgelbgzejk', 'GR65G41', 'Humility'),
('ertyfHJfyg', 'drtfyguhfghjfygh', 'rez15354gz', 'PewDiePie'),
('erzr1zrza1', 'efezbhefkjlhifzeg', '486eazOI', 'Humility'),
('ezd2ear', 'zfhomiamlglege', 'ae453raz', 'Humility'),
('fa5fhkjl', 'trfyguhjkyghj', '135HIFZ1e', 'PewDiePie'),
('faz3rafds', 'gzepokzelgjlezgzeg', '541UYJ', 'Humility'),
('fazfijfazf', 'ffiloihkejoigjk', '1f3zaHK', 'PewDiePie'),
('fe214rza', 'femoufjlzgelbgzejk', 'epo153fe', 'Humility'),
('fer123rza', 'femoufjlzgelbgzejk', '513513GY', 'Humility'),
('fyGUKJ4563', 'DTRFYGUHIJghjkl', '15HIKHJL2', 'PewDiePie'),
('fz54rherh1', 'fsfgrdhd', '486eazOI', 'Almohtarif'),
('fzagilahujfa', 'dzqgbdkjqdciuhzf', '13egzefe', 'PewDiePie'),
('fzfgukikjz', 'egzhjlkjh', '13fIJzff', 'PewDiePie'),
('ge153eg', 'gezzegf', '13egzefe', 'Almohtarif'),
('ge3g12z', 'jzlgkjezng', '1f3zaHK', 'Almohtarif'),
('ge61e35g', 'gddrgd', '456fzafHIU', 'Almohtarif'),
('geg13g1ez', 'gzefdaz', '13jom46FZ', 'Almohtarif'),
('gez153gez', 'htfjtf', '135HIFZ1e', 'Almohtarif'),
('gezg13eg', 'hftht', '15JELKV13', 'Almohtarif'),
('gezg13ezg', 'fesfsgsh', 'JHZFL', 'Almohtarif'),
('gezgiluzejl', 'fazgshjmlkjhghfazfs', 'zae46a5e', 'One Direct'),
('gezzderf', 'gezzehljkezgmlezmg', 'fzf153ge', 'Humility'),
('gge35g1e2', 'thrthgf', '15HIKHJL2', 'Almohtarif'),
('gouezzge', 'rhjomrmehkerlh', 'nEYTHK1', 'Humility'),
('gropirkgea', 'uyiofmazjknfaz', 'ommf52', 'One Direct'),
('gvhjklafz', 'sjhdkhfhazjk', '13jom46FZ', 'PewDiePie'),
('jgfhv4562', 'bhrljkrl', '486eazOI', 'Justin Bie'),
('pkbfVN1', 'wcbkhehfz', '1f3zaHK', 'Justin Bie'),
('qdOHU', 'FAFGIUJFA6f4z5afa', '1f3zaHK', 'One Direct'),
('qkposqLKL', 'fzafvchkbnkjvluzj', 'ad561z', 'One Direct'),
('qsdJKB', 'fzafgiflazjfkaflazf', '7KZFfzzn', 'One Direct'),
('qsqsHJN', 'zffbiazjflkazfazjf', '13fIJzff', 'One Direct'),
('rdtfyguhHB', 'DTRFYGUHFYGHUJK', 'fazf15532f', 'PewDiePie'),
('redtfyu684', 'ERDFCTGVHYGH', 'gze68765g', 'PewDiePie'),
('rzer135ze', 'gfdhhfdgr', '486gezg', 'Almohtarif'),
('rzer153er', 'femoufjlzgelbgzejk', '13JKZFZ', 'Humility'),
('tfyguhjk', 'tdrfyguhji45FYGHJK', '486eazOI', 'PewDiePie'),
('trfyguhIU', 'RDTFYGUHIGYUH', 'ae453raz', 'PewDiePie'),
('tuyzilkfz', 'fzguulklafz', '13JKZFZ', 'PewDiePie'),
('tyguhijyuh', 'RTFYGUHJIOHJK', 'aze3135t', 'PewDiePie'),
('uyhjfcg', 'DETYG646DXFCGHJ', 'JHZFL', 'PewDiePie'),
('vgez13ezg', 'zameufjklazjfjfaf', '1f3zaHK', 'Humility'),
('yfghij', 'trfyguhjio', '456fzafHIU', 'PewDiePie'),
('yguhj', 'dtfyguhj653g', '132ILfz', 'PewDiePie');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `Id_Video` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `Titre` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Categorie` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `Description` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Nb_Vues` bigint(20) DEFAULT NULL,
  `Nb_like` bigint(20) DEFAULT NULL,
  `Nb_dislike` bigint(20) DEFAULT NULL,
  `Nb_commentaires` bigint(20) DEFAULT NULL,
  `Date_publication` date NOT NULL,
  `Nom_chaine` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`Id_Video`, `Titre`, `Categorie`, `Description`, `Nb_Vues`, `Nb_like`, `Nb_dislike`, `Nb_commentaires`, `Date_publication`, `Nom_chaine`) VALUES
('.23LKny', 'Full Match FC Barcelona vs Valencia CF LaLiga 2017/2018', 'Sport', 'Revive el FC Barcelona vs Valencia CF en el Camp Nou', 743578, 28421, 653, 555, '2017-05-09', 'LaLiga Santander'),
('._._.haha', 'GAGNER AVEC 1 SORT SUR DOFUS', 'jeux', 'Live/site ► https://huzounet.fr\r\nSoutiens-moi GRATUITEMENT sur utip :\r\nhttps://utip.io/huzounet', 921345, 48529, 1542, 1534, '2015-09-30', 'Humility'),
('.o.o.Kyt', 'كيف تجد النيش ذات النقرات مرتفعة الثمن في أدسنس', 'Education', 'الروابط :\r\nhttp://www.th3professional.com/2019/0...\r\nتابعوني على حساباتي الإجتماعية :', 6342183, 182777, 36, 3685, '2014-10-17', 'Almohtarif'),
('1ZF32dz', 'Dofus donjon Comte harbourgh', 'jeux', 'Voici la fin des quê', 15258, 4235, 3456, 300, '2019-10-17', 'Humility'),
('46ezHBZ', 'Justin Bieber - Mistletoe (Official Musi', 'Music', '‘Under The Mistletoe', 36881962, 113454, 1345, 318256, '2011-10-18', 'Justin Bie'),
('EHKDhb4', 'كيف تعرف هل الروتر الذي تستعمله في منزلك', 'Education', 'رابط تحميل التطبيق  ', 15342, 213, 12345, 25443, '2019-03-10', 'Almohtarif'),
('GKDN1d3', 'تطبيق أندرويد يمكنك ربح المال منه بكل سه', 'Education', 'رابط تحميل التطبيق  ', 1543578, 134531, 15623, 35132, '2019-02-10', 'Almohtarif'),
('HFGVnbs1', 'L’AVENIR D’ANKAMA ET DE DOFUS !', 'jeux', 'Petite vidéo sur mes', 44585, 6325, 953, 4421, '2019-09-24', 'Humility'),
('HFZN1zf4', 'Justin Bieber - What Do You Mean? ', 'Music', 'Purpose’ Available E', 205520558, 8169954, 17020, 50236, '2015-08-30', 'Justin Bie'),
('OZUENfz2', 'One Direction - Story of My Life', 'Music', 'One Direction – Stor', 679030, 5321, 1325, 3542, '2013-11-03', 'One Direct'),
('Oo12KNDZ', 'One Direction - You & I', 'Music', 'One Direction – You ', 420219654, 3752680, 124852, 262951, '2014-10-18', 'One Direct'),
('QNLARCv', 'Our secret trip', 'Vlogs', 'Me and marzia go on a trip in secret to.', 60392, 11239, 2543, 52361, '2019-02-24', 'PewDiePie'),
('Z3OplkTyn', 'El Clásico - Resumen de Real Madrid vs FC Barcelona (1-3) 2011/2012', 'Sport', 'Un gol tempranero de Karim Benzema ', 4221523, 24563, 2256, 5632, '2019-10-17', 'LaLiga Santander'),
('_AHTyo98', 'هذه هي المشاريع التي يجب عليك الإشتغال عليها لكي تربح الملايين من ادسنس', 'Education', 'تابعوني على حساباتي الإجتماعية :\r\n\r\nأنستغرام : http://instagram.com/raghib.official', 9652314, 156990, 9999, 358, '2017-03-10', 'Almohtarif'),
('__ffffff', 'LE DERNIER DONJON 200 DU JEU ! (TORKÉLON', 'jeux', 'Voici le dernier donjon 200 du jeu en duo : le sanctuaire de Torkélonia !', 465123, 29621, 255, 3652, '2014-10-17', 'Humility'),
('dzdk84dzZ', 'One Direction - Best Song Ever', 'Music', 'One Direction – Best', 64569, 4753, 3342, 674, '2013-06-22', 'One Direct'),
('egok4FZ', 'Unboxing 100 MIL YouTube AWARD!!', 'jeux', 'AD| Get Honey for FR', 4012, 352, 189, 327, '2019-09-05', 'PewDiePie'),
('fz486FZ1ll', 'Justin Bieber - Love Yourself (Official ', 'Music', '‘Purpose’ Available ', 1520813056, 7356874, 473254, 293654, '2015-09-14', 'Justin Bie'),
('jg48FE1F', 'I\'m SUEING this Meme for identity Theft!', 'Vlogs', 'Bravo six, going dar', 17513, 6258, 865, 894531, '2019-06-17', 'PewDiePie'),
('jgjzIUF42f', 'Highlights FC Barcelona vs RC Celta (4-1', 'Sport', 'A great win of FC Barcelona against RC C', 3542, 18452, 1456, 8888, '2019-09-09', 'LaLiga Santander'),
('ofjzNHEK', 'I joined a Photoshop Competition (NOT GO', 'Vlogs', 'I make a slime honey', 546131, 1463, 87562, 253486, '2019-07-22', 'PewDiePie'),
('opqnLKm1', 'OPENING DE 16 DOFUS CAWOTTE !', 'jeux', 'ouvel épisode du Dim', 5612, 3242, 810, 235, '2019-08-20', 'Humility'),
('smFTf_dpjK', 'كيف تشتري جهاز ماك مستعمل ومايجب ان تفحص', 'Education', 'رابط تحميل التطبيق  ', 451345, 56778, 845, 11345, '2019-11-19', 'Almohtarif');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chaine`
--
ALTER TABLE `chaine`
  ADD PRIMARY KEY (`Nom_chaine`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`Id_commentaire`),
  ADD KEY `Commentaire_Video_FK` (`Id_Video`),
  ADD KEY `Commentaire_Chaine0_FK` (`Nom_chaine`);

--
-- Index pour la table `correspend`
--
ALTER TABLE `correspend`
  ADD PRIMARY KEY (`Id_Query`,`Id_Video`),
  ADD KEY `Correspend_Video1_FK` (`Id_Video`);

--
-- Index pour la table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Id_Query`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`Id_reponse`),
  ADD KEY `Reponse_Commentaire_FK` (`Id_commentaire`),
  ADD KEY `Reponse_Chaine0_FK` (`Nom_chaine`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`Id_Video`),
  ADD KEY `Video_Chaine0_FK` (`Nom_chaine`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `Commentaire_Chaine0_FK` FOREIGN KEY (`Nom_chaine`) REFERENCES `chaine` (`Nom_chaine`),
  ADD CONSTRAINT `Commentaire_Video_FK` FOREIGN KEY (`Id_Video`) REFERENCES `video` (`Id_Video`);

--
-- Contraintes pour la table `correspend`
--
ALTER TABLE `correspend`
  ADD CONSTRAINT `Correspend_Query0_FK` FOREIGN KEY (`Id_Query`) REFERENCES `query` (`Id_Query`),
  ADD CONSTRAINT `Correspend_Video1_FK` FOREIGN KEY (`Id_Video`) REFERENCES `video` (`Id_Video`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `Reponse_Chaine0_FK` FOREIGN KEY (`Nom_chaine`) REFERENCES `chaine` (`Nom_chaine`),
  ADD CONSTRAINT `Reponse_Commentaire_FK` FOREIGN KEY (`Id_commentaire`) REFERENCES `commentaire` (`Id_commentaire`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `Video_Chaine0_FK` FOREIGN KEY (`Nom_chaine`) REFERENCES `chaine` (`Nom_chaine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
