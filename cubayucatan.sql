-- Adminer 3.6.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT '',
  `intro_ita` text,
  `intro_esp` text,
  `descripcion_ita` text,
  `descripcion_esp` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `about` (`id`, `src`, `intro_ita`, `intro_esp`, `descripcion_ita`, `descripcion_esp`, `created`) VALUES
(1,	'',	'<p>Siamo un&rsquo;Organizzazione di Viaggi che opera nel Caribe, Cuba e Yucat&aacute;n.</p>',	'',	'<p>La Societ&aacute; &eacute; la&nbsp;<strong>FORASTERO VIAGGI&nbsp;&nbsp;by NUOVA G&Eacute;NESIS S.R.L. de C.V.</strong>, registrata presso la Secretar&iacute;a de Hacienda,&nbsp;&nbsp;&nbsp;la Secretar&iacute;a de Fomento Tur&iacute;stico dello Stato di Yucat&aacute;n, M&eacute;xico, e presso l&rsquo;Ayuntamiento della Citt&aacute; di M&eacute;rida, Yucat&aacute;n, M&eacute;xico.</p>\r\n<p>&nbsp;Io sono&nbsp;<strong>Umberto Fioroni</strong>, l&rsquo;Amministratore Responsabile della Societ&aacute;.</p>\r\n<p>Vivo da molti anni nel Caribe, a M&eacute;rida in Yucat&aacute;n, e a Trinidad quando sono a Cuba.&nbsp;</p>\r\n<p>Sono stato in passato Presidente del Consiglio d&rsquo;Amministrazione di altre societ&aacute; da me fondate, come la FISPEX a Parigi, la TEMARTE e la PUBLIFUTURA&nbsp;&nbsp;a Como.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Potete comunicare con noi in questi modi:</strong></p>\r\n<p>telefono&nbsp;&nbsp;&nbsp;0052 999 2855910 &ndash; 0052 999&nbsp; 9588175</p>\r\n<p>e-mail :<a href=\"mailto:fiumbe@live.com.mx\">fiumbe@live.com.mx</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"mailto:umberto@cubayucatan.com\">umberto@cubayucatan.com</a>&nbsp;&nbsp;</p>\r\n<p>skype:umbertofior</p>',	'',	'2012-10-25 17:08:01');

DROP TABLE IF EXISTS `carousels`;
CREATE TABLE `carousels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT '',
  `enlace` varchar(255) DEFAULT NULL,
  `descripcion_ita` text,
  `descripcion_esp` text,
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `carousels` (`id`, `src`, `enlace`, `descripcion_ita`, `descripcion_esp`, `activo`, `orden`, `created`) VALUES
(1,	'upload/ekbalam.jpg',	'',	'',	'',	1,	1,	'2012-10-26 12:29:30'),
(2,	'upload/01.jpg',	'',	'',	'',	1,	2,	'2012-10-26 12:29:30'),
(3,	'upload/havana.jpg',	'',	'',	'',	1,	3,	'2012-10-26 12:36:45'),
(4,	'upload/ekbalamcenote.jpg',	'',	'',	'<p>Ek Balam Cenote</p>',	1,	4,	'2012-10-26 12:36:45'),
(5,	'upload/3rreyes.jpg',	'',	'',	'',	1,	5,	'2012-10-26 13:26:38'),
(6,	'upload/celestunflamimgos.jpg',	'',	'',	'',	1,	6,	'2012-10-26 13:26:38'),
(8,	'upload/tulum13512899461.jpg',	NULL,	NULL,	NULL,	1,	8,	'2012-10-26 17:19:06');

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `autor` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`id`, `parent`, `parent_id`, `autor`, `email`, `web`, `descripcion`, `created`) VALUES
(1,	'Destination',	1,	'pepe',	'pepe@pulsem.mx',	NULL,	'Muy bonitas fotos!',	'2012-10-26 11:19:50');

DROP TABLE IF EXISTS `destinationimgs`;
CREATE TABLE `destinationimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `destination_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) DEFAULT '0',
  `descripcion_ita` text,
  `descripcion_esp` text,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `destinationimgs` (`id`, `destination_id`, `src`, `portada`, `descripcion_ita`, `descripcion_esp`, `orden`, `created`) VALUES
(17,	17,	'upload/cuba4.jpg',	0,	NULL,	NULL,	17,	'2012-10-26 11:06:22'),
(16,	17,	'upload/baracoa.jpg',	0,	NULL,	NULL,	16,	'2012-10-26 11:06:21'),
(15,	17,	'upload/002.jpg',	0,	NULL,	NULL,	15,	'2012-10-26 11:06:21'),
(14,	17,	'upload/001.jpg',	1,	NULL,	NULL,	14,	'2012-10-26 11:06:21'),
(5,	2,	'upload/santiago.jpg',	1,	NULL,	NULL,	5,	'2012-10-25 17:10:44'),
(6,	2,	'upload/santiago_2.jpg',	0,	NULL,	NULL,	6,	'2012-10-25 17:10:44'),
(7,	2,	'upload/foto_santiago_caridad_del_cobre.jpg',	0,	NULL,	NULL,	7,	'2012-10-25 17:10:44'),
(8,	3,	'upload/capitolio.jpg',	1,	NULL,	NULL,	8,	'2012-10-26 10:55:22'),
(9,	3,	'upload/castillo_del_morro.jpg',	0,	NULL,	NULL,	9,	'2012-10-26 10:55:22'),
(10,	3,	'upload/habana_calle_obispo.jpg',	0,	NULL,	NULL,	10,	'2012-10-26 10:55:23'),
(11,	3,	'upload/habana_centro.jpg',	0,	NULL,	NULL,	11,	'2012-10-26 10:55:23'),
(12,	3,	'upload/habana_museo_de_bellas_artes.jpg',	0,	NULL,	NULL,	12,	'2012-10-26 10:55:23'),
(13,	3,	'upload/la_catedral_y_su_plaza.jpg',	0,	NULL,	NULL,	13,	'2012-10-26 10:55:23'),
(18,	17,	'upload/marilyn_fachada.jpg',	0,	NULL,	NULL,	18,	'2012-10-26 11:06:22'),
(19,	17,	'upload/riobaracoa.jpg',	0,	NULL,	NULL,	19,	'2012-10-26 11:06:22'),
(20,	17,	'upload/wikipedia800pxbaracoa_5703.jpg',	0,	NULL,	NULL,	20,	'2012-10-26 11:06:22'),
(21,	5,	'upload/camaguey.jpg',	1,	'',	'',	21,	'2012-10-26 11:08:42'),
(22,	4,	'upload/cienfuegos.jpg',	1,	NULL,	NULL,	22,	'2012-10-26 11:10:35'),
(23,	1,	'upload/trinidad_calle_de_piedra.jpg',	1,	'',	'',	23,	'2012-10-26 11:15:39'),
(24,	1,	'upload/spettacolo_allescalinata.jpg',	0,	'',	'',	24,	'2012-10-26 11:15:39'),
(25,	1,	'upload/playa_ancon_trinidad_de_cuba.jpg',	0,	'',	'',	25,	'2012-10-26 11:15:39'),
(26,	1,	'upload/escalinata.jpg',	0,	'',	'',	26,	'2012-10-26 11:15:39'),
(27,	1,	'upload/atardecer_en_trinidad.jpg',	0,	'',	'',	27,	'2012-10-26 11:15:39'),
(28,	1,	'upload/centro_de_trinidad.jpg',	0,	'',	'',	28,	'2012-10-26 11:15:39'),
(29,	1,	'upload/trinidad_centro.jpg',	0,	'',	'',	29,	'2012-10-26 11:15:39'),
(30,	5,	'upload/camaguey1.jpg',	0,	NULL,	NULL,	30,	'2012-10-26 11:35:05'),
(31,	5,	'upload/camaguey2.jpg',	0,	NULL,	NULL,	31,	'2012-10-26 11:35:05'),
(32,	5,	'upload/competenciaruedacasinocamaguey08.jpg',	0,	NULL,	NULL,	32,	'2012-10-26 11:35:05'),
(33,	5,	'upload/iglesiacarmencamaguey.jpg',	0,	NULL,	NULL,	33,	'2012-10-26 11:35:05'),
(34,	6,	'upload/263996344_73ee3668ac.jpg',	1,	NULL,	NULL,	34,	'2012-10-26 11:43:37'),
(35,	6,	'upload/cuba_radreise_128_bayamo.jpg',	0,	NULL,	NULL,	35,	'2012-10-26 11:43:37'),
(36,	6,	'upload/kubai_varosok_bayamo_01.jpg',	0,	NULL,	NULL,	36,	'2012-10-26 11:43:37'),
(37,	6,	'upload/paseo_de_bayamo_1.jpg',	0,	NULL,	NULL,	37,	'2012-10-26 11:43:37'),
(38,	9,	'upload/coba_2.jpg',	1,	'',	'',	38,	'2012-10-26 17:26:24'),
(39,	9,	'upload/coba.jpg',	0,	'',	'',	39,	'2012-10-26 17:29:04'),
(40,	9,	'upload/coba1.jpg',	0,	'',	'',	40,	'2012-10-26 17:32:34'),
(41,	9,	'upload/tulum.jpg',	0,	'',	'',	41,	'2012-10-26 17:32:34'),
(42,	9,	'upload/tulum2.jpg',	0,	NULL,	NULL,	42,	'2012-10-26 17:33:30'),
(43,	9,	'upload/tulum1.jpg',	0,	NULL,	NULL,	43,	'2012-10-26 17:33:30'),
(44,	1,	'upload/000.jpg',	0,	NULL,	NULL,	44,	'2012-10-26 17:35:40'),
(45,	16,	'upload/ekbalamaldeacommaya.jpg',	1,	NULL,	NULL,	45,	'2012-10-26 17:42:06'),
(46,	16,	'upload/ekbalamaldeacommaya1.jpg',	0,	NULL,	NULL,	46,	'2012-10-26 17:42:06'),
(47,	16,	'upload/ekbalamaldeacommaya2.jpg',	0,	NULL,	NULL,	47,	'2012-10-26 17:42:06'),
(48,	16,	'upload/ekbalamaldeacommaya3.jpg',	0,	NULL,	NULL,	48,	'2012-10-26 17:42:06'),
(49,	16,	'upload/ekbalamaldeacommaya4.jpg',	0,	NULL,	NULL,	49,	'2012-10-26 17:42:06'),
(50,	12,	'upload/izamal.jpg',	1,	NULL,	NULL,	50,	'2012-10-26 17:50:03'),
(51,	12,	'upload/izamal1.jpg',	0,	NULL,	NULL,	51,	'2012-10-26 17:50:03'),
(52,	12,	'upload/izamal2.jpg',	0,	NULL,	NULL,	52,	'2012-10-26 17:50:03'),
(53,	12,	'upload/izamal3.jpg',	0,	NULL,	NULL,	53,	'2012-10-26 17:50:03'),
(54,	12,	'upload/izamal4.jpg',	0,	NULL,	NULL,	54,	'2012-10-26 17:50:03'),
(55,	12,	'upload/izamalconventofranciscano.jpg',	0,	NULL,	NULL,	55,	'2012-10-26 17:50:03');

DROP TABLE IF EXISTS `destinations`;
CREATE TABLE `destinations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` enum('Cuba','Yucatan') DEFAULT 'Cuba',
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `subtitulo_ita` text,
  `subtitulo_esp` text,
  `descripcion_ita` text,
  `descripcion_esp` text,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `destinationimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `destinations` (`id`, `tipo`, `nombre`, `slug`, `subtitulo_ita`, `subtitulo_esp`, `descripcion_ita`, `descripcion_esp`, `activo`, `comment_count`, `destinationimg_count`, `created`) VALUES
