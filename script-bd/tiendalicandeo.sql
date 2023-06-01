-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-06-2023 a las 20:40:43
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

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
(1, 16, 13, 1),
(2, 3, 2, 1);

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
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

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
(1, 1, 'Playadito 500g ', '<p>Yerba Mate Playito. Est&aacute; considerada &oacute;ptima para obtener un producto seleccionado que permita una infusi&oacute;n o mate de rico sabor, suave y rendidor.</p>\r\n', 'playadito-500g', 3990, 'playadito-500g.jpg', '2023-06-01', 3),
(2, 1, 'Rosamonte 500g', '<p>Yerba mate elaborada con palo, libre de gluten. Un producto cl&aacute;sico de la industria argentina, preferido por los chilenos.</p>\r\n', 'rosamonte-500g', 3990, 'rosamonte-500g.jpg', '2023-06-01', 5),
(3, 1, 'Amanda 500g', '<p>Yerba Mate tradicional. La yerba contiene vitaminas B1 y B2, adem&aacute;s de amino&aacute;cidos, hierro, sodio, potasio y magnesio. El consumo diario de yerba mate aporta al sistema inmunol&oacute;gico debido a que contiene fotoqu&iacute;micos que lo estimulan mitigando el cansancio mental y f&iacute;sico, gracias a su componente principal que es la mate&iacute;na.<br />\r\nIngredientes: Yerba Mate.<br />\r\nSin Sellos.</p>\r\n', 'amanda-500g', 3990, 'amanda-500g.jpg', '2023-06-01', 1),
(4, 3, 'Bombilla Plana', '\r\n			<td colspan=\"3\" style=\"background-color:#ededed; height:18.0pt; text-align:left; vertical-align:top; white-space:nowrap; width:484pt\">Bombilla plana de acero inoxidable 16 cm</td>\r\n		\r\n', 'bombilla-plana', 6990, 'bombilla-plana.jpg', '2023-06-01', 1),
(5, 3, 'Bombilla Cuchara', '<p>Bombilla acero inoxidable. Esmaltado en horno, no se pelan con facilidad. Medida 16 cm&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'bombilla-cuchara', 5000, 'bombilla-cuchara.jpg', '2023-06-01', 1),
(6, 3, 'Bombilla Color', '<td colspan=\"3\" style=\"background-color:#ededed; height:78.0pt; text-align:left; vertical-align:top; white-space:normal; width:370pt\">La Bombilla de mate posee&nbsp;un filtro especial para que no pasen trozos de yerba mate. Esta bombilla es un complemento que podr&aacute;s utilizar en diferentes actividades de tu vida.&nbsp;Sencilla de transportar en cualquier equipo de mate.&nbsp;<br />', 'bombilla-color', 2990, 'bombilla-color.jpg', '0000-00-00', 0),
(7, 2, 'Mate Vidrio Templado', '<p>Mate de vidrio templado forrado. Este mate no requiere ser curado antes de ser utilizado.&nbsp;<br />\r\nSe puede utilizar para infusiones calientes y fr&iacute;as. No conserva olor ni sabor. F&aacute;cil de lavar. Medidas: 8 x 7cm (alto x di&aacute;metro boca del mate) Capacidad: 220/230ml</p>\r\n', 'mate-vidrio-templado', 7000, 'mate-vidrio-templado.jpg', '2023-06-01', 1),
(8, 2, 'Mate Mateo Original', '\r\n<td colspan=\"3\" style=\"background-color:#ededed; height:48.0pt; text-align:left; vertical-align:top; white-space:normal; width:380pt\">Material t&eacute;rmico; mantiene la temperatura de la yerba sin transmitir calor a la mano. Es flexible e irrompible, que lo convierte en el mate ideal para transportar. 100% Silicona. Y libre de BPA, Carga aproximadamente: 40gr. de yerba.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n		\r\n', 'mate-mateo-original', 10000, 'mate-mateo-original.jpg', '2023-06-01', 1),
(10, 4, 'Tapa Mate', '<p>Tapamate es una tapa de silicona universal que se adapta al mate.<br />\r\nEst&aacute; dise&ntilde;ado para tapar el mate luego de utilizarlo y as&iacute; evitar que la yerba se vuelque dentro de nuestro bolso, mochila o auto.<br />\r\nAl estar hecho de silicona se ajusta a todos tus mates, es resistente y tiene una larga vida &uacute;til. F&aacute;cil de limpiar y guardar.<br />\r\nEs el sustituto ideal para las bolsitas pl&aacute;sticas.</p>\r\n', 'tapa-mate', 5000, 'tapa-mate.jpg', '0000-00-00', 0),
(12, 4, 'Tapon Cebador', '<p>Tap&oacute;n cebador para termo Stanley de 1 litro.</p>\r\n', 'tapon-cebador', 10000, 'tapon-cebador.jpg', '0000-00-00', 0),
(14, 2, 'Mate Autocebante', '<p>Mate autocebante de plastico, apto para mate y terere. Este mate no requiere ser curado y facil de lavar.Tama&ntilde;o: Altura total (con bombilla) 26,5cm Altura: (sin bombilla) 20cm Capacidad: 400ml</p>\r\n', 'mate-autocebante', 10000, 'mate-autocebante.jpg', '0000-00-00', 0),
(16, 4, 'Taquito para Mate', '<p>Es el accesorio ideal para preparar el mate perfecto, tiene la inclinaci&oacute;n justa para dejar reposando la yerba y formar la famosa &laquo;monta&ntilde;ita&raquo;.</p>\r\n', 'taquito-para-mate', 5000, 'taquito-mate.jpg', '0000-00-00', 0),
(18, 1, 'La Merced de Campo 500g', '<p>Los cultivos de la yerba mate&nbsp;La Merced de Campo&nbsp;provienen de plantaciones del nordeste correntino de la Republica Argentina, zona de clima bondadoso y agradable.</p>\r\n\r\n<p>El proceso secado de la&nbsp;Merced de Campo&nbsp;se lleva a cabo de la manera tradicional y el estacionamiento es natural por un periodo de 12 meses. Por sus or&iacute;genes y su especial tipo de molienda, se obtiene una yerba elaborada con palo de calidad superior y de producci&oacute;n limitada, de un sabor inconfundible. Su sabor es suave y liviano, de caracter muy particular, por naturaleza parejo y equilibrado.</p>\r\n\r\n<p>La yerba mate&nbsp;Merced Original de Campo&nbsp;ha sido distinguida con el certificado de calidad: &ldquo;Alimentos Argentinos, una elecci&oacute;n natural&rdquo;.<br />\r\nEsta certificaci&oacute;n es otorgada por la Secretaria de Agricultura, Ganaderia, Pesca y Alimentos del Ministerio de Econom&iacute;a y Producci&oacute;n de la Rep&uacute;blica Argentina a todos los alimentos argentinos que poseen los mas altos requerimientos de calidad.</p>\r\n', 'la-merced-de-campo-500g', 4000, 'la-merced.jpg', '0000-00-00', 0);

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
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

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
(1, 'dsobarzo@licandeo.cl', '$2y$10$n8p6J9aUwbKx7IeCHUurEee.H8/zIuGfymFkc3vNQe/ahCSbND866', 1, 'Diego', 'Sobarzo', 'Agua Santa 369, ViÃ±a del Mar', '', 'sobarzo-user.jpg', 1, '', '', '2023-05-29'),
(2, 'ptrujillo@licandeo.cl', '$2y$10$v4ONvx88MNfdzfZnMVkGiud6FHW4DP8OG12BDRtMToM1T9/J7ZMYO', 1, 'Pia', 'Trujillo', '8 norte 221', '987646338', 'trujillo-user.jpg', 1, '', '', '2023-06-01'),
(3, 'mperez@gmail.com', '$2y$10$e5lKwAbNnYoEpvAPT7/kE.M.t3R6bsnx1Ple/5vw4PvcUkZJUKkjS', 0, 'MarÃ­a', 'PÃ©rez', 'Agua Santa 45, ViÃ±a del mar', '+56953538414', '', 1, '', '', '2023-06-01');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
