-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2022 a las 14:22:41
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aerolinea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

CREATE TABLE `aviones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `longitud` float NOT NULL,
  `capacidad_pasajeros` int(11) NOT NULL,
  `capacidad_combustible` float NOT NULL,
  `disponible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`id`, `nombre`, `longitud`, `capacidad_pasajeros`, `capacidad_combustible`, `disponible`) VALUES
(1, 'Boeing 747', 70, 50, 190, 0),
(2, 'Boeing 777', 60, 50, 140, 0),
(3, 'B-52', 50, 30, 140, 1),
(4, 'MD-80', 60, 30, 140, 0),
(5, 'Airbus A380', 70, 50, 190, 1),
(6, 'Airbus A350', 60, 30, 140, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billetes`
--

CREATE TABLE `billetes` (
  `id` int(11) NOT NULL,
  `id_vuelo` int(11) NOT NULL,
  `dni_pasajero` varchar(9) NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `fecha_vencimiento` datetime NOT NULL,
  `asiento` int(11) NOT NULL,
  `peso_equipaje` double NOT NULL,
  `metodo_de_pago` varchar(50) NOT NULL COMMENT 'Efectivo, tarjeta, transferencia bancaria',
  `VIP` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `billetes`
--

INSERT INTO `billetes` (`id`, `id_vuelo`, `dni_pasajero`, `fecha_compra`, `fecha_vencimiento`, `asiento`, `peso_equipaje`, `metodo_de_pago`, `VIP`, `precio`) VALUES
(1, 1, '23942367M', '2022-01-09 08:36:09', '2022-01-11 18:00:00', 25, 7, 'tarjeta', 0, 120),
(2, 3, '23948567Q', '2021-12-29 03:47:14', '2022-01-30 08:00:00', 2, 10, 'tarjeta', 1, 203),
(3, 7, '99343356I', '2021-12-25 08:27:46', '2022-03-16 08:23:13', 36, 13, 'efectivo', 0, 245),
(4, 7, '76725399W', '2021-12-25 08:24:21', '2022-03-16 08:23:13', 37, 5, 'efectivo', 0, 200),
(5, 5, '12312367P', '2022-01-11 08:38:23', '2022-01-15 09:00:00', 19, 9, 'transferencia bancaria', 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `telefono_opcional` varchar(9) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`dni`, `nombre`, `apellido`, `telefono`, `telefono_opcional`, `email`) VALUES
('00201567H', 'Angela', 'Suarez', '279366421', '328417766', 'maecenas@icloud.edu'),
('02309847P', 'Eve', 'Munoz', '646580733', '534061247', 'eu.euismod@icloud.com'),
('02331656Z', 'Ralph', 'Nieto', '213723665', '188746295', 'congue.in.scelerisque@aol.ca'),
('02635287V', 'Summer', 'Crespo', '724689550', '387413557', 'quis.massa@aol.couk'),
('02674376F', 'Thomas', 'Sofia', '478736618', '620171432', 'lectus@google.ca'),
('02785171V', 'Cedric', 'Castillo', '661780986', '056641856', 'lobortis.class.aptent@aol.net'),
('03091984Y', 'Buckminster', 'Martinez', '284731051', '519496158', 'cursus.et@protonmail.ca'),
('03638962F', 'Moana', 'Gutierrez', '388303867', '217418117', 'fusce.aliquet.magna@hotmail.net'),
('03758280X', 'Elijah', 'Contreras', '231141243', '241368363', 'odio.phasellus@yahoo.org'),
('03782935T', 'Sebastian', 'Caballero', '178562724', '833178717', 'iaculis.quis@protonmail.couk'),
('04441963I', 'Elvis', 'Muñoz', '832165680', '862064008', 'molestie@google.org'),
('04754576K', 'Wanda', 'Casado', '186184709', '528101741', 'euismod.urna.nullam@yahoo.edu'),
('05151031I', 'Hashim', 'Nieto', '732063337', '231568849', 'ac@google.net'),
('05348245Z', 'Ora', 'Gutierrez', '223692741', '537666268', 'varius@outlook.net'),
('07161254F', 'Donna', 'Luis', '211592543', '823298435', 'molestie.tortor@hotmail.edu'),
('07174345Y', 'Halee', 'Soto', '280680060', '167354672', 'vel@yahoo.com'),
('08117436S', 'Griffin', 'Vargas', '841813630', '236834970', 'augue@protonmail.ca'),
('08147348H', 'Flavia', 'Castro', '618191484', '517414297', 'habitant.morbi.tristique@yahoo.net'),
('08438829V', 'Yeo', 'Maximo', '773368279', '656645424', 'nisl.nulla@icloud.com'),
('08475663D', 'Richard', 'Espinoza', '673985412', '139227669', 'rutrum.lorem.ac@hotmail.com'),
('08576791N', 'Derek', 'Matilde', '342722774', '120516069', 'blandit.viverra@protonmail.couk'),
('10045396D', 'Kessie', 'Contreras', '875562447', '334437228', 'mauris.quis@icloud.edu'),
('10212033S', 'Geraldine', 'Thiarre', '041570477', '762652137', 'neque.venenatis.lacus@icloud.org'),
('10227757R', 'Slade', 'Carla', '377724539', '949347369', 'ridiculus.mus@yahoo.org'),
('10823245H', 'Chancellor', 'Sepulveda', '855851364', '899826916', 'aliquet.libero@outlook.couk'),
('10852572M', 'Naomi', 'Valenzuela', '625426688', '428633540', 'suspendisse.ac.metus@aol.edu'),
('10894426Y', 'Yoshi', 'Lozano', '176553064', '618448346', 'eu.euismod@google.ca'),
('11224575Q', 'Laura', 'Muñoz', '435815992', '541426358', 'faucibus@hotmail.ca'),
('11412242G', 'Wyatt', 'Barbara', '135994442', '321662335', 'dui.fusce@yahoo.net'),
('11456661M', 'Macy', 'Castillo', '723512448', '511830388', 'lorem.fringilla@aol.com'),
('11492165P', 'Kitra', 'Perez', '228488145', '088104173', 'sodales@aol.org'),
('11526004R', 'Silas', 'Soler', '266764272', '835648846', 'enim@icloud.edu'),
('11676125F', 'Nasim', 'Cortes', '756509977', '768622828', 'aenean.egestas@aol.couk'),
('12031258Q', 'Joy', 'Ibañez', '920265120', '189318446', 'in@icloud.edu'),
('12128477M', 'Ivor', 'Emilia', '245355458', '219163525', 'eu.tellus@google.edu'),
('12182738H', 'Marsden', 'Chichi', '087913835', '487427167', 'varius.orci@aol.ca'),
('12268518D', 'Eugenia', 'Garrido', '925446265', '503253460', 'metus.sit@yahoo.org'),
('12312367P', 'Pedro', 'Ramirez', '239802341', '', 'pramirez@hotmail.com'),
('12345678A', 'Pepito', 'Gonzalez', '147258369', '', 'pepito@correo.com'),
('12345678B', 'Carlos', 'De la fuente', '741258963', '', 'carlos@correo.com'),
('12641786Y', 'Carissa', 'Flores', '386376034', '151713653', 'eu.dui@aol.edu'),
('12823751D', 'Zephania', 'Tomas', '347692342', '676734333', 'morbi.vehicula@icloud.org'),
('12951281C', 'Karleigh', 'Zavala', '752377377', '877539761', 'et.malesuada@google.couk'),
('13068485N', 'Ciara', 'Bravo', '117459474', '319125745', 'dolor.quisque@yahoo.couk'),
('13348783B', 'Denise', 'Morales', '433425512', '191678265', 'ullamcorper@aol.net'),
('13415108E', 'Angela', 'Trinidad', '587188916', '657172887', 'lorem.semper.auctor@outlook.com'),
('13474725P', 'Jacqueline', 'Herrero', '565850231', '287285824', 'mollis.lectus@google.net'),
('13685815Z', 'Sandra', 'Silva', '542177243', '882521377', 'aliquet.metus.urna@outlook.net'),
('13705061A', 'Nicole', 'Iba', '316582093', '251093487', 'aliquam@icloud.ca'),
('13748181Z', 'Jaime', 'Vidal', '192341736', '461498267', 'lacus.etiam@hotmail.couk'),
('13857525M', 'Brody', 'Jimenez', '670707144', '014201336', 'scelerisque@icloud.edu'),
('14152956G', 'Jade', 'Duran', '709448935', '647119665', 'erat.in.consectetuer@google.org'),
('14263625X', 'Sopoline', 'Daniel', '312487314', '462998711', 'vel.lectus@google.couk'),
('14366697X', 'Philip', 'Muﾑoz', '230677971', '674386272', 'iaculis.enim@google.couk'),
('14826353A', 'Dane', 'Alvarez', '634261691', '818481401', 'vestibulum.ante@aol.org'),
('14833526U', 'Marshall', 'Bravo', '233551728', '868645619', 'phasellus.elit.pede@icloud.ca'),
('15187548Q', 'Ebony', 'Fernandez', '747151387', '269875643', 'vel.convallis@hotmail.edu'),
('15222602I', 'Faith', 'Gutierrez', '818687581', '767515456', 'vitae.dolor@yahoo.ca'),
('15353418Q', 'Thaddeus', 'Ortega', '298717573', '336887235', 'proin@aol.com'),
('15375685J', 'Nigel', 'Diego', '773513756', '518742078', 'cras.eu@google.edu'),
('15473340Z', 'Sophia', 'Vicente', '687453151', '777578460', 'nulla.magna@protonmail.edu'),
('15616828C', 'Judah', 'Laura', '035893144', '546956831', 'tristique.ac@icloud.com'),
('15832235Q', 'John', 'Martinez', '158252821', '572752835', 'suspendisse.sed@aol.org'),
('15886015E', 'Ryder', 'Pascal', '979117613', '808699188', 'rutrum.urna@google.edu'),
('16335870L', 'Beatrice', 'Cano', '377346463', '144942925', 'sem.ut.dolor@hotmail.edu'),
('16643634D', 'Madison', 'Matias', '710902441', '256123151', 'in.dolor.fusce@icloud.com'),
('17122468D', 'Quynn', 'Miguel', '852443326', '874902881', 'at.lacus@hotmail.couk'),
('17392785F', 'Jermaine', 'Diego', '137144849', '354259212', 'nec.euismod@google.net'),
('18154703V', 'Sacha', 'Navarro', '872035373', '183568485', 'vitae@yahoo.net'),
('18177477I', 'Lyle', 'Diaz', '383892524', '261875156', 'lorem.sit@icloud.couk'),
('18242930I', 'Hedley', 'Martin', '196222543', '865360857', 'sodales.at@yahoo.ca'),
('18459886K', 'Harrison', 'Monserrat', '751509532', '872884568', 'molestie.in@icloud.net'),
('18658782X', 'Carla', 'Gimenez', '481846432', '882633969', 'dolor.nulla.semper@google.org'),
('18835464D', 'Isaac', 'Leon', '778173347', '884209543', 'libero.mauris.aliquam@protonmail.org'),
('18962935A', 'Desirae', 'Rocio', '068086455', '375223948', 'pede.sagittis@yahoo.ca'),
('19165217R', 'Sara', 'Soto', '318815212', '764745173', 'ligula.eu@aol.com'),
('19429708K', 'Hayden', 'Flores', '084886980', '146263665', 'nibh.lacinia@aol.ca'),
('19448290S', 'Rashad', 'Rodriguez', '182353538', '416376866', 'tempus.non@protonmail.net'),
('20713878P', 'Griffin', 'Gil', '092303819', '343861601', 'blandit.at@google.edu'),
('21017598P', 'Cole', 'Velasco', '854462946', '086328716', 'tincidunt.neque@aol.com'),
('21047040V', 'Barclay', 'Rocio', '720537562', '068216137', 'suscipit.nonummy.fusce@icloud.couk'),
('21073266O', 'Ferris', 'Gimenez', '419259756', '137971674', 'consequat.nec@aol.org'),
('21242531G', 'Grady', 'Vega', '817194214', '638324467', 'ut@hotmail.net'),
('21361925X', 'Macaulay', 'Medina', '603128566', '736631387', 'quis.lectus@aol.ca'),
('21624876G', 'Craig', 'Valentina', '335048414', '231638154', 'sem.semper@yahoo.couk'),
('21686687G', 'Tobias', 'Vargas', '474475418', '171663310', 'fusce@hotmail.com'),
('21790038G', 'Kenneth', 'Izquierdo', '534668952', '815789325', 'diam@aol.ca'),
('22127665G', 'Nola', 'Lopez', '851861318', '686127631', 'parturient.montes.nascetur@icloud.org'),
('22286396M', 'Paul', 'Luis', '166292025', '056327256', 'eget.mollis@aol.com'),
('22424275O', 'Piper', 'Fernandez', '723922166', '711507441', 'eu@icloud.com'),
('22664131W', 'Beatrice', 'Joaquin', '287348667', '413323072', 'hymenaeos.mauris@aol.ca'),
('22680382Y', 'Xenos', 'Vazquez', '853754248', '887482278', 'urna@yahoo.ca'),
('22707663G', 'Beck', 'Garcia', '325142162', '174835180', 'vehicula.pellentesque@hotmail.com'),
('23071545C', 'Echo', 'Gabriela', '165576236', '959208960', 'augue.ac.ipsum@hotmail.edu'),
('23555517L', 'Shelly', 'Redondo', '068141442', '316079134', 'consequat.enim.diam@hotmail.com'),
('23767229A', 'Charles', 'Lozano', '122755078', '660845478', 'est.mauris@yahoo.net'),
('23924298D', 'Winter', 'Blanco', '935042221', '765758015', 'quisque@aol.org'),
('23942367M', 'Jose', 'Suarez', '123321432', '', 'josuaz@outlook.com'),
('23948567Q', 'Maria', 'Fernandez', '918273645', '123321432', 'mfernadz@gmail.com'),
('24017850H', 'Arthur', 'Jose', '855238787', '832134687', 'ut.mi.duis@icloud.net'),
('24125611E', 'Ahmed', 'Gonzalez', '321884953', '158500266', 'donec@icloud.couk'),
('24153642J', 'Samantha', 'Linhares', '345321346', '', 'samlin@gmail.com'),
('24176055G', 'Troy', 'Luis', '750212416', '288316334', 'nulla.donec@protonmail.com'),
('24319513F', 'Yoshio', 'Emilia', '126423137', '788737815', 'convallis.in.cursus@hotmail.ca'),
('24338214S', 'Sacha', 'Alonso', '597082343', '976874957', 'lorem.lorem@outlook.net'),
('24423228P', 'Colorado', 'Soler', '711086357', '993169215', 'eu.arcu.morbi@hotmail.org'),
('24471165E', 'Oleg', 'Fuentes', '841064858', '149198524', 'at.iaculis@aol.ca'),
('24527379O', 'Caleb', 'Camila', '663673687', '702889089', 'et@yahoo.net'),
('24644467J', 'Chiquita', 'Blanco', '167375531', '460647412', 'aliquet.vel.vulputate@hotmail.net'),
('24867102K', 'Noelani', 'Contreras', '861326656', '737234960', 'lacinia@google.net'),
('24876771N', 'Callie', 'Dominguez', '239361113', '666510148', 'a@protonmail.couk'),
('25056774V', 'Tate', 'Francisco', '385781665', '570862478', 'tincidunt.nibh.phasellus@icloud.edu'),
('25138845R', 'Nissim', 'Gabriela', '737585419', '574747986', 'magna@hotmail.org'),
('25187593M', 'Solomon', 'Vega', '569612373', '228162773', 'maecenas.iaculis@outlook.net'),
('25460517G', 'Leigh', 'Campos', '698712552', '424777666', 'montes.nascetur@hotmail.couk'),
('25479406W', 'Baker', 'Merino', '709604241', '706107773', 'cursus@google.ca'),
('26255785D', 'Jenette', 'Lorenzo', '482224623', '318622719', 'justo.sit@aol.edu'),
('26311286V', 'Whoopi', 'Peña', '167724523', '425600242', 'duis@icloud.couk'),
('26353222U', 'Lawrence', 'Gonzalez', '242657670', '922014565', 'a@aol.com'),
('26510537H', 'Adara', 'Gonzalez', '935251346', '674713824', 'consequat.dolor@outlook.edu'),
('26575683G', 'Rudyard', 'Sepulveda', '387346056', '100718191', 'mauris.ut@yahoo.net'),
('26639741Z', 'Burton', 'Valentina', '705635675', '131313186', 'ornare.in.faucibus@icloud.net'),
('26686066M', 'Sylvia', 'Lopez', '777269827', '129418647', 'arcu@aol.ca'),
('26712773D', 'Keefe', 'Ortiz', '242458706', '409426270', 'magnis.dis@hotmail.couk'),
('26766144E', 'Adena', 'Catalina', '553721363', '237221858', 'magna@outlook.edu'),
('26989685P', 'Hilary', 'Ferrer', '643608513', '264471676', 'nisi.sem.semper@yahoo.edu'),
('27128843M', 'Fritz', 'Gonzalez', '567833616', '187271884', 'ligula@google.edu'),
('27312894G', 'Gisela', 'Aguilar', '683112270', '665441872', 'sed.dolor.fusce@hotmail.org'),
('27412870Q', 'Fatima', 'Gutierrez', '737987884', '416945040', 'libero.morbi.accumsan@protonmail.com'),
('27803664E', 'Finn', 'Jara', '184586653', '261818872', 'ipsum.curabitur@protonmail.edu'),
('28106913K', 'Jordan', 'Molina', '782582501', '701539361', 'mattis.velit@icloud.com'),
('28334213R', 'Ezra', 'Arias', '514759626', '659941731', 'eget.ipsum@aol.org'),
('28402812W', 'Athena', 'Pardo', '820541193', '634629444', 'a.nunc@protonmail.edu'),
('28550651S', 'Whitney', 'Muﾑoz', '814951928', '644149163', 'non@outlook.couk'),
('28647939T', 'Edward', 'Montero', '233275116', '771153294', 'sed.id@yahoo.edu'),
('28659220D', 'Moses', 'Vidal', '447666952', '273364565', 'porttitor.vulputate@aol.com'),
('28911494N', 'Anthony', 'Vega', '352439706', '225528727', 'nam.consequat.dolor@protonmail.com'),
('28932123B', 'Xenos', 'Cortes', '143457533', '216694092', 'et.malesuada.fames@hotmail.edu'),
('29381648L', 'Elmo', 'Andres', '155294057', '288095894', 'lobortis@aol.net'),
('29756058I', 'Iola', 'Joaquin', '157635773', '710822329', 'dictum.magna@icloud.com'),
('30053217O', 'Reese', 'Miguel', '168767764', '159405282', 'ligula.eu@aol.net'),
('30318676L', 'Wyoming', 'Rocio', '381225786', '793513105', 'ante.iaculis.nec@yahoo.org'),
('30457143F', 'Quinlan', 'Vargas', '064104862', '712268390', 'lorem.sit.amet@aol.couk'),
('30941586G', 'Chava', 'Garcia', '673157537', '657559444', 'at.iaculis.quis@protonmail.ca'),
('31431333L', 'Candice', 'Gutierrez', '021635084', '507777096', 'per.inceptos@protonmail.couk'),
('31479232P', 'Pamela', 'Garcia', '338151822', '908696236', 'non.justo@icloud.com'),
('31572270J', 'Orlando', 'Castillo', '331705516', '436758142', 'aliquam.auctor@hotmail.edu'),
('31628315S', 'Vanna', 'Lorenzo', '528363717', '397469897', 'mi@aol.org'),
('31661614Y', 'Julie', 'Medina', '270433570', '165924338', 'rhoncus.proin.nisl@aol.edu'),
('31738265K', 'Jakeem', 'Lorenzo', '677063405', '737898021', 'mauris.rhoncus@aol.ca'),
('31867244W', 'Walker', 'Vicente', '724658357', '034849262', 'odio.phasellus@yahoo.ca'),
('31953566A', 'Deborah', 'Cruz', '326519558', '612353454', 'ultricies@outlook.net'),
('32412452V', 'Tyrone', 'Cabrera', '203554827', '408486187', 'etiam.laoreet@protonmail.ca'),
('32500692V', 'Colton', 'Valenzuela', '158323373', '082201018', 'at.pede.cras@outlook.couk'),
('32675459O', 'Alfonso', 'Paz', '642640780', '385337307', 'nibh.dolor@hotmail.org'),
('32682739M', 'Ira', 'Marquez', '160352645', '184677577', 'mi.duis@outlook.couk'),
('32824472W', 'Ivy', 'Emilia', '823105102', '621449377', 'dui.nec@google.org'),
('32835317C', 'Olympia', 'Garrido', '445515341', '353557465', 'nulla.facilisi@aol.com'),
('33113125T', 'Hakeem', 'Rodriguez', '573775617', '046197305', 'elit.dictum@icloud.com'),
('33113445G', 'Amaya', 'Matias', '197621725', '447045278', 'urna.nunc@google.net'),
('33637621E', 'Cecilia', 'Montero', '419321463', '438941516', 'aliquam.iaculis.lacus@hotmail.couk'),
('33851958B', 'Quintessa', 'Nicolas', '644880764', '207642957', 'ultricies.sem.magna@outlook.com'),
('34026847M', 'Hope', 'Gomez', '356556848', '166336979', 'enim.mi.tempor@hotmail.edu'),
('34067161V', 'Xantha', 'Martinez', '699386381', '532823304', 'convallis.erat.eget@icloud.edu'),
('34154246Q', 'Ashton', 'Navarro', '403160673', '122678834', 'enim@yahoo.couk'),
('34271246L', 'Cheyenne', 'Ruiz', '828948146', '862499482', 'quisque.tincidunt.pede@yahoo.net'),
('34538725G', 'Gonzalo', 'Leite', '787349821', '', 'gonzaloleiteee@hotmail.com'),
('34727724G', 'Jared', 'Vera', '153038506', '128386642', 'tincidunt.nunc@icloud.org'),
('35173352T', 'Reed', 'Zuniga', '416674415', '317452896', 'malesuada.malesuada.integer@outlook.org'),
('35501615E', 'Chaim', 'Mora', '606571273', '025045666', 'id.erat.etiam@icloud.edu'),
('35676369L', 'Medge', 'Leon', '325186520', '434398281', 'lobortis.mauris@outlook.org'),
('35781072H', 'Sybil', 'Chichi', '394187352', '436228615', 'aliquam.eros@hotmail.org'),
('35835477T', 'Lisandra', 'ﾑez', '750345505', '337383158', 'sit@protonmail.couk'),
('36166323I', 'Oren', 'Montero', '394661780', '879777214', 'fusce.feugiat.lorem@aol.org'),
('36485783E', 'Keely', 'Casado', '978017654', '551308487', 'nisi.sem@outlook.org'),
('36511575R', 'Sawyer', 'Fernandez', '014067508', '865947448', 'augue.id@aol.com'),
('36826863Y', 'Uta', 'Cano', '467197677', '697534843', 'lobortis.quam@outlook.com'),
('36884707U', 'Marsden', 'Iba', '933249351', '912217229', 'enim@aol.com'),
('37232162J', 'Adrian', 'Catalina', '451398340', '313865617', 'sed.turpis@icloud.net'),
('37497613D', 'Caesar', 'Hidalgo', '571760154', '606343851', 'mi.lacinia@yahoo.net'),
('37624441U', 'Kadeem', 'Rubio', '555411857', '751214586', 'eu.metus@google.edu'),
('37729553U', 'Eve', 'Vila', '161765038', '956245558', 'dis.parturient@icloud.org'),
('37754754U', 'Orli', 'Gomez', '433558177', '561468358', 'vehicula.et@protonmail.net'),
('37902472K', 'Tyrone', 'Gutierrez', '935004824', '524252028', 'suscipit.nonummy.fusce@yahoo.edu'),
('38182148T', 'Craig', 'Carla', '282464647', '144697222', 'ut.nec@hotmail.net'),
('38389306G', 'Denton', 'Cano', '455885212', '355029686', 'nunc@aol.edu'),
('38424751N', 'Courtney', 'Paz', '888132791', '074444688', 'libero.morbi.accumsan@hotmail.couk'),
('38623947I', 'Hilel', 'Vidal', '363457938', '445428616', 'aenean.euismod@outlook.edu'),
('38716877E', 'Brennan', 'Leon', '403857743', '311013168', 'cum@icloud.edu'),
('38986278A', 'Buffy', 'Nunez', '311589281', '375476890', 'magnis@yahoo.net'),
('39062021V', 'Caleb', 'Reyes', '511017654', '525581723', 'vitae.nibh@icloud.org'),
('39474637S', 'Louis', 'Ignacio', '067343158', '534137241', 'amet.consectetuer.adipiscing@outlook.ca'),
('39659111T', 'Audrey', 'Valenzuela', '816267484', '336676539', 'quis.diam.luctus@outlook.net'),
('39828419D', 'Haviva', 'Bravo', '527778858', '137315202', 'sagittis.nullam@yahoo.edu'),
('41220034V', 'Macey', 'Alvarez', '761714385', '167777314', 'iaculis.aliquet@protonmail.ca'),
('41279864H', 'Joelle', 'Atlas', '621268877', '101461751', 'at.pretium@protonmail.edu'),
('41305580W', 'Rashad', 'Hernandez', '744003706', '626221357', 'dictum.magna@outlook.edu'),
('41333120V', 'Aaron', 'Bravo', '952791336', '602791631', 'enim.curabitur.massa@outlook.ca'),
('41334133O', 'Ronan', 'Diaz', '502077174', '512182916', 'curabitur.ut@aol.couk'),
('41447676L', 'James', 'Crespo', '528955286', '438689203', 'purus@outlook.com'),
('41568410B', 'Ethan', 'Gonzalez', '212712328', '328679218', 'urna.convallis@google.ca'),
('41795017F', 'Yvette', 'Julieta', '834487128', '193114255', 'a.odio.semper@protonmail.edu'),
('41838978O', 'Kaseem', 'Felipe', '864502865', '141164269', 'iaculis.enim@google.net'),
('41962722J', 'Marvin', 'Torres', '644428638', '577698212', 'diam.eu.dolor@aol.org'),
('42121474Q', 'Jesse', 'Diem', '406726112', '727158234', 'sed.dolor@yahoo.org'),
('42172216Y', 'Brenden', 'Fernanda', '087687475', '922245550', 'scelerisque.sed.sapien@protonmail.com'),
('42196857P', 'Zenia', 'Gil', '413528286', '186835622', 'elit.curabitur.sed@outlook.couk'),
('42743476G', 'Patricia', 'Garrido', '742463317', '447333118', 'tempor.erat@google.org'),
('42785399J', 'Finn', 'Crespo', '527873216', '601624384', 'morbi.non.sapien@outlook.edu'),
('43015211W', 'Dolan', 'Izquierdo', '458967875', '329566541', 'arcu.curabitur@icloud.couk'),
('43200514S', 'Idona', 'Pascal', '693044718', '530365881', 'libero.nec@google.net'),
('43712712T', 'Raja', 'Soler', '515774562', '202138764', 'tortor.nunc@yahoo.couk'),
('43733904H', 'Moana', 'Muﾑoz', '540605207', '456578916', 'donec.dignissim@hotmail.couk'),
('43756831S', 'Deanna', 'Izquierdo', '661047498', '989054778', 'massa.integer@icloud.couk'),
('43862871S', 'Madison', 'Marin', '356213573', '361841580', 'aliquam.adipiscing@google.couk'),
('44056487E', 'Sasha', 'Ruiz', '502678247', '932874539', 'gravida.molestie@protonmail.edu'),
('44330759H', 'Martha', 'Velasco', '180879286', '234113936', 'erat.eget.ipsum@outlook.com'),
('44731096V', 'Lamar', 'Diez', '212586683', '265646352', 'mus.aenean@hotmail.net'),
('44790418S', 'Price', 'Renato', '705285357', '131095870', 'hendrerit.a@aol.ca'),
('44888127G', 'Hadassah', 'Diego', '183759250', '545739284', 'pharetra.felis.eget@protonmail.ca'),
('45035978P', 'Sawyer', 'Velasco', '767164358', '151238556', 'ante@aol.couk'),
('45249982U', 'Shelley', 'Juan', '335408582', '603544760', 'luctus.vulputate.nisi@hotmail.com'),
('45346792R', 'Francesca', 'Ortiz', '907336935', '169451480', 'dui.quis@google.org'),
('45366643Q', 'Uma', 'Sanchez', '435630657', '514976376', 'eu.accumsan@aol.couk'),
('45486261N', 'Chancellor', 'Carmona', '413542593', '214841454', 'amet.consectetuer@aol.net'),
('45522573Q', 'Salvador', 'Vicente', '884821718', '796382262', 'commodo@protonmail.ca'),
('45532738A', 'Adrian', 'Torres', '771263754', '714808210', 'proin@hotmail.couk'),
('45553368M', 'Arthur', 'Martina', '883411441', '137248830', 'aliquam.iaculis@protonmail.net'),
('45622704F', 'Rana', 'Ramirez', '188205823', '452186632', 'enim.nunc@hotmail.com'),
('45728552S', 'Audra', 'Leon', '023238822', '606858357', 'suspendisse.aliquet@icloud.edu'),
('45925640W', 'Darryl', 'Gallego', '257968175', '558416226', 'auctor.non@hotmail.edu'),
('46033640C', 'Ferris', 'Carrasco', '686369745', '352113935', 'sit@icloud.edu'),
('46187212H', 'Cyrus', 'Bentlee', '663866401', '501398611', 'magnis.dis.parturient@yahoo.com'),
('46250453C', 'Judah', 'Bravo', '768717429', '830882133', 'non.sollicitudin@aol.edu'),
('46330739K', 'Cherokee', 'Merino', '462123011', '257857161', 'ultrices.mauris.ipsum@google.org'),
('46467673N', 'Tatum', 'Florencia', '885591269', '456363989', 'arcu.vestibulum.ut@aol.ca'),
('46573288K', 'Giacomo', 'Merino', '724727835', '145127454', 'in.tempus@hotmail.net'),
('46658572M', 'Whitney', 'Azizi', '507230888', '981184138', 'dui.nec.urna@yahoo.couk'),
('46821511F', 'Lane', 'Bastian', '386334765', '534286468', 'cursus.nunc@hotmail.org'),
('47220158B', 'Lani', 'Valentina', '532725216', '854729826', 'a.felis@hotmail.ca'),
('47274377V', 'Xander', 'Reyes', '432741324', '819343771', 'suspendisse.sagittis@icloud.com'),
('47390824Z', 'Linus', 'Catalina', '348666443', '595283767', 'lorem.ipsum@protonmail.ca'),
('47681345C', 'Alfonso', 'Romero', '818325214', '181265046', 'tempus@protonmail.edu'),
('47884481E', 'Chloe', 'Marti', '616017534', '287517944', 'vel.sapien@hotmail.edu'),
('48038420D', 'Lilah', 'Sofia', '675597881', '773272714', 'aliquet@icloud.com'),
('48176629Y', 'Jerry', 'Sepulveda', '771783623', '245727133', 'non.massa@aol.edu'),
('48438527N', 'Vivien', 'Carmona', '368701071', '327358179', 'accumsan.neque.et@icloud.com'),
('48511011F', 'Caesar', 'Tapia', '659788725', '064537323', 'aliquet.nec@outlook.couk'),
('48519564X', 'Vincent', 'Camila', '160734654', '476799657', 'sit.amet@outlook.edu'),
('48546377I', 'Glenna', 'Felipe', '298276824', '277632422', 'sem.ut@google.org'),
('48657556F', 'Carter', 'Diaz', '117315699', '386972557', 'sed.malesuada@yahoo.com'),
('48665175J', 'Miranda', 'Zuniga', '149447891', '399571895', 'pede@hotmail.ca'),
('48821374R', 'Frances', 'Sepulveda', '271626941', '364254368', 'ornare.tortor.at@icloud.edu'),
('48854554Z', 'Jakeem', 'Tapia', '549918577', '833434505', 'nec.tellus@aol.org'),
('48862117E', 'Bradley', 'Duran', '956914110', '315569256', 'facilisis@icloud.net'),
('48955926Z', 'Dexter', 'Redondo', '476481732', '443975237', 'blandit.viverra@protonmail.couk'),
('50467865K', 'Jared', 'Ramirez', '745551309', '046382660', 'scelerisque.neque@protonmail.com'),
('50826748D', 'Scarlet', 'Araya', '606351627', '658643092', 'aliquam.ornare.libero@google.org'),
('52168236A', 'Kim', 'Fernandez', '975181578', '017123146', 'cum.sociis@outlook.com'),
('52248746S', 'Avram', 'Atlas', '212616161', '543728977', 'massa@yahoo.edu'),
('52354869L', 'Stella', 'Vera', '422366208', '823477735', 'fringilla.euismod@yahoo.edu'),
('52367096T', 'Whitney', 'Sepulveda', '612643808', '815733185', 'vulputate.risus.a@hotmail.couk'),
('52434654O', 'Sawyer', 'Figueroa', '821227116', '386465494', 'nisi.mauris.nulla@yahoo.com'),
('52611358Y', 'Omar', 'Crespo', '156083127', '987677228', 'morbi.tristique.senectus@hotmail.org'),
('52625863R', 'Lareina', 'Garrido', '652982208', '378824072', 'ligula@yahoo.net'),
('53086264Q', 'Hector', 'Mora', '715758712', '213148191', 'convallis.dolor@outlook.com'),
('53115471X', 'Theodore', 'Ramirez', '384181015', '682881677', 'et@hotmail.org'),
('53243155C', 'Magee', 'Fernandez', '537786696', '712156814', 'aliquam.erat.volutpat@google.net'),
('53355411J', 'Quintessa', 'Sanchez', '315034531', '256997535', 'ac@google.couk'),
('53366317S', 'Celeste', 'Sanz', '571217865', '811786583', 'aliquam.rutrum.lorem@yahoo.edu'),
('53383130I', 'Dolan', 'Gomez', '534615756', '762934596', 'orci.lobortis@outlook.net'),
('53809886S', 'Julian', 'Arias', '866764785', '252486553', 'molestie@hotmail.com'),
('54103656D', 'Wing', 'Figueroa', '012483683', '932257690', 'adipiscing.ligula@aol.net'),
('54166432F', 'Ivana', 'Fernandez', '646551084', '597365202', 'eu@aol.net'),
('54263344H', 'Solomon', 'Diego', '659916337', '782598977', 'dolor.quisque.tincidunt@google.net'),
('54592786U', 'Veronica', 'Juan', '689761792', '377487816', 'ligula@yahoo.org'),
('54727634F', 'Dillon', 'Alvarez', '812846788', '853981824', 'lorem.vitae@icloud.net'),
('54741611F', 'Libby', 'Diaz', '048799350', '646223315', 'sit@aol.ca'),
('54821832I', 'Levi', 'Diez', '369493052', '173487137', 'lectus@protonmail.edu'),
('55055793Z', 'Tobias', 'Maximiliano', '089893291', '387220848', 'scelerisque@outlook.couk'),
('55261334Z', 'Murphy', 'Zuniga', '229217217', '139478741', 'semper.tellus@yahoo.com'),
('55354745G', 'Yuri', 'Monserrat', '824702577', '714680858', 'justo.nec@yahoo.edu'),
('55660431K', 'Ariel', 'Bentlee', '553603351', '216889534', 'semper@google.org'),
('55837841J', 'Orli', 'Martinez', '775627071', '410616876', 'dui.cum@outlook.ca'),
('56650480S', 'Iris', 'Hernandez', '421578522', '357439515', 'nulla.cras@google.edu'),
('56771342J', 'Candace', 'Sanchez', '280624883', '401727443', 'ipsum.non@outlook.couk'),
('56838637I', 'Zane', 'ﾑez', '984791854', '476788124', 'amet@icloud.couk'),
('57127981T', 'Micah', 'Atlas', '708355653', '282666671', 'nam.ac@protonmail.com'),
('57164740F', 'Addison', 'Andres', '835317442', '666872183', 'lorem@yahoo.edu'),
('57367947E', 'Orla', 'Vasquez', '540838687', '931384255', 'eu.enim@aol.ca'),
('57485662B', 'Omar', 'Herrera', '642916865', '321575982', 'dui.suspendisse.ac@aol.edu'),
('57602588Y', 'Francis', 'Molina', '766330341', '185004388', 'etiam.imperdiet.dictum@yahoo.org'),
('57686707G', 'Lucius', 'Bravo', '612541231', '311565411', 'fusce.dolor.quam@hotmail.net'),
('57781867E', 'Allistair', 'Herrera', '396453523', '288523285', 'duis.elementum@google.couk'),
('57873177N', 'Althea', 'Marin', '550610841', '874681606', 'enim@outlook.couk'),
('57989372X', 'Allistair', 'Pascual', '561256731', '443487487', 'luctus.sit.amet@yahoo.net'),
('58891445W', 'Whilemina', 'Santos', '271586468', '236590616', 'diam@outlook.com'),
('59280381N', 'Lamar', 'Juan', '137345324', '010156176', 'proin.vel@yahoo.ca'),
('60164225R', 'Graham', 'Garcia', '473116437', '136162829', 'ornare.in@hotmail.net'),
('60232554X', 'Gay', 'Renato', '288221877', '219831203', 'orci.consectetuer@protonmail.ca'),
('60357808B', 'Nash', 'Carmona', '663583244', '765368133', 'in.aliquet@protonmail.couk'),
('60492328R', 'Zoe', 'Gil', '923673857', '345678621', 'at@hotmail.ca'),
('60562726R', 'Kyle', 'Blanco', '176172786', '515121375', 'odio.semper@outlook.com'),
('60588237M', 'Zephania', 'Julieta', '658484431', '615248752', 'a.ultricies@google.com'),
('61148422S', 'Dominique', 'Aguilar', '201256872', '330494924', 'egestas@icloud.com'),
('61167766Y', 'Rebecca', 'Munoz', '757147790', '408955277', 'at@yahoo.net'),
('61372294C', 'Christopher', 'Saez', '046467767', '127575324', 'nibh.aliquam@protonmail.ca'),
('61561529I', 'Chester', 'Maria', '486581991', '096528953', 'eget.ipsum@aol.net'),
('61582314Y', 'Audrey', 'Nieto', '193705716', '421413085', 'mauris.a@outlook.couk'),
('61966508Y', 'Valentine', 'Contreras', '158275536', '942960414', 'natoque@icloud.net'),
('62121178D', 'Thaddeus', 'Flores', '958272447', '375820203', 'nulla@protonmail.org'),
('62145437X', 'Elliott', 'Nicolas', '530855597', '658050742', 'hendrerit.consectetuer.cursus@protonmail.org'),
('62158847D', 'Madeson', 'Diez', '728616845', '753116757', 'id.mollis@aol.net'),
('62214979L', 'Kevin', 'Araya', '246324375', '350239206', 'ante.maecenas@icloud.com'),
('62223416Y', 'Gwendolyn', 'Ramirez', '280519582', '778453620', 'accumsan.interdum@hotmail.com'),
('62242354V', 'Keefe', 'Pastor', '655204662', '553362880', 'sollicitudin.orci@yahoo.com'),
('62289462I', 'Caleb', 'Castro', '723631295', '874385683', 'lorem@aol.couk'),
('62675627I', 'Dieter', 'ﾑez', '552190273', '952500430', 'nulla@aol.couk'),
('62696746W', 'Astra', 'Alonso', '443521657', '328786871', 'vel.arcu@google.net'),
('62823492T', 'Keefe', 'Martin', '648924171', '647437198', 'fusce.mi@protonmail.edu'),
('62856067P', 'Leroy', 'Soto', '748028457', '128256585', 'scelerisque.dui.suspendisse@aol.org'),
('63051278N', 'Renee', 'Rocio', '473664643', '373186863', 'morbi.accumsan@hotmail.ca'),
('63068974N', 'Mona', 'Gonzalez', '725138716', '284172555', 'quam.dignissim.pharetra@yahoo.ca'),
('63231877Z', 'Hiram', 'Morales', '717267401', '507034024', 'duis.volutpat.nunc@aol.com'),
('63284550K', 'Myra', 'Vicente', '711140975', '773455579', 'et.magnis@aol.com'),
('63317265W', 'Teegan', 'Vega', '437994754', '438208336', 'dolor.sit@protonmail.couk'),
('63362144M', 'Isaac', 'Ruiz', '513538241', '603342238', 'eget.venenatis@icloud.edu'),
('63586256I', 'Axel', 'Zavala', '245054521', '116419614', 'nulla.vulputate@icloud.couk'),
('63684474T', 'Elliott', 'Peña', '654787637', '748836685', 'justo.praesent@aol.com'),
('63701145P', 'Kaitlin', 'Marquez', '033885727', '142440587', 'nullam.nisl.maecenas@yahoo.net'),
('63911160X', 'Macey', 'Rivera', '267032587', '350393110', 'aliquet.diam@outlook.couk'),
('64138751C', 'Jennifer', 'Azizi', '524485847', '110818727', 'laoreet.lectus@protonmail.com'),
('64348168N', 'Indigo', 'Mendez', '122375108', '429803563', 'lacus@aol.ca'),
('65387388K', 'Candice', 'Gimenez', '137027688', '605733115', 'risus.varius@aol.couk'),
('65411548O', 'Kim', 'Vila', '111042310', '332668765', 'ut.nulla@yahoo.edu'),
('65843418C', 'Alden', 'Vicente', '903830486', '485402775', 'nec.metus@google.edu'),
('65856114A', 'Kennedy', 'Martinez', '310411785', '963668361', 'risus.varius@google.ca'),
('65901028E', 'Flavia', 'Paz', '263312505', '423076566', 'nulla.eget.metus@icloud.com'),
('66018666D', 'James', 'Cortes', '984517861', '755131584', 'mattis.cras.eget@yahoo.couk'),
('66502738I', 'Rhiannon', 'Soler', '886793844', '415122357', 'arcu.curabitur@google.net'),
('66617225C', 'Kelsey', 'Arias', '535821780', '501347923', 'proin.mi@hotmail.couk'),
('66617355O', 'Macon', 'Castillo', '206488577', '415347502', 'curabitur.massa@icloud.com'),
('66652102K', 'Lance', 'Gimenez', '169715212', '266624084', 'risus@google.org'),
('66839153D', 'Neve', 'Martinez', '940518605', '172269570', 'non.enim.commodo@google.com'),
('67185664G', 'Hakeem', 'Castillo', '745748254', '443847580', 'luctus.felis.purus@protonmail.edu'),
('67681538N', 'Keaton', 'Reyes', '189802815', '364075224', 'tempor.augue.ac@hotmail.net'),
('67875756N', 'Daphne', 'Gomez', '186608231', '425371091', 'at.velit@outlook.com'),
('67896862O', 'Tyrone', 'Reyes', '576773277', '872122445', 'velit.dui@yahoo.org'),
('67951618R', 'Dexter', 'Torres', '548437261', '768290935', 'nulla.integer.vulputate@hotmail.com'),
('68146521B', 'Farrah', 'Camila', '062464824', '651646247', 'cras.lorem.lorem@icloud.ca'),
('68414652P', 'Todd', 'Bravo', '727871526', '525348332', 'massa.lobortis.ultrices@aol.edu'),
('68511571D', 'Lucy', 'Mendez', '657257068', '640365926', 'malesuada@protonmail.edu'),
('68534953W', 'Hiroko', 'Cabrera', '776203053', '516440717', 'dictum.eu@yahoo.edu'),
('68572144O', 'Walker', 'Mora', '273437630', '309545656', 'at.nisi.cum@protonmail.ca'),
('68742182C', 'Cooper', 'Emilia', '615212071', '188534722', 'nonummy.ipsum@yahoo.org'),
('68911786T', 'Jared', 'ﾑez', '998324872', '145379631', 'ac.mattis@aol.com'),
('68956226N', 'Preston', 'Carmona', '070685572', '137427578', 'porta.elit@aol.org'),
('69667299V', 'Chloe', 'Fernandez', '466126395', '285821435', 'adipiscing.enim.mi@outlook.com'),
('69725341G', 'Janna', 'Delgado', '475806062', '361615123', 'amet.luctus@yahoo.edu'),
('69782148T', 'Cody', 'Araya', '955478540', '182271722', 'tortor.nunc@protonmail.edu'),
('70153684F', 'Hyatt', 'Tapia', '658728396', '477036344', 'lorem.ac@aol.couk'),
('70195483J', 'Hakeem', 'Rojas', '632572176', '168315139', 'neque.sed@outlook.org'),
('70341166J', 'Phelan', 'Jara', '178838317', '661043638', 'orci.lobortis@hotmail.com'),
('70952239A', 'Solomon', 'Thiarre', '753121266', '464515413', 'vitae.aliquam@yahoo.ca'),
('71137381V', 'Quinn', 'Gomez', '033097397', '766841264', 'dui.cras.pellentesque@google.ca'),
('71504616M', 'Brock', 'Medina', '258452855', '464828261', 'phasellus.fermentum.convallis@icloud.edu'),
('71524547H', 'Denton', 'Garrido', '747228210', '203296498', 'massa.integer.vitae@google.com'),
('71552250F', 'Jacob', 'Sanchez', '535614243', '582040664', 'metus.aenean@yahoo.net'),
('71579379L', 'Merrill', 'Delgado', '361687469', '899863085', 'magna.nec@icloud.org'),
('71579622I', 'Isabella', 'Jara', '672956986', '655621891', 'dui.lectus.rutrum@yahoo.edu'),
('71582859P', 'Lester', 'Moreno', '879142734', '814085316', 'nunc.ullamcorper@protonmail.ca'),
('71638065X', 'Madonna', 'Izquierdo', '339185778', '534726441', 'risus.varius@google.edu'),
('71743156Z', 'Madison', 'Cortes', '686524558', '367365757', 'aliquet.diam@aol.edu'),
('71767745E', 'Noah', 'Reyes', '810425263', '335441781', 'non.dapibus.rutrum@hotmail.ca'),
('72281510V', 'Karen', 'Esteban', '870428856', '429995724', 'sed.diam.lorem@protonmail.edu'),
('72296888F', 'Kyle', 'Castro', '541866095', '213282553', 'erat.etiam@yahoo.ca'),
('72503998B', 'Neil', 'Figueroa', '671525613', '929362654', 'a.feugiat@aol.ca'),
('72553582W', 'Flynn', 'Ignacio', '260582748', '549307918', 'sagittis@yahoo.ca'),
('72731228T', 'Latifah', 'Espinoza', '545222833', '096790543', 'vitae.sodales.at@hotmail.ca'),
('72766193S', 'Rahim', 'Perez', '622652822', '611966783', 'dolor.dolor@protonmail.org'),
('72816937L', 'Fleur', 'Soto', '525665073', '661097492', 'semper@protonmail.couk'),
('72830113F', 'Benedict', 'Cano', '777332177', '833615108', 'lobortis@protonmail.com'),
('72871429F', 'Jamalia', 'Vega', '724272227', '249233567', 'quam@google.net'),
('73175557I', 'Quamar', 'Calvo', '221192882', '686954730', 'risus.in.mi@outlook.edu'),
('73178703A', 'Coby', 'Benjamin', '610564527', '211132856', 'egestas.rhoncus@protonmail.com'),
('73200242U', 'Graham', 'Carrasco', '282212252', '512775238', 'dictum@protonmail.net'),
('73201201W', 'Amaya', 'Jose', '267685283', '612574629', 'erat.vitae@outlook.com'),
('73380642Q', 'Cyrus', 'Fuentes', '011302499', '716023743', 'feugiat@hotmail.org'),
('73408433P', 'Wilma', 'Ignacio', '382187581', '646540175', 'ac.fermentum.vel@protonmail.org'),
('73425310P', 'Ivor', 'Cortes', '813445508', '533685549', 'nisl@aol.net'),
('73486435F', 'Dane', 'Fuentes', '951367231', '467855396', 'etiam.gravida@protonmail.edu'),
('73887859X', 'Constance', 'Vera', '578186376', '249748476', 'non.arcu@yahoo.org'),
('74251875M', 'Tucker', 'Thiarre', '952529176', '141006478', 'aliquet@google.org'),
('74495057P', 'Slade', 'Martina', '848348771', '615323175', 'suscipit.nonummy@protonmail.com'),
('74548772U', 'Tanek', 'Gabriela', '233197786', '311421648', 'integer@protonmail.couk'),
('74834709X', 'Mechelle', 'Cano', '497124308', '762702745', 'phasellus@google.net'),
('75244355I', 'Alea', 'Castro', '519274458', '776708625', 'nullam.suscipit@aol.edu'),
('75320917L', 'Perry', 'Vidal', '651683161', '343335746', 'neque.sed.eget@yahoo.org'),
('75395245R', 'Fleur', 'Vidal', '503928014', '790697004', 'hendrerit.id.ante@hotmail.com'),
('75497075I', 'Caldwell', 'Benjamin', '770334873', '481292406', 'volutpat.nunc@google.edu'),
('75877861C', 'Kelly', 'Gabriel', '273775174', '271499573', 'mauris.integer.sem@hotmail.com'),
('76159514L', 'Hilda', 'Soler', '014978883', '235240747', 'ante.blandit@yahoo.edu'),
('76353136L', 'Noble', 'Martin', '292462485', '373850492', 'donec.egestas.aliquam@aol.couk'),
('76437524Z', 'Jolie', 'Gutierrez', '826654074', '086359616', 'nunc.ullamcorper@protonmail.org'),
('76605531H', 'Nomlanga', 'Gonzalez', '214414166', '218812884', 'magna@outlook.edu'),
('76640130G', 'Dahlia', 'Esteban', '936298416', '222635588', 'ligula@protonmail.net'),
('76716455D', 'Shafira', 'Maximiliano', '151583469', '264661305', 'nullam.enim@hotmail.ca'),
('76719015G', 'Mallory', 'Thiarre', '512234221', '827735928', 'in.lorem@icloud.couk'),
('76725399W', 'Macarena', 'Torres', '898767456', '454643781', 'macatorres@outlook.com'),
('76732214N', 'Laurel', 'Rivera', '733574184', '373359333', 'ut.lacus@google.org'),
('76740665R', 'Abra', 'Emilia', '448233445', '521488447', 'tincidunt.orci@outlook.ca'),
('77059177E', 'Aphrodite', 'Cristobal', '733876058', '020813349', 'ultrices.vivamus@outlook.edu'),
('77146249P', 'Macy', 'Soler', '562723335', '676136752', 'ligula.aliquam.erat@icloud.net'),
('77371744A', 'Liberty', 'Matias', '763736281', '613212704', 'suspendisse@protonmail.edu'),
('77734857H', 'Hayley', 'Azizi', '238635818', '105733813', 'volutpat.nulla@outlook.ca'),
('78152138W', 'Jaden', 'Perez', '722116682', '422783862', 'suspendisse.aliquet.sem@google.org'),
('78172721O', 'Arthur', 'Peña', '403450460', '821692431', 'adipiscing.elit@google.net'),
('78303168U', 'Cally', 'Bentlee', '671743588', '228676415', 'orci.luctus@icloud.couk'),
('78516323J', 'Harlan', 'Suarez', '823147579', '804335018', 'consectetuer.rhoncus.nullam@icloud.com'),
('78586862O', 'Molly', 'Morales', '486480082', '351344892', 'natoque@yahoo.couk'),
('78682877O', 'Sheila', 'Soler', '821646667', '610461554', 'dictum.eleifend.nunc@aol.net'),
('78735629X', 'Laica', 'Suarez', '878753425', '123321432', 'laicasuaaarez@outlook.com'),
('79126426P', 'Yeo', 'Ramos', '277534581', '615728343', 'nec.luctus.felis@yahoo.couk'),
('79314154O', 'Ursa', 'Sebastian', '178796371', '116570851', 'mi.ac.mattis@icloud.couk'),
('79788578Z', 'Graiden', 'Cabrera', '945943263', '230588394', 'eu@hotmail.edu'),
('79836673C', 'Kevyn', 'Javier', '082363705', '268382853', 'cursus.vestibulum.mauris@protonmail.ca'),
('79863135R', 'Zachary', 'Carolina', '155106321', '427632482', 'tempus.non.lacinia@hotmail.couk'),
('80628985B', 'Astra', 'Herrera', '101286045', '075345626', 'lobortis@icloud.org'),
('80924026M', 'Lydia', 'Tapia', '718586645', '064317386', 'vitae@protonmail.couk'),
('81151952E', 'Bert', 'Morales', '821939188', '841444737', 'nullam@hotmail.net'),
('81469814S', 'Maite', 'Monserrat', '869472211', '473516785', 'mi.pede@google.ca'),
('81666083H', 'Miranda', 'Rodriguez', '976360394', '781750568', 'eleifend.non.dapibus@protonmail.edu'),
('81848608D', 'Devin', 'Azizi', '286048654', '594241965', 'felis@yahoo.net'),
('82621771W', 'Byron', 'Magdalena', '114723878', '436159397', 'dui@yahoo.com'),
('82684647C', 'Octavius', 'Fuentes', '779840664', '634688180', 'magnis@google.ca'),
('82766874I', 'Mannix', 'Moreno', '156562028', '824838227', 'metus.sit@aol.com'),
('83312436Y', 'Clarke', 'Mateo', '018296053', '344760976', 'quis.massa@protonmail.net'),
('83470876E', 'Graham', 'Soler', '644961055', '582180719', 'feugiat@protonmail.couk'),
('83818853Z', 'Wesley', 'Cortes', '074013456', '888872633', 'egestas.duis@yahoo.edu'),
('83876604W', 'Heather', 'Diego', '526418976', '052051882', 'quam.quis.diam@google.ca'),
('84168957C', 'Wylie', 'Campos', '910898152', '796466298', 'sit.amet@icloud.net'),
('84285883X', 'Paula', 'Hidalgo', '988828306', '056430473', 'nunc.mauris@outlook.org'),
('84334759H', 'Hollee', 'Delgado', '337097717', '361513497', 'montes@outlook.com'),
('84677538K', 'Aquila', 'Testudines', '822516254', '327001069', 'fringilla.euismod@google.com'),
('84718941Z', 'Griffin', 'Garrido', '791526423', '267572132', 'laoreet.libero@google.org'),
('84778144K', 'Brynne', 'Nunez', '304525088', '255226056', 'elit@hotmail.ca'),
('84784461O', 'Moses', 'Bravo', '815927379', '595605016', 'semper.nam@hotmail.ca'),
('84863658L', 'Owen', 'Gomez', '294825673', '320736612', 'aliquet.libero.integer@hotmail.couk'),
('85105775M', 'Britanney', 'Moya', '534367718', '234523131', 'lorem.vehicula.et@aol.org'),
('85112292E', 'Cruz', 'Martina', '598412788', '158188725', 'augue.scelerisque@icloud.ca'),
('85123413S', 'Quynn', 'Fuentes', '122444865', '308762615', 'luctus@icloud.com'),
('85133726G', 'Lenore', 'Fuentes', '305619141', '706155626', 'luctus.sit@outlook.net'),
('85252403E', 'Burke', 'Gutierrez', '536747168', '724265512', 'ornare.in@hotmail.net'),
('85288173C', 'Christian', 'Figueroa', '146584507', '358396939', 'velit.justo.nec@hotmail.org'),
('85307457Q', 'Akeem', 'Rodriguez', '594664687', '652002945', 'sed.neque@hotmail.edu'),
('85752242R', 'Illana', 'Gutierrez', '889486224', '746261441', 'mauris.blandit.enim@hotmail.org'),
('85852475V', 'Emma', 'Silva', '838362737', '647716221', 'at@outlook.edu'),
('86147176R', 'Leonard', 'Perez', '352133114', '773810650', 'semper.cursus@google.edu'),
('86370236K', 'Hope', 'Bastian', '988863396', '756791318', 'phasellus@google.net'),
('86523889M', 'Martin', 'Hidalgo', '316010565', '065278763', 'tincidunt.aliquam.arcu@google.edu'),
('86582261P', 'Justine', 'Cabrera', '106622210', '528487316', 'nec.tellus@aol.com'),
('87095039A', 'Aquila', 'Ramos', '443709582', '526784053', 'vitae.dolor.donec@aol.ca'),
('87463031H', 'Kaye', 'Bravo', '202876141', '865445363', 'ut.semper@yahoo.edu'),
('87464694L', 'Kennan', 'Alonso', '661974553', '332313413', 'ut.semper.pretium@protonmail.edu'),
('87584384U', 'Nehru', 'Diego', '081135885', '720041335', 'ac.turpis@yahoo.net'),
('87709845D', 'Jana', 'Sanchez', '316761754', '227616434', 'proin.eget@google.edu'),
('87858224Q', 'Gay', 'Iba', '361328003', '723438098', 'molestie.orci@yahoo.org'),
('87919824M', 'May', 'Soto', '576842187', '829992155', 'mus.donec.dignissim@icloud.net'),
('88165186P', 'Daquan', 'Gonzalez', '738462898', '214001273', 'orci.donec.nibh@hotmail.edu'),
('88247262D', 'Lane', 'Velasco', '564345882', '824299854', 'sociis.natoque@aol.org'),
('88444118D', 'Hoyt', 'Castro', '276243015', '635727141', 'luctus.et@outlook.org'),
('88477497M', 'Orla', 'Gomez', '349218212', '582616311', 'aliquet@hotmail.edu'),
('88606334A', 'Raja', 'Vicente', '559432615', '511419138', 'iaculis@protonmail.net'),
('88615882X', 'Curran', 'Garcia', '782011376', '285142975', 'eros.proin@google.org'),
('88986672F', 'Eugenia', 'Soler', '564410542', '783987929', 'sapien.imperdiet.ornare@hotmail.net'),
('88994438B', 'Maya', 'Gutierrez', '868274176', '246458551', 'ullamcorper.duis@yahoo.ca'),
('89254580K', 'Destiny', 'Vergara', '836326147', '585448125', 'aliquam.vulputate.ullamcorper@aol.net'),
('89446357U', 'Chava', 'Soler', '501213145', '511544346', 'proin.nisl.sem@aol.org'),
('89613465R', 'Kim', 'Gil', '784628111', '842734840', 'vitae.erat.vel@google.com'),
('89616651L', 'Lilah', 'Montero', '760070975', '812154112', 'mollis.phasellus.libero@hotmail.ca'),
('90713297F', 'Jena', 'Vera', '894142526', '709514719', 'neque.nullam@hotmail.edu'),
('91841058S', 'Selma', 'Benjamin', '378051588', '675485626', 'non.luctus@google.couk'),
('91884345L', 'Randall', 'Augustin', '948880498', '145173418', 'natoque.penatibus.et@outlook.ca'),
('92431441L', 'Edward', 'Sofia', '376844466', '477353719', 'etiam.vestibulum@protonmail.edu'),
('92524817I', 'Iola', 'Munoz', '850432759', '639968879', 'nec.tellus@yahoo.com'),
('92562057C', 'Kristen', 'Trinidad', '846183826', '537285748', 'at.risus.nunc@hotmail.couk'),
('92582437I', 'Phillip', 'Catalina', '676247258', '282374776', 'ut.ipsum@icloud.org'),
('92806850K', 'Lance', 'Carrasco', '438534703', '322315107', 'suspendisse.sagittis.nullam@aol.ca'),
('93277751J', 'Jackson', 'Valentina', '170631814', '487320564', 'per.conubia.nostra@yahoo.couk'),
('93299747D', 'Kenneth', 'Valenzuela', '560117469', '531517451', 'elementum.lorem@icloud.net'),
('94163698L', 'Slade', 'Hernandez', '160518690', '087265389', 'eget@outlook.ca'),
('94267632R', 'Virginia', 'Pia', '148903515', '772458578', 'nulla.dignissim@google.net'),
('94433751B', 'Benjamin', 'Mateo', '434231860', '931677423', 'ultrices.a@outlook.com'),
('94687067P', 'Slade', 'Rojas', '410613597', '621560619', 'amet.diam@outlook.com'),
('95275224C', 'Cassady', 'Lopez', '146682811', '413882784', 'ipsum@outlook.com'),
('95748878M', 'Byron', 'Cortes', '617706641', '152381537', 'interdum.libero@outlook.org'),
('95810947U', 'Katell', 'Ramirez', '088229466', '141362461', 'facilisis.non@outlook.couk'),
('95824122X', 'Alma', 'Vicente', '982723326', '406223596', 'magna.duis@yahoo.ca'),
('96387721W', 'Camille', 'Soto', '561853031', '696558169', 'sodales.at.velit@icloud.net'),
('96460468J', 'Amos', 'Zavala', '173625607', '023822525', 'mauris.nulla@google.edu'),
('97109014U', 'Lilah', 'Nuﾑez', '732154106', '062073747', 'feugiat.lorem.ipsum@yahoo.net'),
('97138857E', 'Freya', 'Vazquez', '762827177', '371232684', 'proin@google.com'),
('97663626X', 'Drake', 'Soto', '614469303', '212515425', 'enim.nunc@icloud.couk'),
('97847416M', 'Ingrid', 'Rodriguez', '396267464', '404144183', 'imperdiet.dictum@aol.edu'),
('98074486V', 'Mari', 'Paula', '454388952', '554728114', 'eget@google.couk'),
('98310934J', 'Lesley', 'Delgado', '359567254', '777275641', 'nec.urna@hotmail.net'),
('98735470O', 'Alexandre', 'Gomez', '435235678', '', 'alexandree@correo.com'),
('98747817W', 'Naida', 'Tomas', '122665826', '613292673', 'convallis.erat.eget@hotmail.org'),
('99185272V', 'Lana', 'Marquez', '467273678', '385399085', 'diam.vel.arcu@outlook.couk'),
('99343356I', 'Marcos', 'Torres', '454643781', '', 'marctorres@outlook.com'),
('99716373B', 'Carlos', 'Reyes', '801612342', '686753314', 'adipiscing.elit@protonmail.couk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id` int(11) NOT NULL,
  `id_avion` int(11) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `fecha_llegada` datetime NOT NULL,
  `distancia` float NOT NULL,
  `fumadores` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `id_avion`, `origen`, `destino`, `fecha_salida`, `fecha_llegada`, `distancia`, `fumadores`, `activo`) VALUES
