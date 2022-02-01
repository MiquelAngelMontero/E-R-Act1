INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('1', '12345678M', 'Juan', 'Les', 'Reus', '485214569');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('2', '87654321N', 'Miquel Angel', 'Montero', 'Reus', '452689536');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('3', '13578642S', 'Adrià', 'Palau', 'Montblanc', '652132547');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('4', '24687531Y', 'Pau', 'Romero', 'Barcelona', '1453265987');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('5', '14864235I', 'Albert', 'Ferrer', 'Cambrils', '985236487');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('6', '15283626U', 'Jordi', 'Plaza', 'Andorra', '465238789');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('7', '15285903T', 'Eloy', 'Sanchez', 'Tarrega', '46897852');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('8', '12637805E', 'Jaume', 'Martinez', 'Girona', '532147825');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('9', '15932876k', 'Cristian', 'Rodriguez', 'Barcelona', '158936547');
INSERT INTO `Act6`.`socio` (`Cod_socio`, `DNI`, `Nombre`, `Apellidos`, `Dirección`, `Teléfono`) VALUES ('10', '19836548T', 'Jorge', 'Jimenez', 'Barberà de la Conca', '159836547');

INSERT INTO `Act6`.`prestamo` (`cod_prestamo`, `fecha_prestamo`, `fecha_limite`, `fecha_entrega`, `Cod_socio`) VALUES ('1', '2021/01/12', '2021/07/18', '2021/12/23', '1');
INSERT INTO `Act6`.`prestamo` (`cod_prestamo`, `fecha_prestamo`, `fecha_limite`, `fecha_entrega`, `Cod_socio`) VALUES ('2', '2021/02/13', '2021/08/19', '2021/01/24', '2');
INSERT INTO `Act6`.`prestamo` (`cod_prestamo`, `fecha_prestamo`, `fecha_limite`, `fecha_entrega`, `Cod_socio`) VALUES ('3', '2021/03/14', '2021/09/20', '2021/02/25', '3');
INSERT INTO `Act6`.`prestamo` (`cod_prestamo`, `fecha_prestamo`, `fecha_limite`, `fecha_entrega`, `Cod_socio`) VALUES ('4', '2021/04/15', '2021/10/21', '2021/03/26', '4');
INSERT INTO `Act6`.`prestamo` (`cod_prestamo`, `fecha_prestamo`, `fecha_limite`, `fecha_entrega`, `Cod_socio`) VALUES ('5', '2021/05/16', '2021/11/22', '2021/04/27', '5');

INSERT INTO `Act6`.`obra` (`cod_obra`, `nombre`, `año`) VALUES ('1', 'Pintura', '2007');
INSERT INTO `Act6`.`obra` (`cod_obra`, `nombre`, `año`) VALUES ('2', 'cancion', '2010');
INSERT INTO `Act6`.`obra` (`cod_obra`, `nombre`, `año`) VALUES ('3', 'cd', '1982');
INSERT INTO `Act6`.`obra` (`cod_obra`, `nombre`, `año`) VALUES ('4', 'libro', '1995');
INSERT INTO `Act6`.`obra` (`cod_obra`, `nombre`, `año`) VALUES ('5', 'pelicula', '1990');
INSERT INTO `Act6`.`obra` (`cod_obra`, `nombre`, `año`) VALUES ('6', 'cd2', '2002');

INSERT INTO `Act6`.`articulo` (`cod_articulo`, `comentario`, `deterioro`, `cod_prestamo`, `cod_obra`) VALUES ('1', 'Bueno', 'Alto', '1', '1');
INSERT INTO `Act6`.`articulo` (`cod_articulo`, `comentario`, `deterioro`, `cod_prestamo`, `cod_obra`) VALUES ('2', 'Malo', 'Medio', '2', '2');
INSERT INTO `Act6`.`articulo` (`cod_articulo`, `comentario`, `deterioro`, `cod_prestamo`, `cod_obra`) VALUES ('3', 'Buenisimo', 'Bajo', '3', '3');
INSERT INTO `Act6`.`articulo` (`cod_articulo`, `comentario`, `deterioro`, `cod_prestamo`, `cod_obra`) VALUES ('4', 'Malisimo', 'Medio', '4', '4');
INSERT INTO `Act6`.`articulo` (`cod_articulo`, `comentario`, `deterioro`, `cod_prestamo`, `cod_obra`) VALUES ('5', 'Decente', 'Bajo', '5', '5');

INSERT INTO `Act6`.`CD` (`cod_obra`, `nombre`, `año`, `n_canciones`) VALUES ('1', 'CD1', '2003', '12');
INSERT INTO `Act6`.`CD` (`cod_obra`, `nombre`, `año`, `n_canciones`) VALUES ('2', 'CD2', '2009', '21');

INSERT INTO `Act6`.`libro` (`cod_obra`, `nombre`, `año`, `n_paginas`) VALUES ('3', 'Libro1', '1980', '500');
INSERT INTO `Act6`.`libro` (`cod_obra`, `nombre`, `año`, `n_paginas`) VALUES ('4', 'Libro2', '1999', '360');

INSERT INTO `Act6`.`Pelicula` (`cod_obra`, `nombre`, `año`, `duración`) VALUES ('5', 'pelicula1', '2013', '120');
INSERT INTO `Act6`.`Pelicula` (`cod_obra`, `nombre`, `año`, `duración`) VALUES ('6', 'pelicula2', '1995', '200');

INSERT INTO `Act6`.`autor` (`cod_autor`, `nombre`, `pais`) VALUES ('1', 'Juan', 'España');
INSERT INTO `Act6`.`autor` (`cod_autor`, `nombre`, `pais`) VALUES ('2', 'Jhon', 'Reino unido');
INSERT INTO `Act6`.`autor` (`cod_autor`, `nombre`, `pais`) VALUES ('3', 'Xan U', 'China');
INSERT INTO `Act6`.`autor` (`cod_autor`, `nombre`, `pais`) VALUES ('4', 'Pierre', 'Francia');
INSERT INTO `Act6`.`autor` (`cod_autor`, `nombre`, `pais`) VALUES ('5', 'Stephan', 'Portugal');
INSERT INTO `Act6`.`autor` (`cod_autor`, `nombre`, `pais`) VALUES ('6', 'Dumitru', 'Rumania');