(1,	'Cuba',	'Trinidad',	'1_trinidad',	'<p>Non &eacute; vero che qui il tempo si sia fermato, come dicono tutte quante e orgogliose&nbsp; le principali agenzie di viaggio.</p>',	'',	'<p>Credetemi, in realt&aacute; il tempo a Trinidad &eacute; curvo, si muove senza posa ma in tondo,&nbsp; obbliga eternamente la Citt&aacute; a passare e ripassare sempre dagli stessi punti, portandosi in groppa gente e vie di pietra, case antiche e silenziosi patios, e carica di musica e&nbsp; balli la notte, splendida sempre.</p>\r\n<p>Trinidad funziona come un magnete, gemma lucente che richiama a s&eacute; continuamente le attenzioni di tutti, meritate.</p>\r\n<p>Sedetevi di pomeriggio tardi al bar della Escalinata, quando comincia a fare un po&rsquo; meno caldo e la luce diventa color di rosa e color di rosa e giallo e azzurro sono case e piazze,&nbsp; e guardate gi&uacute; verso la Citt&aacute;, verso la spiaggia lontana, poi scriveteci e raccontateci tutto quanto.</p>',	'',	1,	0,	8,	'2012-10-24 18:29:46'),
(2,	'Cuba',	'Santiago de Cuba',	'2_santiago-de-cuba',	'<p>La pi&uacute; africana delle Citt&aacute; di Cuba</p>',	'',	'<p>La pi&uacute; africana delle Citt&aacute; di Cuba, come tutto l&rsquo;Oriente del Paese invaso dai latifondisti&nbsp; in fuga dalle ribellioni di Haiti, con al seguito i loro schiavi.</p>\r\n<p>Citt&aacute; con un ruolo assolutamente preponderante nelle guerre per l&rsquo;indipendenza dalla Spagna, nella resistenza contro Batista e nella Rivoluzione.</p>\r\n<p>Citt&aacute; fra le pi&uacute; belle di Cuba, abitata da gente gioiosamente musicale, e ve ne renderete conto quando visiterete i luoghi di musica e ballo, patria del <em>son </em>e della <em>conga</em>, nati dalla fusione di folklore musicale spagnolo e di straordinari, entusiasmanti ritmi africani, anche questo patrimonio culturale degli schiavi.</p>\r\n<p>In questi turbini mi perdo, e devo davvero dire che questi africani ne sapevano qualcosa di musica (e non solo di musica, <em>c&rsquo;est pas vrai</em> <em>monsieur Picasso?</em>)</p>',	'',	1,	0,	3,	'2012-10-24 18:46:59'),
(3,	'Cuba',	'La Havana ',	'3_la-havana',	'',	'',	'<p>Non aver paura di niente e di nessuno, e guarda diritto in faccia una della Citt&aacute; pi&uacute; stupefacenti del mondo.</p>\r\n<p>Non aver paura di niente e di nessuno, ma tieni ben aperti occhi e orecchie, ascolta, osserva e non ti perdere nulla.</p>\r\n<p>All&rsquo;Habana non avrai nemici, ma da dietro l&rsquo;angolo pu&oacute; venir fuori l&rsquo;inaspettato ,</p>\r\n<p>con la faccia insieme del riso o del pianto, del comprensibile o del misterioso, avvinghiati indissolubilmente. Hai gi&aacute; capito, La Habana &eacute; tutto e il suo contrario.</p>\r\n<p>&nbsp;</p>\r\n<p>Citt&aacute; entusiasmante, piena di musica, di balli e di danze, di gente curiosa e apertissima, piena di Musei, Cinema&nbsp; e Teatri, di Arte e di Storia. Imperdibile. Non si conosce il mondo, se non s&rsquo;&eacute; visitata La Havana.</p>',	'',	1,	0,	6,	'2012-10-25 13:17:53'),
(4,	'Cuba',	'Cienfuegos',	'4_cienfuegos',	'',	'',	'<p>La francese perch&eacute; fondata da coloni francesi, unica in questo in tutta Cuba, e il tracciato della Citt&aacute; lo conferma, ricorda parti della Parigi stile Haussmann, il barone&nbsp; che ridisegn&oacute;&nbsp; la Ville Lumi&egrave;re dopo la rivolta della Comune.</p>\r\n<p>Quindi, larghe avenidas e edifici neoclassici. Bellissima la Baia, con le spiagge.</p>\r\n<p>Citt&aacute; colta e interessante, in perenne ammirazione di poeti, scrittori e pittori in genere e di quelli, tanti, che la abitano e mi capita spesso di vedere&nbsp; gente di ogni et&aacute; seduta sulla soglia a leggere poesie e racconti, di autori cubani e non.</p>\r\n<p>Vaste librerie piene di libri di ogni genere a prezzi irrisori, e fate attenzione, in pesos nazionali, non nei convertibili CUC&nbsp;&nbsp;&nbsp; (1CUC=24 pesos nazionali)</p>',	'',	1,	0,	1,	'2012-10-25 13:18:31'),
(5,	'Cuba',	'Camag&uuml;ey',	'5_camaguey',	'',	'',	'<p>Per andare in giro per la Citt&aacute; non vi baster&aacute; la cartina, ci vuole qualcuno che vi guidi. C&eacute; da perdersi nel fitto ordito di strade, piazze e parchi, nel labirinto sconcertante di stradine e strettissimi passaggi, creato apposta nel XVIII secolo per mandare in confusione totale pirati, manigoldi e assaltanti di ogni specie.</p>\r\n<p>Il pi&uacute; stretto dei passaggi-strada, il Funda de Catre Alley, lungo un&rsquo;ottantina di metri, non ne misura pi&uacute; di due di larghezza, figuriamoci, vero tunnel, bisognerebbe metterci il cartello, vietato ai claustrofobi.</p>\r\n<p>Citt&aacute; magnifica d&rsquo;architettura coloniale, chiese e piazze di gran valore, e la gente &eacute; molto attratta da arti e cultura, cosa d&rsquo;altronde vera in tutta Cuba, in alcuni luoghi pi&uacute; che in altri.</p>',	'',	1,	0,	5,	'2012-10-25 13:18:54'),
(6,	'Cuba',	'Bayamo',	'6_bayamo',	'',	'',	'<p>E&acute; la Citt&aacute; della storia di Cuba, anzi della Storia di Cuba, e Capitale della Repubblica &ldquo;in armi&rdquo;, cio&eacute; durante le guerre per l&rsquo;indipendenza dalla Spagna.</p>\r\n<p>Centro di smistamento degli schiavi nei secoli della colonizzazione, poi luogo d&rsquo;inizio e d&rsquo;ispirazione delle guerre d&rsquo;indipendenza, contesa, saccheggiata pi&uacute; d&rsquo;una volta, e poi bruciata dagli stessi abitanti, che la preferirono distrutta che in mano all&rsquo;esercito spagnolo.</p>\r\n<p>Luogo di nascita della &ldquo;cubanit&aacute;&rdquo;, della cultura afro-cubana&nbsp; e della Rivoluzione.</p>\r\n<p>Insomma, passato glorioso e molto movimentato.</p>\r\n<p>Oggi &eacute; Citt&aacute; di grandi tradizioni culturali e artistiche.</p>\r\n<p>Andare in giro per le sue strade sul &ldquo;coche&rdquo;, carretto trainato da cavalli, &eacute; davvero il massimo, e per di pi&uacute; molto economico</p>',	'',	1,	0,	4,	'2012-10-25 13:19:12'),
(17,	'Cuba',	'Baracoa',	'17_baracoa',	'',	'',	'<p>Questo &eacute; il luogo dove tocc&oacute; terra per la prima volta a Cuba quello che in seguito verr&aacute; chiamato &ldquo;Grande Ammiraglio&nbsp; del Mar Oceano e Vicer&eacute; delle Indie&rdquo;, Cristoforo Colombo, in quel fatale anno domini 1492.</p>\r\n<p>Distrutta completamente da pirati francesi nel &lsquo;600.</p>\r\n<p>Arrivarci via terra non &eacute; del tutto agevole, Baracoa &eacute; isolata.</p>\r\n<p>Per&oacute;, una volta sul posto, non ci si pu&oacute; proprio pentire del viaggio.</p>\r\n<p>Costruita fra la prima e la seconda terrazza marina, Baracoa&nbsp; &eacute; su una baia fra le pi&uacute; belle, circondata da fiumi e da foreste tropicali piene di fauna impressionante e, pi&uacute; a est, non lontana da qualcosa che assomiglia a un quasi-deserto.</p>\r\n<p>A profusione, piante di noci di cocco e di cacao, e quindi cioccolato. Molto caff&eacute;, del migliore.</p>',	'',	1,	0,	7,	'2012-10-26 13:19:28'),
(9,	'Yucatan',	'Cob&aacute; - Tulum',	'9_coba---tulum',	'<p>Antiche Citt&aacute; di Cob&aacute; e Tulum, Oceano e spiaggia</p>',	'',	'<p>Visita guidata, nelle ore dalle 9 alle 16.</p>\r\n<p>Visita di Cob&aacute;, Citt&aacute;&nbsp; Maya con il tempio pi&uacute;&nbsp;alto di tutta la Mesoamerica. La Citt&aacute;&nbsp; si trova all&rsquo;interno di un vasto parco. Per percorerlo, si possono usare biciclette o bici-taxi.</p>\r\n<p>Trasferta poi a Tulum, antica Citt&aacute;&nbsp;portuale Maya sulla costa caraibica orientale.</p>\r\n<p>Distanze: Ek Balam-Cob&aacute;: km 140, Cob&aacute;-Tulum 45, in direzione Sud-Est.</p>\r\n<p>Cena e pernottamento al Villaggio&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Quota individuale di partecipazione:&nbsp;</p>\r\n<p>n. 2 persone&nbsp; Euro&nbsp; 121 / per persona</p>\r\n<p>n. 3 persone&nbsp; Euro&nbsp;&nbsp;&nbsp;&nbsp;94 / per persona</p>\r\n<p>n. 4 persone&nbsp; Euro&nbsp;&nbsp;&nbsp;&nbsp;80 / per persona</p>\r\n<p>n. 5 persone&nbsp; Euro&nbsp;&nbsp;&nbsp;&nbsp;72 / per persona&nbsp;</p>',	'',	1,	0,	6,	'2012-10-25 13:48:48'),
(10,	'Yucatan',	'M&eacute;rida',	'10_merida',	'<p>Citt&aacute;&nbsp; di M&eacute;rida</p>',	'',	'<p>M&eacute;rida &eacute;&nbsp;la capitale dello Stato di Yucat&aacute;n. Visita guidata al Museo di Antropologia e Storia, visita al centro storico e alle botteghe di artigianato e alla Casa della Cultura.</p>\r\n<p>Distanza Ek Balam-M&eacute;rida: km 170, in direzione Ovest.</p>\r\n<p>Cena e pernottamento al Villaggio.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Quota individuale di partecipazione:&nbsp;</p>\r\n<p>n. 2 persone&nbsp; Euro 111 / per persona</p>\r\n<p>n. 3 persone&nbsp; Euro&nbsp;&nbsp;&nbsp;84 / per persona</p>\r\n<p>n. 4 persone&nbsp; Euro&nbsp;&nbsp; 70&nbsp;/ per persona</p>\r\n<p>n. 5 persone&nbsp; Euro&nbsp;&nbsp; 86&nbsp;/ per persona&nbsp;</p>\r\n<p>Guida lingua Inglese, Italiano, Francese , Tedesco&nbsp; Euro 70</p>',	'',	1,	0,	0,	'2012-10-25 13:49:10'),
(11,	'Yucatan',	'Solferino',	'11_solferino',	'<p>Comunit&aacute;&nbsp; indigena di Solferino</p>',	'',	'<p>Al mattino visita a Solferino e alla regione dello Yum Balam (Giaguaro Padre) tra paesaggi di savana quasi africana, frequentati da un gran numero di uccelli acquatici, anfibi di ogni genere. Orchidee e bromelie ovunque.</p>\r\n<p>Il programma prevede l&rsquo;attraversamento della foresta fino all&rsquo;Humedal. Da qui, remando in kayak, il visitatore percorre la zona girando attrono a possenti alberi dalle mille radici che escono dall&rsquo;acqua, carichi di uccelli acquatici.</p>\r\n<p>Al ritorno, si sale sui &ldquo;miradores&rdquo;, alte torri di avvistamento.</p>\r\n<p>&Eacute; perfino possibile il &ldquo;cannopy&rdquo;, cio&eacute; passare da un &ldquo;mirador&rdquo; all&rsquo;altro, scivolando appesi a funi sopra la foresta. Il tutto ovviamente con l&rsquo;assistenza della guida, e in tutta sicurezza.</p>\r\n<p>Per finire, visita al Giardino Botanico, al laboratorio delle Erbe e alla Tienda di prodotti naturali (vedi documento &ldquo;Tienda&rdquo; nella sezione &ldquo;Info su&nbsp; Yucat&aacute;n&rdquo;)</p>\r\n<p>Orario delle visite: dalle 9 del mattino alle 17-18. Da Ek Balam a Solferino: km 125. Direzione Nord-Nord-Est.</p>\r\n<p>Cena e pernottamento al Villaggio.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;Quota individuale di partecipazione<strong>:</strong>&nbsp;&nbsp;&nbsp;&nbsp; Euro&nbsp;&nbsp;95&nbsp;</p>',	'',	1,	0,	0,	'2012-10-25 13:49:32'),
(12,	'Yucatan',	'Izamal',	'12_izamal',	'<p>Citt&aacute;&nbsp; di Izamal</p>',	'',	'<p>Tour guidato al sito archeologico della Citta May&aacute;&nbsp;pre-hispanica di Chich&eacute;n Itz&aacute;, zona archeologica d&rsquo;importanza planetaria, Patrimonio dell&rsquo;Umanit&aacute;&nbsp; secondo l&rsquo;Unesco, dichiarata Meraviglia del Mondo.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Quota individuale di partecipazione:&nbsp;</strong></p>\r\n<p>n. 2 persone&nbsp;&nbsp;&nbsp; Euro&nbsp;75 / per persona</p>\r\n<p>n. 3 persone&nbsp;&nbsp;&nbsp; Euro&nbsp;56 / per persona</p>\r\n<p>n. 4 persone&nbsp;&nbsp;&nbsp; Euro 48 / per persona</p>\r\n<p>n. 5 persone&nbsp;&nbsp;&nbsp; Euro 42 / per persona&nbsp;</p>\r\n<p>Interprete su richiesta&nbsp; Euro 80 &nbsp;</p>',	'',	1,	0,	6,	'2012-10-25 13:49:48'),
(13,	'Yucatan',	'Chichen Itz&aacute;',	'13_chichen-itza',	'<p>Zona Archeologica di Chich&eacute;n Itz&aacute;</p>',	'',	'<p>Tour guidato al sito archeologico della Citta May&aacute;&nbsp;pre-hispanica di Chich&eacute;n Itz&aacute;, zona archeologica d&rsquo;importanza planetaria, Patrimonio dell&rsquo;Umanit&aacute;&nbsp; secondo l&rsquo;Unesco, dichiarata Meraviglia del Mondo.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Quota individuale di partecipazione:&nbsp;</strong></p>\r\n<p>n. 2 persone&nbsp;&nbsp;&nbsp; Euro&nbsp;75 / per persona</p>\r\n<p>n. 3 persone&nbsp;&nbsp;&nbsp; Euro&nbsp;56 / per persona</p>',	'',	1,	0,	0,	'2012-10-25 13:50:04'),
(15,	'Yucatan',	'Ek Balam - Xcanch&eacute;',	'15_ek-balam---xcanche',	'<p><strong>Zona Archeologica Ek Balam&nbsp; e Ecoparco Acquatico Xcanch&eacute;</strong><strong>.</strong></p>',	'',	'<p>Visita guidata della Zona Archeologica Maya di Ek Balam il Giaguaro Nero e dell&rsquo;Ecoparco Acquatico Xcanch&eacute;.</p>\r\n<p>Ek Balam &eacute;&nbsp;una zona archeologica Maya ancora poco nota ma di grande importanza storica e si trova a un km circa dal Villaggio.</p>\r\n<p>L&rsquo;Ecoparco Acquatico Xcanch&eacute;&nbsp;racchiude un bellissismo Cenote, lago sotterraneo e luogo sacro per gli antichi Maya, in quanto apertura verso l&rsquo;Inframundo. Il Cenote pu&oacute;&nbsp;essere attraversato con funi da una sponda all&rsquo;altra, o navigato con kayak.</p>\r\n<p>Arriverete all&rsquo;entrata dell&rsquo;Ecoparco con l&rsquo;auto, e poi occorre attraversare la foresta in bici o in bici-taxi. I visitatori saranno poi ricevuti dalla guida che, utilizzando una mappa, far&aacute;&nbsp;loro vedere l&rsquo;ubicazione di tutte le installazioni e servizi a cui avranno accesso.</p>\r\n<p>Orario delle visite: dalle ore 9 alle 16, ora di chiusura dell&rsquo;Ecoparco, con le nostre guide Maya bilingue, spagnolo e inglese. Le due zone sono vicinissime al Villaggio.</p>\r\n<p>Cena e pernottamento al Villaggio.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Quota individuale di partecipazione:</strong>&nbsp;</p>\r\n<p>n. 2 persone&nbsp;&nbsp; Euro&nbsp;71 / per persona</p>\r\n<p>n. 3 persone&nbsp;&nbsp; Euro&nbsp;65 / per persona</p>\r\n<p>n. 4 persone&nbsp;&nbsp; Euro&nbsp;54 / per persona</p>\r\n<p>n. 5 persone&nbsp;&nbsp; Euro 48 / per persona&nbsp;</p>',	'',	1,	0,	0,	'2012-10-25 13:50:38'),
(16,	'Yucatan',	'Comunit&aacute; Maya di Ek Balam',	'16_comunita-maya-di-ek-balam',	'<p>Tutta la giornata nella Comunit&aacute;&nbsp;Maya di Ek Balam, con la guida.</p>',	'',	'<p>Visita con la nostra guida Maya dalle ore 9 del mattino, per tutto il giorno.</p>\r\n<p>Uh Najil Ek Balam &eacute;&nbsp; un villaggio maya che mantiene tradizioni e forme di vita Maya, letteralmente imerso nella foresta, con vegetazione e fauna tipiche di queste zone.</p>\r\n<p>Da non perdere, il Temazcal, sorta di fauna di vapore usato da secoli da queste popolazioni, con inizio alle ore 20, e di tre ore di durata .</p>\r\n<p>La Comunit&aacute;&nbsp;Maya &eacute;&nbsp;adiacente al Villaggio.</p>\r\n<p>Cena e pernottamento al Villaggio.</p>\r\n<p>&nbsp;</p>\r\n<p>Quota individuale di partecipazione:&nbsp;</p>\r\n<p>n. 2 persone&nbsp;&nbsp; Euro 193 / per persona</p>\r\n<p>n. 3 persone&nbsp;&nbsp; Euro 134 / per persona</p>\r\n<p>n. 4 persone&nbsp;&nbsp; Euro&nbsp;104 / per persona</p>\r\n<p>n. 5 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;&nbsp;87 / per persona&nbsp;</p>',	'',	1,	0,	5,	'2012-10-25 16:27:52'),
(18,	'Cuba',	'Pinar del r&iacute;o',	'18_pinar-del-rio',	'<p style=\"text-align: left;\" align=\"center\"><strong>Pinar del Rio e Vi&ntilde;ales, comanda la Natura</strong></p>',	'',	'<p>Pinar dell&rsquo;altopiano, se cercate divertimenti come discoteche, balli danze e cotillons siete fuori strada, qualcosa c&rsquo;&eacute; ma avete sbagliato Citt&aacute;, garantito.</p>\r\n<p>A volte per le strade di Pinar non si vede nessuno, qualche carretto con cavallo, qualche bicicletta, come nelle vecchie foto, e l&rsquo;aria &eacute; fresca e trasparente.</p>\r\n<p>A parte il fatto che esistono edifici neoclassici molto decorati, sulla Citt&aacute; in s&eacute; non c&rsquo;&eacute; molto da dire.</p>\r\n<p>Qui domina e comanda la Natura.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>La vicina Vi&ntilde;ales</strong> &eacute; media montagna, piena di pinete e tramonti colorati, strade strette e case di legno, formidabile.</p>\r\n<p>Proprio come dicono i migliori d&eacute;pliants turistici, &rdquo;abbandonatevi al&nbsp; piacere di luoghi&nbsp; incontaminati...ecc&rdquo;, ecco, ben detto.</p>\r\n<p>Se poi togliete dal paesaggio qualche pianta e arbusto locale non sembra neppure di essere ai Caraibi, pare di stare su bassi Pirenei, Prealpi o addirittura sui Carpazi.</p>',	'',	1,	0,	0,	'2012-10-29 15:36:53'),
(19,	'Cuba',	'Santa Clara',	'19_santa-clara',	'<p>Santa Clara &eacute; una delle Citt&aacute; pi&uacute; solari di Cuba e anche fra le pi&uacute; tranquille</p>',	'',	'<p>Santa Clara &eacute; una delle Citt&aacute; pi&uacute; solari di Cuba e anche fra le pi&uacute; tranquille, di giorno. Non a caso&nbsp;chiamata &ldquo;clara&rdquo;, la luminosa, e in effetti il nome non tradisce le aspettative.</p>\r\n<p>Il Che Guevara la conquist&oacute; nell&rsquo;ultima battaglia della Rivoluzione, in quell&rsquo;alba del 1958, e la canzone dice che tutta la Citt&aacute; si svegli&oacute; per guardare.&nbsp;</p>\r\n<p>Importante snodo stradale, ci passa l&rsquo;Autostrada che dall&rsquo;Habana porta a Oriente, e la ferrovia. E&acute; collegata direttamente con Sancti Spiritus e Trinidad, cio&eacute; con il versante sud di Cuba, con una buona strada, e non &eacute; troppo lontana&nbsp; da quello settentrionale.</p>\r\n<p>Insomma, un posto strategico, ecco perch&eacute; Fidel Castro mand&oacute; il Che e la sua colonna a prenderla.</p>\r\n<p>Fondata nel 1689. Abitanti: 210.000</p>',	'',	1,	0,	0,	'2012-10-29 15:41:58');

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` enum('General','Cuba','Yucatan') DEFAULT 'General',
  `nombre_ita` varchar(255) NOT NULL,
  `nombre_esp` varchar(255) NOT NULL,
  `descripcion_ita` text,
  `descripcion_esp` text,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `faqs` (`id`, `tipo`, `nombre_ita`, `nombre_esp`, `descripcion_ita`, `descripcion_esp`, `orden`, `created`, `activo`) VALUES
(1,	'General',	'Quanti chili di bagaglio posso portare?',	'',	'<p>30 kilogrammi a persona. Fate attenzione, a sorpassare il peso consentito, perch&eacute; la dogana cubana, in caso di controlli, vi far&aacute; pagare 10 Pesos convertibili per kilogrammo ( circa&nbsp; Euro 8)&nbsp;</p>',	'',	1,	'2012-10-25 13:31:16',	1),
(2,	'General',	'Quale moneta conviene portare?',	'',	'<p>L&rsquo;euro va benissimo ovviamente, come le principali monete, ad eccezione dei dollari USA, che vengono tassati al 10% al momento del cambio</p>',	'',	2,	'2012-10-25 13:31:53',	1),
(3,	'General',	'Sono valide tutte le carte di credito?',	'',	'<p>Le principali s&iacute;, come Mastervard, Visa ecc, &nbsp;ad eccezione di quelle provenienti dagli USA, come American Express. Il prelievo di contanti in banca con carta di credito &eacute; tassato all&rsquo;11%.</p>',	'',	3,	'2012-10-25 13:32:22',	1),
(4,	'General',	'Quali monete sono in uso a Cuba?',	'',	'<p>A Cuba esistono due monete: il Peso cubano nazionale e il Peso cubano convertibile. Quest&rsquo;ultimo &eacute; quello che vi daranno quando cambierete i vostri soldi. Attenzione, il Convertibile, detto CUC, vale 24 Pesos Nazionali.</p>',	'',	4,	'2012-10-25 13:32:51',	1),
(5,	'General',	'Come posso riconoscere le banconote delle due monete?',	'',	'<p>Entrate nel sito <a href=\"http://www.cubacurrency.com/\">www.cubacurrency.com</a>:&nbsp; l&iacute; troverete le fotografie delle due banconote e il cambio con la vostra moneta, giorno per&nbsp; giorno. Il cambio &eacute; sempre leggermente diverso da quello che vi applicheranno.</p>',	'',	5,	'2012-10-25 13:33:11',	1),
(6,	'General',	'Dove posso cambiare il demaro?',	'',	'<p>Nelle sedi del Banco de Cr&eacute;dito y de Comercio, e in quelle delle Cadeca, Casas de Cambio.</p>',	'',	6,	'2012-10-25 13:34:45',	1),
(7,	'General',	'Posso portare il cellulare?',	'',	'<p>S&iacute;, senza problemi. Attenzione: assolutamente proibiti i telefoni satellitari.</p>',	'',	7,	'2012-10-25 13:35:06',	1),
(8,	'General',	'Cuba &eacute; un posto sicuro?',	'',	'<p>Cuba &eacute; uno dei posti pi&uacute; sicuri al mondo. Si pu&oacute; andare in giro tranquillamente, sempre usando il buon senso di evitare luoghi troppo appartati e oscuri, come in qualsiasi posto del mondo. Quando sarete fuori dalle Case dove alloggiate, attenzione a macchine fotografiche, denaro, gioielli eccetera.</p>',	'',	8,	'2012-10-25 13:35:30',	1),
(9,	'General',	'Sono necessarie vaccinazioni?',	'',	'<p>Nessuna vaccinazione &eacute; necessaria.</p>',	'',	9,	'2012-10-25 13:35:51',	1),
(10,	'General',	'&Eacute; necessaria un&rsquo;assicurazione di viaggio?',	'',	'<p>S&iacute;, e il costo &eacute; di USD 2.50, al giorno e per persona. Vi sar&aacute; fornita al momento di comprare il volo. Non perdetela, o la dovrete ripagare.</p>',	'',	10,	'2012-10-25 13:36:08',	1),
(11,	'General',	'Per visitare Cuba, occorre il visto d&rsquo;entrata?',	'',	'<p>S&iacute;, e vi sar&aacute; fornito anch&rsquo;esso con il biglietto aereo. Fate attenzione a non perderlo, perch&eacute; vi sar&aacute; richiesto all&rsquo;uscita dal Paese.</p>',	'',	11,	'2012-10-25 13:36:27',	1);

DROP TABLE IF EXISTS `legal`;
CREATE TABLE `legal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_ita` text,
  `descripcion_esp` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `legal` (`id`, `descripcion_ita`, `descripcion_esp`, `created`) VALUES
(1,	'<p><strong>1&nbsp;&nbsp;&nbsp; Accettazione delle condizioni</strong></p>\r\n<p>Visita e/o accesso al sito web: www.cubayucatan.com&nbsp;sono scelte volontarie, e chi accede viene qui chiamato Utente. Come tale, per il semplice fatto di accedere al sito web <a href=\"http://www.cubayucatan.com/\">www.cubayucatan.com</a>, di propriet&aacute; esclusiva di <strong>NUOVA G&Eacute;NESIS SRL de CV,</strong> M&eacute;rida, Yucat&aacute;n, M&eacute;xico, qui di seguito chiamata <strong>NG</strong>, l&rsquo;Utente accetta le condizioni qui presenti e quelle che in qualsiasi momento la direzione <strong>NG</strong> ritenga opportuno inserire in futuro, ragion per cui l&rsquo;Utente dovr&aacute; leggere attentamente e accettare senza alcun tipo di riserva questo Avviso Legale, prima di navigare al suo interno, utilizzarlo, prenderne visione, navigare al suo interno, acquistarene i servizi &nbsp;ecc.</p>\r\n<p><strong>NG</strong> dichiara e si riserva il diritto di cambiare questo Avviso Legale, in obbedienza a nuove leggi o in seguito a decisioni dell&rsquo;Azienda di modificare strategia, condotta commerciale, modalit&aacute; di connessione con altri siti ecc, decisioni prese senza alcun tipo di &nbsp;restrizione, in qualsiasi momento e in tutti gli aspetti contemplati in questo Avviso.</p>\r\n<p><strong>2 &nbsp;Sito web</strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n<p><strong>NG</strong>, attraverso il suo sito <a href=\"http://www.cubayucatan.com/\">www.cubayucatan.com</a>, diffonde&nbsp; ai suoi Clienti e Utenti informazioni&nbsp; di qualsiasi tipo, note, immagini, videos, servizi ecc. in forma gratuita e piacevole, certa di far opera gradita a tutti nell&rsquo;informare sui contenuti, sia di carattere turistico che culturale.</p>\r\n<p>Se <strong>NG </strong>accetter&aacute; connessioni(links) con altre pagine web, non potr&aacute; essere ritenuta responsabile dei contenuti delle stesse che non sia in grado di controllare direttamente. Se <strong>NG</strong> lo riterr&aacute; opportuno, potr&aacute; annullare le connessioni che presentino carattere razzista, xenofobo, violento, o in qualsiasi modo illegale e contro le leggi comunemente accettate del vivere civile. L&rsquo;Utente accetta che <strong>NG</strong> si riservi il diritto in qualsiasi momento di cambiare o annullare temporaneamente una o pi&uacute; pagine disponibili, senza avviso e declinando ogni responsabilit&aacute;, senza responsabilizzarsi in alcun modo per il mancato adeguamento di dati e informazioni che si trovino nel sito.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3&nbsp; Propriet&aacute; intellettuale &nbsp;</strong></p>\r\n<p>L&rsquo;utente si dichiara informato del fatto che <em>qualsiasi </em>contenuto del sito <a href=\"http://www.cubayucatan.com/\">www.cubayucatan.com</a>, materiali, testo, immagini, videos, servizi, ogni cosa ivi contenuta sono di propriet&aacute; esclusiva di <strong>NG, </strong>facendo salvo naturalmente tutto ci&oacute; che si riferisca a altre pagine o ipervincoli. Quindi, l&rsquo;Utente pu&oacute; solamente visualizzare&nbsp; i contenuti e scaricare in un solo computer &nbsp;una copia dei materiali contenuti, per suo uso personale e privato, essendo assolutamente&nbsp; escluso ogni uso commerciale (o di divulgazione pubblica non commerciale senza il permesso scritto di <strong>NG</strong>)rispettando quindi in tutti i modi la normativa vigente sulla propriet&aacute; intellettuale e industriale.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>4&nbsp; Autorizzazioni per connessioni con altre pagine e siti web</strong></p>\r\n<p>&nbsp;<strong>NG</strong> autorizza la connessione del suo sito con altre pagine e siti web, si augura di realizzarle, sempre e quando esista un reciproco interesse e alle seguenti condizioni:</p>\r\n<p>A &nbsp;&nbsp;Che tale connessione non sottintenda alcuna relazione commerciale, di rappresentanza, distribuzione di servizi, concessione di alcun diritto,&nbsp; succursalit&aacute;, &nbsp;ecc.</p>\r\n<p>B &nbsp;Che rimanga estremamente chiaro che ogni contenuto del sito web <a href=\"http://www.cubayucatan.com/\">www.cubayucatan.com</a>&nbsp; rimane propriet&aacute; esclusiva di <strong>NG.</strong></p>\r\n<p>C &nbsp;Che da parte di chiunque non si fornisca un&rsquo;immagine falsa di <a href=\"http://www.cubayucatan.com/\">www.cubayucatan.com</a> o di <strong>NG</strong>, diffamante, insultante, in malafede, ironica ecc.</p>\r\n<p>D&nbsp;&nbsp; &nbsp;Che non si stabiliscano connessioni con siti o pagine web che presentino, o anche solo richiamino, in forma esplicita o meno, contenuti razzisti, xenofobi,&nbsp; violenti, &nbsp;o in qualsiasi modo illegali e contro le leggi comunemente accettate del vivere civile.&nbsp;</p>\r\n<p>&nbsp;<strong>5&nbsp; Del buon uso del sito di NG e relative responsabilit&aacute;</strong></p>\r\n<p>Buona fede, relazioni civili fra individui e Aziende, aliene da qualsiasi tentativo di illecita appropriazione, inganno, sottrazione di diritti di chiunque, danni a chiunque, ecc, sono i principi etici cui <strong>NG</strong> fa e far&aacute; sempre riferimento nella sua attuazione. Sono quindi tassativamente proibite ogni &nbsp;attivit&aacute; e attuazioni che colpiscano&nbsp; legalit&aacute; e diritti di chiunque, anche di terzi, e nella fattispecie:</p>\r\n<p>A&nbsp;&nbsp; &nbsp;Attuare in rete o attraverso di essa e in qualunque modo in maniera tale da procurare danni al sistema di <strong>NG</strong> o di chiunque.</p>\r\n<p>B&nbsp; Attuare con spamming o inviando messaggi con il fine di bloccare i servitori della rete.</p>\r\n<p>C<strong>&nbsp; NG</strong> non si far&aacute; responsabile di alcun atto illegale, o scorretto, non accettabile, o contrario alle buone norme del vivere civile, che uno o pi&uacute; Utenti possano fare di contenuti o materiali che appaiono nel suo sito, n&eacute; di danni che possano loro derivare, durante le visite al suo sito, per l&rsquo;interruzione o per il cattivo funzionamento del servizio di fornitura di energia elettrica;&nbsp; per danni causati da motivi di forza maggiore; o per intervento di terzi; o per intervento dei pubblici poteri; o per saturazione del sito; o interventi di chiunque, in buona o cattiva fede. Tutto ci&oacute; ovviamente anche in caso di danni agli strumenti elettronici di navigazione dell&rsquo;Utenza, o di qualsiasi altro tipo.</p>\r\n<p><strong>6&nbsp; Protezione dei dati</strong></p>\r\n<p>Nonostante NUOVA G&Eacute;NESIS SRL de CV, proprietaria del sito <a href=\"http://www.cubayucatan.com/\">www.cubayucatan.com</a>, sia un&rsquo;Azienda di diritto messicano, dichiara di adeguarsi strettamente alla normativa italiana sul Trattamento dei dati personali, ai sensi dell&rsquo;art. 13 del D. Lgs. N. 196/2003.</p>\r\n<p>L&rsquo;Utente si dichiara informato che si possono realizzare studi statistici per un migliore funzionamento del sito, per&oacute; anonimi e senza dati personali.</p>\r\n<p>I dati personali di ogni tipo non potranno essere raccolti in alcuna base di dati, a parte che nella posta elettronica.</p>\r\n<p>&nbsp;<strong>7&nbsp; Giurisdizione applicabile</strong></p>\r\n<p>Le condizioni generali qui espresse, si reggono sulla legislazione messicana. L&rsquo;utente del sito le accetta espressamente, e accetta anche che qualsiasi controversia che si riferisca all&rsquo;uso di questo sito web si risolver&aacute; atttraverso le leggi in vigore nel luogo di residenza dell&rsquo;Azienda proprietaria del sito stesso, nell&rsquo;ambito territoriale yucateco, rinunciando l&rsquo;utente a ricorrere a qualsiasi altra giurisdizione.</p>',	'',	'2012-10-25 13:39:43');

DROP TABLE IF EXISTS `packimgs`;
CREATE TABLE `packimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) DEFAULT '0',
  `descripcion_ita` text,
  `descripcion_esp` text,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `packimgs` (`id`, `pack_id`, `src`, `portada`, `descripcion_ita`, `descripcion_esp`, `orden`, `created`) VALUES