(1, 1, 'Madrid', 'Suiza', '2022-01-18 15:30:00', '2022-01-18 18:00:00', 1247, 1, 0),
(2, 1, 'Suiza', 'Alemania', '2022-01-27 13:00:00', '2022-01-27 14:30:00', 660, 0, 0),
(3, 1, 'Berlín', 'Madrid', '2022-01-30 08:00:00', '2022-01-30 11:00:00', 1860, 0, 0),
(4, 6, 'Barcelona', 'Madrid', '2022-01-13 06:00:00', '2022-01-03 07:20:00', 590, 1, 0),
(5, 2, 'Madrid', 'Santiago', '2022-01-15 09:00:00', '2022-01-15 10:30:00', 550, 1, 0),
(6, 3, 'Oviedo', 'Madrid', '2022-01-12 07:00:00', '2022-01-12 08:30:00', 420, 1, 0),
(7, 5, 'Santiago de Chile', 'Cancún', '2022-03-16 08:27:13', '2022-03-16 16:44:17', 6261.24, 1, 0),
(8, 4, 'Madrid', 'Berlin', '2022-01-14 01:00:00', '2022-01-14 13:00:00', 1250.5, 0, 1),
(9, 6, 'Suiza', 'Berlin', '2022-01-14 00:30:00', '2022-01-14 04:00:00', 4800, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aviones`
--
ALTER TABLE `aviones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `billetes`
--
ALTER TABLE `billetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vuelo` (`id_vuelo`),
  ADD KEY `dni_pasajero` (`dni_pasajero`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_avion` (`id_avion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aviones`
--
ALTER TABLE `aviones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `billetes`
--
ALTER TABLE `billetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `billetes`
--
ALTER TABLE `billetes`
  ADD CONSTRAINT `billetes_ibfk_1` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id`),
  ADD CONSTRAINT `billetes_ibfk_2` FOREIGN KEY (`dni_pasajero`) REFERENCES `pasajeros` (`dni`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
