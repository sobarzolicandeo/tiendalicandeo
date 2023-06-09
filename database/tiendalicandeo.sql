-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-06-2023 a las 16:24:33
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendalicandeo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(17, 8, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Yerba Mate', 'yerba-mate'),
(2, 'Mates', 'mates'),
(3, 'Bombillas', 'bombillas'),
(4, 'Accesorios', 'accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 1),
(2, 2, 12, 1),
(3, 2, 8, 1),
(4, 3, 1, 1),
(5, 4, 2, 1),
(6, 4, 14, 1),
(9, 6, 2, 1),
(10, 7, 7, 1),
(11, 8, 2, 1),
(12, 9, 16, 1),
(13, 10, 8, 1),
(14, 11, 8, 1),
(15, 12, 16, 1),
(16, 13, 16, 1),
(17, 14, 14, 1),
(18, 15, 16, 1),
(19, 16, 14, 1),
(20, 17, 8, 1),
(21, 18, 2, 1),
(22, 20, 2, 1),
(23, 21, 2, 1),
(24, 22, 2, 1),
(25, 23, 20, 1),
(26, 24, 2, 1),
(27, 25, 2, 1),
(28, 26, 1, 1),
(29, 27, 18, 1),
(30, 28, 6, 1),
(31, 29, 32, 1),
(32, 30, 1, 1),
(33, 30, 7, 1),
(34, 31, 1, 1),
(35, 31, 8, 1),
(36, 32, 1, 2),
(37, 32, 8, 1),
(38, 33, 2, 1),
(39, 33, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Playadito 500g ', '<p>Yerba Mate Playito. Est&aacute; considerada &oacute;ptima para obtener un producto seleccionado que permita una infusi&oacute;n o mate de rico sabor, suave y rendidor.</p>\r\n', 'playadito-500g', 3990, 'playadito-500g.jpg', '2023-06-24', 5),
(2, 1, 'Rosamonte 500g', '<p>Yerba mate elaborada con palo, libre de gluten. Un producto cl&aacute;sico de la industria argentina, preferido por los chilenos.</p>\r\n', 'rosamonte-500g', 3990, 'rosamonte-500g.jpg', '2023-06-24', 3),
(3, 1, 'Amanda 500g', '<p>Yerba Mate tradicional. La yerba contiene vitaminas B1 y B2, adem&aacute;s de amino&aacute;cidos, hierro, sodio, potasio y magnesio. El consumo diario de yerba mate aporta al sistema inmunol&oacute;gico debido a que contiene fotoqu&iacute;micos que lo estimulan mitigando el cansancio mental y f&iacute;sico, gracias a su componente principal que es la mate&iacute;na.<br />\r\nIngredientes: Yerba Mate.<br />\r\nSin Sellos.</p>\r\n', 'amanda-500g', 3990, 'amanda-500g.jpg', '2023-06-24', 2),
(5, 3, 'Bombilla Cuchara', '<p>Bombilla acero inoxidable. Esmaltado en horno, no se pelan con facilidad. Medida 16 cm&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'bombilla-cuchara', 5000, 'bombilla-cuchara.jpg', '2023-06-24', 1),
(6, 3, 'Bombilla Color', '<p>La Bombilla de mate posee&nbsp;un filtro especial para que no pasen trozos de yerba mate. Esta bombilla es un complemento que podr&aacute;s utilizar en diferentes actividades de tu vida.&nbsp;Sencilla de transportar en cualquier equipo de mate.&nbsp;</p>\r\n', 'bombilla-color', 2990, 'bombilla-color.jpg', '2023-06-16', 1),
(7, 2, 'Mate Vidrio Templado', '<p>Mate de vidrio templado forrado. Este mate no requiere ser curado antes de ser utilizado.&nbsp;<br />\r\nSe puede utilizar para infusiones calientes y fr&iacute;as. No conserva olor ni sabor. F&aacute;cil de lavar. Medidas: 8 x 7cm (alto x di&aacute;metro boca del mate) Capacidad: 220/230ml</p>\r\n', 'mate-vidrio-templado', 7000, 'mate-vidrio-templado.jpg', '2023-06-08', 1),
(8, 2, 'Mate Mateo Original', '\r\n<td colspan=\"3\" style=\"background-color:#ededed; height:48.0pt; text-align:left; vertical-align:top; white-space:normal; width:380pt\">Material t&eacute;rmico; mantiene la temperatura de la yerba sin transmitir calor a la mano. Es flexible e irrompible, que lo convierte en el mate ideal para transportar. 100% Silicona. Y libre de BPA, Carga aproximadamente: 40gr. de yerba.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n		\r\n', 'mate-mateo-original', 10000, 'mate-mateo-original.jpg', '2023-06-14', 2),
(10, 4, 'Tapa Mate', '<p>Tapamate es una tapa de silicona universal que se adapta al mate.<br />\r\nEst&aacute; dise&ntilde;ado para tapar el mate luego de utilizarlo y as&iacute; evitar que la yerba se vuelque dentro de nuestro bolso, mochila o auto.<br />\r\nAl estar hecho de silicona se ajusta a todos tus mates, es resistente y tiene una larga vida &uacute;til. F&aacute;cil de limpiar y guardar.<br />\r\nEs el sustituto ideal para las bolsitas pl&aacute;sticas.</p>\r\n', 'tapa-mate', 5000, 'tapa-mate.jpg', '2023-06-16', 1),
(12, 4, 'Tapon Cebador', '<p>Tap&oacute;n cebador para termo Stanley de 1 litro.</p>\r\n', 'tapon-cebador', 10000, 'tapon-cebador.jpg', '2023-06-16', 1),
(14, 2, 'Mate Autocebante', '<p>Mate autocebante de plastico, apto para mate y terere. Este mate no requiere ser curado y facil de lavar.Tama&ntilde;o: Altura total (con bombilla) 26,5cm Altura: (sin bombilla) 20cm Capacidad: 400ml</p>\r\n', 'mate-autocebante', 10000, 'mate-autocebante.jpg', '2023-06-16', 1),
(16, 4, 'Taquito para Mate', '<p>Es el accesorio ideal para preparar el mate perfecto, tiene la inclinaci&oacute;n justa para dejar reposando la yerba y formar la famosa &laquo;monta&ntilde;ita&raquo;.</p>\r\n', 'taquito-para-mate', 5000, 'taquito-mate.jpg', '2023-06-06', 6),
(18, 1, 'La Merced de Campo 500g', '<p>Los cultivos de la yerba mate&nbsp;La Merced de Campo&nbsp;provienen de plantaciones del nordeste correntino de la Republica Argentina, zona de clima bondadoso y agradable.</p>\r\n\r\n<p>El proceso secado de la&nbsp;Merced de Campo&nbsp;se lleva a cabo de la manera tradicional y el estacionamiento es natural por un periodo de 12 meses. Por sus or&iacute;genes y su especial tipo de molienda, se obtiene una yerba elaborada con palo de calidad superior y de producci&oacute;n limitada, de un sabor inconfundible. Su sabor es suave y liviano, de caracter muy particular, por naturaleza parejo y equilibrado.</p>\r\n\r\n<p>La yerba mate&nbsp;Merced Original de Campo&nbsp;ha sido distinguida con el certificado de calidad: &ldquo;Alimentos Argentinos, una elecci&oacute;n natural&rdquo;.<br />\r\nEsta certificaci&oacute;n es otorgada por la Secretaria de Agricultura, Ganaderia, Pesca y Alimentos del Ministerio de Econom&iacute;a y Producci&oacute;n de la Rep&uacute;blica Argentina a todos los alimentos argentinos que poseen los mas altos requerimientos de calidad.</p>\r\n', 'la-merced-de-campo-500g', 4000, 'la-merced.jpg', '2023-06-06', 1),
(19, 1, 'El Buen Pastor', '<p>Yerba Mate 500 g. Tradicional Argentina, Sabor intermedio estacionamiento natural 15 meses de Palo</p>\r\n', 'el-buen-pastor', 4000, 'el-buen-pastor.jpg', '2023-06-16', 1),
(20, 1, 'Taragui 500 g', '<p>Su sabor con cuerpo e intensidad justa representan las cualidades de la aut&eacute;ntica yerba&nbsp;mate. Tiene un blend armonioso y rendidor conformado por distintos tipos de yerba que se&nbsp;diferencian entre s&iacute; por la zona geogr&aacute;fica en donde se desarrolla la planta, por la &eacute;poca de&nbsp;cosecha y por el tipo de estacionamiento. Tarag&uuml;i contiene yerbas de las zonas norte y&nbsp;centro de la provincia de Misiones, de la zona campo del nordeste de Corrientes; yerbas de&nbsp;verano y de invierno.&nbsp;</p>\r\n', 'taragui-500-g', 3000, 'taragui.jpg', '2023-06-16', 1),
(21, 1, 'Playadito Hierbas 500g', '<p>Playadito Tradicional es tan nuestra que se convirti&oacute; en el cl&aacute;sico de muchas familias. Su sabor suave y duradero tiene adeptos en cualquier rinc&oacute;n del pa&iacute;s y del mundo. En su versi&oacute;n tradicional, contiene yerba mate proveniente de los cultivos de toda la zona productora de yerba mate de Argentina, que comprende el nordeste de la provincia de Corrientes, en donde se localiza Colonia Liebig y toda la provincia de Misiones, lo que integra la producci&oacute;n de alrededor de 7 secaderos y dicha yerba mate canchada es molida, luego de un estacionamiento m&iacute;nimo de 12 meses.</p>\r\n', 'playadito-hierbas-500g', 4000, 'playadito-hierbas.jpg', '2023-06-24', 1),
(22, 1, 'CBse Hierbas ', '<p>Yerba mate hierbas serranas 500 g<br />\r\nCBS&eacute; Hierbas Serranas hace tu d&iacute;a delicioso y refrescante gracias a la combinaci&oacute;n ideal de la mejor yerba mate y una fina selecci&oacute;n de hierbas serranas: menta, poleo y peperina.</p>\r\n', 'cbse-hierbas', 4000, 'cbse-hierbas.jpg', '0000-00-00', 0),
(23, 1, 'Mapuche Organica 400g', '<p>Yerba Mate Mapuche Org&aacute;nica es una yerba con palo cultivada en ambientes ecol&oacute;gicos brasile&ntilde;os, rodeada de araucarias y bosques nativos, preservando el cuidado de la naturaleza al no utilizar qu&iacute;micos ni fertilizantes en su elaboraci&oacute;n. Un producto de la marca Anah&iacute;.</p>\r\n', 'mapuche-organica-400g', 4000, 'mapuche-organica.jpg', '2023-06-02', 1),
(24, 2, 'Matero Zaino Con Bombilla', '<p>Caracter&iacute;sticas:</p>\r\n\r\n<p>- Pr&aacute;ctico y sencillo de usar.</p>\r\n\r\n<p>- No deja sabor ni olor a pl&aacute;stico.</p>\r\n\r\n<p>- Libre de BPA.</p>\r\n\r\n<p>- Incluye bombilla de bronce niquelado con base para remover yerba.</p>\r\n\r\n<p>- Liviano y port&aacute;til.</p>\r\n\r\n<p>- F&aacute;cil limpieza en cualquier lugar.</p>\r\n\r\n<p>- La bombilla permite limpiar y cambiar la yerba de manera r&aacute;pida y sencilla.</p>\r\n\r\n<p>- Para limpiar, simplemente levante la bombilla con el bloque de yerba y listo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Especificaciones:</p>\r\n\r\n<p>- Modelo: Mate Zaino.</p>\r\n\r\n<p>- Marca: Anymate &reg;.</p>\r\n\r\n<p>- Material: Bronce niquelado (bombilla) / Pl&aacute;stico libre de BPA (contenedor).</p>\r\n\r\n<p>- Capacidad: 140 ml.</p>\r\n\r\n<p>- Tama&ntilde;o: 275 x 100 x 100 mm.</p>\r\n\r\n<p>- Di&aacute;metro boca: 60 mm.</p>\r\n\r\n<p>- Peso: 215 grs.</p>\r\n\r\n<p>- Fabricado en China.</p>\r\n', 'matero-zaino-con-bombilla', 6000, 'mate-zaino.jpg', '2023-06-16', 1),
(25, 2, 'Termo Mate Keep', '<p>Descripci&oacute;n: Libre de BPA Doble filtro Doble pared.<br />\r\nMaterial: acero inoxidable, tapa e interior de pl&aacute;stico libre de BPA<br />\r\nCapacidad: 400 ml.<br />\r\nMarca: KEEP<br />\r\nTermo autocebante con bombilla integrada y doble filtro.<br />\r\nTapa rosca Sirve para mate, t&eacute; e infusiones Ideal para viajes, oficina o mientras se realizan actividades diarias.</p>\r\n', 'termo-mate-keep', 10000, 'termo-mate-keep.jpg', '2023-06-02', 2),
(26, 2, 'Mate Keep 230ml ', '<p>Mate KEEP De Silicona Exterior y Acero Inoxidable Interior. Incluye Bombilla de Acero Caracter&iacute;sticas principales: Mate Set con Bombilla Interior: Acero Inoxidable AISI 304 (el mejor acero) Bombilla: Acero inoxidable AISI 304 (el mejor acero) Cubierta de Silicona Antideslizante Libre de BPA Capacidad: 230ml Peso: 140 Gramos. Primera calidad. Presentaci&oacute;n en Blister (asegura la higiene y previene el desgaste por manoseo). Color: Negro</p>\r\n', 'mate-keep-230ml', 10000, 'mate-keep.jpg', '2023-06-02', 1),
(27, 2, 'Mate Imperial ', '<p>Espectacular Mate Poro Uruguayo Imperial, su virola de Alpaca lo hace &uacute;nico en su tipo, incluye bombilla pico loro de Alpaca. Disfruta de un exquisito Mate todo los d&iacute;as. Espectacular!!!</p>\r\n\r\n<p>Mate Cuero</p>\r\n<p>Color: Negro</p>\r\n<p>Virola Alpaca</p>\r\n<p>Bombilla pico loro Alpaca</p>\r\n', 'mate-imperial', 45000, 'mate-imperial.jpg', '0000-00-00', 0),
(28, 2, 'Mate Camionero', '<p>El mate camionero croco es de estilo uruguayo, revestido en cuero texturado con virola de acero inoxidable.</p>\r\n\r\n<p>Color: Negro</p>\r\n\r\n<p>Medidas:&nbsp; 12 cm. de alto * virola de 9.5 cm de di&aacute;metro.</p>\r\n', 'mate-camionero', 25000, 'mate-camionero.jpg', '2023-06-02', 2),
(29, 2, 'Mate torpedo', '<p>Mate torpedo Uruguayo con virola de acero, forrado en cuero. Color negro.<br />\r\nBase de 4 Patas Reforzadas<br />\r\nAntes de usar requiere proceso de curado con yerba mate, por al menos 4 d&iacute;as aproximadamente.&nbsp;</p>\r\n\r\n<p>Capacidad<br />\r\n- 45 a 50 grs.de Yerba</p>\r\n', 'mate-torpedo', 25000, 'mate-torpedo.jpg', '0000-00-00', 0),
(30, 3, 'Bombilla Pico Loro Tambor', '<p>Bombilla larga de acero inoxidable pico de loro de tambor, desarmable en la punta. Lo que permite limpiar.</p>\r\n\r\n<p>Excelente calidad y larga vida &uacute;til.</p>\r\n\r\n<p>Mide 18 cent&iacute;metros.</p>\r\n', 'bombilla-pico-loro-tambor', 12000, 'bombilla-pico-loro.jpg', '2023-06-24', 1),
(31, 3, 'Bombilla Pico Loro Cucharita', '<p>Bombilla pico de loro plateada lisa de acero inoxidable.</p>\r\n\r\n<p>Tiene forma curva para mayor comodidad y tambi&eacute;n mejor est&eacute;tica.&nbsp;</p>\r\n\r\n<p>Terminaci&oacute;n en cucharita no desmontable.&nbsp;</p>\r\n\r\n<p>Medida: 19.5 cm.</p>\r\n\r\n<p>Se recomienda no mantener en el mate h&uacute;medo mientras no se est&aacute; mateando, as&iacute; prolongamos la vida &uacute;til de la misma y mantenemos su calidad.</p>\r\n\r\n<p>De preferencia comprar para mates medianos ( 200 cc ) a grandes.</p>\r\n', 'bombilla-pico-loro-cucharita', 10000, 'bombilla-pico-loro-plateada.jpg', '0000-00-00', 0),
(32, 3, 'Bombilla Estribo', '<p>Bombilla acero estribo.&nbsp;&nbsp;</p>\r\n\r\n<p>Se puede desarmar y limpiar r&aacute;pidamente. Se recomienda no dejar en el mate cuando no se est&aacute; utilizando para prolongar su vida &uacute;til.</p>\r\n\r\n<p>Medida: 18 cm.</p>\r\n', 'bombilla-estribo', 8000, 'bombilla-estribo.jpg', '2023-06-06', 1),
(33, 3, 'Bombilla Plana', '<p>Bombilla plana de Alpaca, 19 cm, ca&ntilde;o ancho tipo pala</p>\r\n', 'bombilla-plana', 6990, 'bombilla-plana-alpaca.jpg', '2023-06-02', 4),
(36, 1, 'Yerba mate resfrescante', '<p>Yerba mate Botanica Gourmet</p>\r\n', 'yerba-mate-resfrescante', 10000, 'yerba-mate-resfrescante.jpeg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(1, 3, 'PAYID-MR5EROY11675907H3499725Y', '2023-06-02'),
(2, 3, 'PAYID-MR5ER2Y52W090448P6880909', '2023-06-02'),
(3, 3, 'PAYID-MR5FNGQ7AB719652N4574609', '2023-06-02'),
(4, 6, 'PAYID-MR5F5II88C903657R756250D', '2023-06-02'),
(6, 3, 'PAYID-MR7LYQI0JJ708449R487643S', '2023-06-06'),
(7, 3, 'PAYID-MR7LZ3A9CL03821W4187652C', '2023-06-06'),
(8, 3, 'PAYID-MR7L2WI3BY72743T63192842', '2023-06-06'),
(9, 3, 'PAYID-MR7L33Q1NC67865MX264553H', '2023-06-06'),
(10, 3, 'PAYID-MR7L6QI3G409968CK9891947', '2023-06-06'),
(11, 3, 'PAYID-MR7MACY039085395B736891A', '2023-06-06'),
(12, 3, 'PAYID-MR7MAPI7CC075421H674973A', '2023-06-06'),
(13, 3, 'PAYID-MR7MBEI56J65426KU374230U', '2023-06-06'),
(14, 3, 'PAYID-MR7MFFA7WB52511F30994727', '2023-06-06'),
(15, 3, 'PAYID-MR7MGQA8M316202AG773500D', '2023-06-06'),
(16, 3, 'PAYID-MR7MHIQ3YV64472SC234322N', '2023-06-06'),
(17, 3, 'PAYID-MR7MNXI8W7633290P546050D', '2023-06-06'),
(18, 3, 'PAYID-MR7MTKA49J46524208836433', '2023-06-06'),
(19, 3, 'PAYID-MR7MTKA49J46524208836433', '2023-06-06'),
(20, 3, 'PAYID-MR7MVGY8E37263248237774E', '2023-06-06'),
(21, 3, 'PAYID-MR7MWXY7PN15692L92131311', '2023-06-06'),
(22, 3, 'PAYID-MR7MYJQ1BV81916XV706544X', '2023-06-06'),
(23, 3, 'PAYID-MR7M65Y4K7272845A6729442', '2023-06-06'),
(24, 3, 'PAYID-MR7NFGY4SJ72832EC775645E', '2023-06-06'),
(25, 3, 'PAYID-MR7NKAI4GX34902L6639462X', '2023-06-06'),
(26, 3, 'PAYID-MR7NR4A69495768JF908021W', '2023-06-06'),
(27, 3, 'PAYID-MR7NVEQ18H72310TT722080G', '2023-06-06'),
(28, 3, 'PAYID-MR7NWPY4840333011782680W', '2023-06-06'),
(29, 3, 'PAYID-MR7NXMY0X498281S4441060C', '2023-06-06'),
(30, 5, 'PAYID-MR7VGYY0J40193651133203J', '2023-06-06'),
(31, 8, 'PAYID-MSEP57I5X850462YN919215C', '2023-06-14'),
(32, 9, 'PAYID-MSERQQQ0EC87175E6358203A', '2023-06-14'),
(33, 3, 'PAYID-MSLGJJA85Y90204BR6630707', '2023-06-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'dsobarzo@licandeo.cl', '$2y$10$383wWzp5wqfro.5/JssN3uwfteC/9ttdjeYEqEbTmCm11.VYnXkQy', 1, 'Diego', 'Sobarzo', '', '', '', 1, '', '', '2023-06-21'),
(2, 'ptrujillo@licandeo.cl', '$2y$10$v4ONvx88MNfdzfZnMVkGiud6FHW4DP8OG12BDRtMToM1T9/J7ZMYO', 1, 'Pia', 'Trujillo', '8 norte 221', '987646338', 'trujillo-user.jpg', 1, '', '', '2023-06-01'),
(3, 'sobarzolicandeo@gmail.com', '$2y$10$e5lKwAbNnYoEpvAPT7/kE.M.t3R6bsnx1Ple/5vw4PvcUkZJUKkjS', 0, 'Diego', 'Sobarzo', 'Agua Santa 36, ViÃ±a del Mar.', 'sobarzolicandeo@gmail.com', '', 1, '', '', '2023-06-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