(32,	1,	'upload/santiago2.jpg',	0,	NULL,	NULL,	11,	'2012-10-31 17:57:03'),
(30,	1,	'upload/capitolio13517278231.jpg',	0,	NULL,	NULL,	9,	'2012-10-31 17:57:03'),
(31,	1,	'upload/plazamayor.jpg',	0,	NULL,	NULL,	10,	'2012-10-31 17:57:03'),
(29,	1,	'upload/camaguey113517278231.jpg',	0,	NULL,	NULL,	8,	'2012-10-31 17:57:03'),
(28,	1,	'upload/baracoa3824d9f673099a26.jpg',	1,	NULL,	NULL,	7,	'2012-10-31 17:57:03'),
(27,	2,	'upload/trinidadcalledepiedra.jpg',	0,	NULL,	NULL,	6,	'2012-10-31 17:49:56'),
(26,	2,	'upload/plazadearmas.jpg',	0,	NULL,	NULL,	5,	'2012-10-31 17:49:56'),
(25,	2,	'upload/cienfuegoscentro.jpg',	1,	NULL,	NULL,	4,	'2012-10-31 17:49:56'),
(24,	3,	'upload/plazadelacatedral.jpg',	0,	NULL,	NULL,	3,	'2012-10-31 16:52:10'),
(23,	3,	'upload/habanacentro.jpg',	0,	NULL,	NULL,	2,	'2012-10-31 16:52:10'),
(22,	3,	'upload/habana_museo_de_bellas_artes13517239301.jpg',	1,	NULL,	NULL,	1,	'2012-10-31 16:52:10');

DROP TABLE IF EXISTS `packs`;
CREATE TABLE `packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_ita` varchar(255) NOT NULL,
  `nombre_esp` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `src` varchar(255) DEFAULT '',
  `descripcion_ita` text,
  `descripcion_esp` text,
  `descripcion2_ita` text,
  `descripcion2_esp` text,
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `packs` (`id`, `nombre_ita`, `nombre_esp`, `slug`, `src`, `descripcion_ita`, `descripcion_esp`, `descripcion2_ita`, `descripcion2_esp`, `activo`, `orden`, `created`) VALUES
(1,	'Cuba, 5 Citt&aacute; in 20 giorni',	'Cuba, 5 Ciudades en 20 dias',	'1_cuba-5-citta-in-20-giorni',	'upload/mapa9citta13517227561.jpg',	'<p>Questa proposta vi permette di visitare 5 Citt&aacute; cubane in 20 giorni, con alloggio e colazione, con due opzioni possibili, con e senza cena.</p>\r\n<p>Le prenotazioni si effettuano&nbsp; normalmente con 30 giorni di anticipo sulla data di partenza.&nbsp;Possiamo farcela anche in minor tempo, dipende dal traffico di presenze: prendete contatto con noi per&nbsp;informazioni.</p>\r\n<p>Il taxista, il cui costo &eacute; incluso nel prezzo delle due opzioni, sar&aacute; in attesa all\'uscita dei passeggeri e porter&aacute; un cartello con il vostro nome. Vi condurr&aacute; in Citt&aacute;, nella Casa che vi ospiter&aacute;. La gerente vi fornir&aacute; indirizzi e telefono delle altre Case dove sarete ospitati, a Trinidad e a Santa Clara. Tornerete all&rsquo;Habana, dalla stessa gerente, dove passerete l&rsquo;ultima notte, in attesa del volo di ritorno.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'',	'',	1,	2,	'2012-10-26 18:11:56'),
(2,	'Cuba, 3 Citt&aacute; in 15 giorni',	'Cuba, 3 Ciudades en 15 dias',	'2_cuba-3-citta-in-15-giorni',	'upload/mapa9citta13517227421.jpg',	'<p>Questa proposta vi permette di visitare 3 Citt&aacute; cubane in 15 giorni, con alloggio e colazione, con due opzioni possibili, con e senza cena.</p>\r\n<p>Le prenotazioni si effettuano&nbsp; normalmente con 30 giorni di anticipo sulla data di partenza.&nbsp;Possiamo farcela anche in minor tempo, dipende dal traffico di presenze: prendete contatto con noi per&nbsp;informazioni.</p>\r\n<p>Il taxista, il cui costo &eacute; incluso nel prezzo delle due opzioni, sar&aacute; in attesa all\'uscita dei passeggeri e porter&aacute; un cartello con il vostro nome. Vi condurr&aacute; in Citt&aacute;, nella Casa che vi ospiter&aacute;. La gerente vi fornir&aacute; indirizzi e telefono delle altre Case dove sarete ospitati, a Trinidad e a Santa Clara. Tornerete all&rsquo;Habana, dalla stessa gerente, dove passerete l&rsquo;ultima notte, in attesa del volo di ritorno.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'',	'',	1,	3,	'2012-10-26 18:20:44'),
(3,	'Cuba, 3 Citt&aacute; in 10 giorni',	'Cuba, 3 Ciudad en 10 dias',	'3_cuba-3-citta-in-10-giorni',	'upload/mapa_10giorno.jpg',	'<p>Questa proposta vi permette di visitare 3 Citt&aacute; cubane in 10 giorni, con alloggio e colazione, con due opzioni possibili, con e senza cena.</p>\r\n<p>Le prenotazioni si effettuano&nbsp; normalmente con 30 giorni di anticipo sulla data di partenza.&nbsp;Possiamo farcela anche in minor tempo, dipende dal traffico di presenze: prendete contatto con noi per&nbsp;informazioni.</p>\r\n<p>Il taxista, il cui costo &eacute; incluso nel prezzo delle due opzioni, sar&aacute; in attesa all\'uscita dei passeggeri e porter&aacute; un cartello con il vostro nome. Vi condurr&aacute; in Citt&aacute;, nella Casa che vi ospiter&aacute;. La gerente vi fornir&aacute; indirizzi e telefono delle altre Case dove sarete ospitati, a Trinidad e a Santa Clara. Tornerete all&rsquo;Habana, dalla stessa gerente, dove passerete l&rsquo;ultima notte, in attesa del volo di ritorno.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'',	'',	1,	4,	'2012-10-26 18:21:22'),
(4,	'Scegli fra 9 Citt&aacute;',	'Elige entre 9 Ciudades',	'4_scegli-fra-9-citta',	'upload/mapa9citta13517227671.jpg',	'<p>Potete personalizzare la vacanza a Cuba scegliendo le Citt&aacute; che volete visitare fra queste nove che fanno parte del nostro programma:<br />Pinar del R&iacute;o, La Havana, Cienfuegos, Trinidad, Santa Clara, Camaguey, Bayamo, Baracoa, Santiago,&nbsp; cio&eacute; le principali mete turistiche di Cuba.<br /><br />Uno dei nostri taxisti sar&aacute; in attesa all\'uscita dei passeggeri e porter&aacute; un cartello con il vostro nome. Vi condurr&aacute; in Citt&aacute;, nella Casa che vi ospiter&aacute;.</p>\r\n<p>Se avete prenotato in altre Citt&aacute; oltre che all\'Habana, la stessa&nbsp; gerente della Casa vi fornir&aacute; le informazioni necessarie, con telefono e indirizzo delle altre Case, nelle rispettive localit&aacute;.</p>\r\n<p>Nelle Case dove siete alloggiati si pu&oacute; anche cenare, bene e a basso prezzo e se preferite, potete prenotare con noi. </p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'',	'',	1,	1,	'2012-10-26 18:23:28'),
(5,	'Tour Giaguaro Nero Mayataan, Basico + Opzioni',	'Gira Jaguar Negro Mayataan, Basic + Opciones',	'5_tour-giaguaro-nero-mayataan-basico--opzioni',	'upload/mapaek0113517226321.jpg',	'<p>Programma di base: alloggio in mezza pensione nei Bungalows del Villaggio Maya e noleggio auto. Opzioni a scelta, di luoghi interessanti da visitare.<br />&nbsp;<br />Di seguito, descrizione del Tour, quota individuale di partecipazione, sconti e crediti, lista dei servizi inclusi nei prezzi e modulo di prenotazione.<br />&nbsp;<br />Descrizione del Tour <br />&nbsp;<br />Primo giorno:&nbsp; Arrivo in Messico<br />Trasferimento libero in Hotel, sistemazione in Hotel (servizi non inclusi nel pacchetto) <br />&nbsp;<br />Secondo giorno:&nbsp; Viaggio Canc&uacute;n-EK Balam<br />Ore 9.30 Incontro in mattinata in Hotel con il nostro incaricato che vi consegner&aacute;&nbsp; l&rsquo;auto con l&rsquo;assicurazione e i vouchers per i servizi prenotati.<br />Viaggio in auto fino al Villaggio Maya di U Najil Ek Balam (km 180)<br />Cena e pernottamento nel&nbsp; Villaggio.<br />Dal giorno della consegna dell&rsquo;auto iniziano i servizi fino al compimento dei 10 giorni previsti. <br />&nbsp; <br />Undicesimo giorno: Ritorno verso Canc&uacute;n<br />Riconsegna dell&rsquo;auto al nostro incaricato, secondo le modalit&aacute;&nbsp;spiegate pi&uacute;&nbsp;avanti ( alle ore 19 )<br /><br />QUOTA&nbsp; INDIVIDUALE&nbsp; DI PARTECIPAZIONE<br />Durata:&nbsp; 10 giorni e 9 notti <br />&nbsp;<br />n. 2 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;865&nbsp; / per persona<br />n. 3 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;675&nbsp; / per persona<br />n. 4 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;653&nbsp; / per persona<br />n. 5 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;758&nbsp; / per persona</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>',	1,	5,	'2012-10-26 18:24:55'),
(6,	'Tour Giaguaro Nero Mayakot Basico',	'Gira Jaguar Negro Mayakot Basic',	'6_tour-giaguaro-nero-mayakot-basico',	'upload/mapaek01.jpg',	'<p>Potete personalizzare la vacanza a Cuba scegliendo le Citt&aacute; che volete visitare fra queste nove che fanno parte del nostro programma:<br />Pinar del R&iacute;o, La Havana, Cienfuegos, Trinidad, Santa Clara, Camaguey, Bayamo, Baracoa, Santiago,&nbsp; cio&eacute; le principali mete turistiche di Cuba.<br /><br />Uno dei nostri taxisti sar&aacute; in attesa all\'uscita dei passeggeri e porter&aacute; un cartello con il vostro nome. Vi condurr&aacute; in Citt&aacute;, nella Casa che vi ospiter&aacute;. <br />Se avete prenotato in altre Citt&aacute; oltre che all\'Habana, la stessa&nbsp; gerente della Casa vi fornir&aacute; le informazioni necessarie, con telefono e indirizzo delle altre Case, nelle rispettive localit&aacute;.<br />Nelle Case dove siete alloggiati si pu&oacute; anche cenare, bene e a basso prezzo e se preferite, potete prenotare con noi. <br /><br />Programma di base: alloggio in mezza pensione nei Bungalows del Villaggio Maya e noleggio auto.<br />Di seguito, descrizione del Tour, quota individuale di partecipazione, sconti e crediti, lista dei servizi inclusi nei prezzi e modulo di prenotazione.<br /><br />Descrizione del Tour <br />&nbsp;<br />Arrivo in Messico&nbsp; quitar Primo Giorno<br />Trasferimento libero in Hotel, sistemazione in Hotel (servizi non inclusi nel pacchetto)&nbsp; poner en evidencia esta &uacute;ltima frase &nbsp;<br />Primo giorno del Tour Mayakot&nbsp; Viaggio Canc&uacute;n-EK Balam<br />Ore 9.30 Incontro in mattinata in Hotel con il nostro incaricato che vi consegner&aacute;&nbsp; l&rsquo;auto con l&rsquo;assicurazione e i vouchers per i servizi prenotati.<br />Viaggio in auto fino al Villaggio Maya di U Najil Ek Balam (km 180)<br />Cena e pernottamento nel&nbsp; Villaggio.<br />Dal giorno della consegna dell&rsquo;auto iniziano i servizi fino al compimento dei 10 giorni previsti. <br />&nbsp; <br />Decimo giorno: Ritorno verso Canc&uacute;n<br />Riconsegna dell&rsquo;auto al nostro incaricato, secondo le modalit&aacute;&nbsp;spiegate pi&uacute;&nbsp;avanti ( alle ore 19 )<br /><br />QUOTA&nbsp; INDIVIDUALE&nbsp; DI PARTECIPAZIONE<br />Durata:&nbsp; 10 giorni e 9 notti <br />&nbsp;<br />n. 2 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;865&nbsp; / per persona<br />n. 3 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;675&nbsp; / per persona<br />n. 4 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;653&nbsp; / per persona<br />n. 5 persone&nbsp;&nbsp; Euro&nbsp;&nbsp;758&nbsp; / per persona</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>',	1,	6,	'2012-10-26 18:30:34');

DROP TABLE IF EXISTS `postimgs`;
CREATE TABLE `postimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) DEFAULT '0',
  `descripcion_ita` text,
  `descripcion_esp` text,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `postimgs` (`id`, `post_id`, `src`, `portada`, `descripcion_ita`, `descripcion_esp`, `orden`, `created`) VALUES
(1,	1,	'upload/localigay.jpg',	1,	NULL,	NULL,	1,	'2012-10-25 17:35:33'),
(2,	2,	'upload/yuctaan_religion.jpg',	1,	NULL,	NULL,	2,	'2012-10-25 17:42:13');

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` enum('Ninguno','Cuba','Yucatan') DEFAULT 'Cuba',
  `nombre_ita` varchar(255) NOT NULL,
  `nombre_esp` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `subtitulo_ita` text,
  `subtitulo_esp` text,
  `layout` enum('Izquierda','Derecha','Centro') DEFAULT 'Derecha',
  `descripcion_ita` text,
  `descripcion_esp` text,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `postimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `posts` (`id`, `tipo`, `nombre_ita`, `nombre_esp`, `slug`, `subtitulo_ita`, `subtitulo_esp`, `layout`, `descripcion_ita`, `descripcion_esp`, `activo`, `comment_count`, `postimg_count`, `created`) VALUES
(1,	'Cuba',	'Locali gay a La Habana',	'Lugares gay en La Habana',	'1_lugares-gay-en-la-habana',	'<p>Fino a non molti anni fa, non esistevano locali gay di propriet&aacute; dello Stato, e feste e spettacoli erano organizzati da privati, in modo clandestino.</p>',	'',	'Izquierda',	'<p>Da qualche tempo per&oacute;, il CENESEX&nbsp; e la direttora Mariela Castro, figlia di Ra&uacute;l Castro, hanno&nbsp; lavorato molto negli ultimi anni per far accettare la diversit&aacute; sessuale a Cuba.</p>\r\n<p>I locali di questo tipo non sono molti, per&oacute; gi&aacute; lavorano in condizioni di tranquillit&aacute;, e tutti frequentatissimi.</p>\r\n<p><strong>Caf&eacute; Cantante Mi Habana, </strong>vicinissimo alla Plaza de la Revoluci&oacute;n, spettacoli nei fine settimana.</p>\r\n<p><strong>Piano Bar Habaneciendo</strong>, centro citt&aacute;, musica e balli, un sacco di gente, bisogna fare la fila.</p>\r\n<p><strong>Antico Cabaret Las Vegas</strong>, gioved&iacute; a mezzanotte, spettacoli con l&rsquo;appoggio del Ministero della Cultura.</p>\r\n<p><strong>Pe&ntilde;a El Mejunje, </strong>a Santa Clara, spettacolo di Drag Queen.</p>\r\n<p>Il personale di questi locali, all&rsquo;inizio cautamente attento ma diffidente, ha via via accettato questo tipo di spettacoli e il cambio culturale che comporta.</p>',	'',	1,	1,	1,	'2012-10-25 17:35:32'),
(2,	'Yucatan',	'Religioni antiche e attuali',	'Religiones antiguas y actuales',	'2_religioni-antiche-e-attuali',	'<p>Vita quotidiana, arte, cultura, scienza, riti agricoli, oganizzazione, controllo sociale e politico, in una parola l&rsquo;intera civilt&aacute;&nbsp; dei Maya si basava sulla religione, dominata dal potente gruppo dei sacerdoti.</p>',	'',	'Izquierda',	'<h2>Antica religione Maya.</h2>\r\n<p>Vita quotidiana, arte, cultura, scienza, riti agricoli, oganizzazione, controllo sociale e politico, in una parola l&rsquo;intera civilt&aacute;&nbsp; dei Maya si basava sulla religione, dominata dal potente gruppo dei sacerdoti.</p>\r\n<p>Vale la pena dare qualche dettaglio.</p>\r\n<p>Religione politeista in primo luogo, dove i molti d&eacute;i erano le forze della Natura, pioggia, astri, morte, ma anche maternit&aacute;, malattie ecc. Gli d&eacute;i si mostravano agli umani anche sotto forma di animali, il giaguaro rappresentava il sole, il crotalo la fertilit&aacute; della terra, il serpente era la pioggia e il pipistrello la morte.</p>\r\n<p>Dualismo. Esistono gli d&eacute;i del bene e quelli del male, opposti ma complementari, vicini, anzi &ldquo;confinanti&rdquo;, in lotta perenne ma reciprocamente indispensabili. Non era possibile l&rsquo;esistenza&nbsp; degli uni senza quella gli altri, impossibile separarli, formavano un tutt&rsquo;uno con due volti.</p>\r\n<h2>Alcune divinit&aacute; Maya.</h2>\r\n<p>Nell&rsquo;arte Maya, venivano spesso rappresentati come esseri fantastici,&nbsp; a volte come un insieme di caratteristiche umane e parti di diversi animali.</p>\r\n<p>Hunab Ku,&nbsp; principio e misura di tutto, padre di tutti gli d&eacute;i, realt&aacute; palpitante in ogni essere o cosa, &ldquo;colui che da&rsquo; l&rsquo;unico movimento&rdquo;.</p>\r\n<p>Primo Motore, se cos&iacute; si pu&oacute; dire. Impossibile da raffigurare: essendo ovunque, non aveva forma.</p>\r\n<p>Itzamn&aacute;, grande figlio di Hunab Ku, signore dei cieli e degli astri, del giorno e quindi della notte, primo sacerdote, inventore della scrittura e dei libri. Divise le terre di Yucat&aacute;n e diede loro il nome. Divinit&aacute; generosa, mai associata a simboli di morte o distruzione.</p>\r\n<p>Kukulk&aacute;n, il Serpente Piumato, dio del vento, associato a Chaac, dio della pioggia e dei raccolti, perch&eacute; il vento manda via la pioggia.</p>\r\n<p>Yum Kaak favoriva le sorti del ma&iuml;s, cibo per eccellenza dei Maya, Ixchel controllava la medicina e Ah Puch dava la morte. Kakupakat-EK Chuah, era dio della guerra.</p>\r\n<p>C&rsquo;era persino Ixtab, dea del suicidio.</p>\r\n<p>Il libro sacro Maya, il pi&uacute; antico del continente, era il Popol Vuh, l&rsquo;unico salvato dalla furia distruttrice degli invasori europei.</p>\r\n<h2>Religioni attuali (numero di credenti)</h2>\r\n<p>Fonte: INEGI</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Cristiano-Evangeliche</strong></p>\r\n<p>&nbsp;Cattolica&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.554.000</p>\r\n<p>Protestanti e Evangelici&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;211.000</p>\r\n<p>Pentecostali&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;53.000</p>\r\n<p>Altre Evangeliche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 102.000&nbsp;</p>\r\n<p>Religioni Storiche &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;55.000</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Bibliche non evangeliche &nbsp; &nbsp;</strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n<p>Avventiste&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16.000</p>\r\n<p>Mormoni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10.500</p>\r\n<p>Testimoni di Geova&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 35.900</p>\r\n<p>&nbsp;</p>\r\n<p>Giudaismo&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;650</p>\r\n<p>Altre religioni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;1.100</p>\r\n<p>&nbsp;Senza religione&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 93.300</p>\r\n<p>&nbsp;</p>\r\n<p>Non specifica, non risponde &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;31.800</p>',	'',	1,	0,	1,	'2012-10-25 17:42:13');

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `forma_pago` varchar(255) NOT NULL,
  `hab` int(11) DEFAULT NULL,
  `num_personas` int(11) DEFAULT NULL,
  `opcion` varchar(255) DEFAULT NULL,
  `arrival` date DEFAULT NULL,
  `retorno` date DEFAULT NULL,
  `taxi_arribo` date DEFAULT NULL,
  `taxi_num_vuelo` varchar(255) DEFAULT NULL,
  `taxi_linea_aerea` varchar(255) DEFAULT NULL,
  `taxi_hab` int(11) DEFAULT NULL,
  `taxi_adicionales` int(11) DEFAULT NULL,
  `taxi_nombre_hotel` varchar(255) DEFAULT NULL,
  `taxi_direccion_hotel` varchar(255) DEFAULT NULL,
  `opc_16` tinyint(1) DEFAULT NULL,
  `opc_15` tinyint(1) DEFAULT NULL,
  `opc_13` tinyint(1) DEFAULT NULL,
  `opc_12` tinyint(1) DEFAULT NULL,
  `opc_11` tinyint(1) DEFAULT NULL,
  `opc_10` tinyint(1) DEFAULT NULL,
  `opc_9` tinyint(1) DEFAULT NULL,
  `havana_arrival` date DEFAULT NULL,
  `havana_days` int(11) DEFAULT NULL,
  `pinar_del_rio_arrival` date DEFAULT NULL,
  `pinar_del_rio_days` int(11) DEFAULT NULL,
  `cienfuegos_arrival` date DEFAULT NULL,
  `cienfuegos_days` int(11) DEFAULT NULL,
  `trinidad_arrival` date DEFAULT NULL,
  `trinidad_days` int(11) DEFAULT NULL,
  `santa_clara_arrival` date DEFAULT NULL,
  `santa_clara_days` int(11) DEFAULT NULL,
  `camaguey_arrival` date DEFAULT NULL,
  `camaguey_days` int(11) DEFAULT NULL,
  `baracoa_arrival` date DEFAULT NULL,
  `baracoa_days` int(11) DEFAULT NULL,
  `bayamo_arrival` date DEFAULT NULL,
  `bayamo_days` int(11) DEFAULT NULL,
  `santiago_de_cuba_arrival` date DEFAULT NULL,
  `santiago_de_cuba_days` int(11) DEFAULT NULL,
  `havana_arrival2` date DEFAULT NULL,
  `havana_days2` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `src` varchar(255) DEFAULT '',
  `descripcion_ita` text,
  `descripcion_esp` text,
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `testimonials` (`id`, `nombre`, `src`, `descripcion_ita`, `descripcion_esp`, `activo`, `orden`, `created`) VALUES
(1,	'Luca',	'upload/luca.jpg',	'<p>&ldquo; Cuba &eacute; splendida e divertente, ho passato momenti bellissimi, la gente delle case private &eacute; stata gentile e premurosa, &nbsp;certo ritorner&oacute;, grazie a Cuba Yucat&aacute;n, vi scriver&oacute;, Luca&rdquo;</p>',	'',	1,	1,	'2012-10-25 17:17:33'),
(2,	'Gabriele',	'upload/gabriele.jpg',	'<p>&ldquo; Mare e cultura maya, bellissimo, abbiamno fatto un gran bel giro, e con la benzina cos&iacute; a buon mercato poi ! bello, grazie, indimenticabile&nbsp;</p>',	'',	1,	2,	'2012-10-25 17:18:26'),
(3,	'Mariana',	'upload/mariana.jpg',	'<p>&ldquo; Increible la experiencia &nbsp;en Yucat&aacute;n, todo salio muy bien, es un viaje que no olvidare&rdquo;</p>',	'',	1,	3,	'2012-10-25 17:19:02'),
(4,	'Francesco',	'upload/francesco.jpg',	'<p>&ldquo; Notte a Trinidad , a base di &rdquo;mojitos&rdquo; &nbsp;e &ldquo;pi&ntilde;a colada&rdquo;, Trinidad &eacute; fantastica, grazie Edelis e Umberto di CubaYucat&aacute;n, bello &ldquo;</p>',	'',	1,	4,	'2012-10-25 17:19:47'),
(5,	'Giulia e Adriana',	'upload/giuliaeadriana.jpg',	'<p>&ldquo; Notte a Trinidad , a base di &rdquo;mojitos&rdquo; &nbsp;e &ldquo;pi&ntilde;a colada&rdquo;, Trinidad &eacute; fantastica, grazie Edelis e Umberto di CubaYucat&aacute;n, bello &ldquo;</p>',	'',	1,	5,	'2012-10-25 17:23:57'),
(6,	'Marco',	'upload/marco.jpg',	'<p>\"Gracias Umberto y Edelis por unas increibles vacaciones, quede muy contento con este viaje, ya me estoy preparando para mi segunda visita a cuba, un saludo! \"</p>',	'',	1,	6,	'2012-10-25 17:25:39');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `master` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `apellidos`, `master`, `created`) VALUES
(1,	'pulsem',	'327d3429df2c4512edc07ed9e948aa75f5d14f50',	'Master',	NULL,	1,	'2010-01-01 00:00:00'),
(2,	'admin',	'd033e22ae348aeb5660fc2140aec35850c4da997',	'Master',	NULL,	1,	'2010-01-01 00:00:00');

-- 2012-11-07 16:29:08
