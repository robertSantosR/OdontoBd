-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Jul-2019 às 03:26
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odonto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_agendadent`
--

CREATE TABLE `tb_agendadent` (
  `id_agenda` int(11) NOT NULL,
  `id_funcionarios` int(11) NOT NULL,
  `data` date NOT NULL,
  `horario` time NOT NULL,
  `tp_status` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_agendadent`
--

INSERT INTO `tb_agendadent` (`id_agenda`, `id_funcionarios`, `data`, `horario`, `tp_status`, `id_usuario`) VALUES
(83, 7, '2019-07-03', '09:40:00', 3, 6),
(84, 7, '2019-07-03', '09:20:00', 3, 38),
(85, 7, '2019-07-03', '09:40:00', 3, 35),
(86, 7, '2019-07-03', '10:00:00', 3, 59),
(87, 7, '2019-07-03', '10:20:00', 2, 59),
(88, 7, '2019-07-03', '10:40:00', 2, 64),
(89, 8, '2019-07-17', '11:20:00', 3, 45),
(90, 6, '2019-07-11', '09:40:00', 1, NULL),
(91, 7, '2019-07-11', '09:40:00', 3, 91),
(92, 8, '2019-07-11', '09:40:00', 1, NULL),
(93, 10, '2019-07-11', '09:40:00', 2, 85),
(94, 7, '2019-07-05', '10:20:00', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cargos`
--

CREATE TABLE `tb_cargos` (
  `id_Cargos` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `salario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_cargos`
--

INSERT INTO `tb_cargos` (`id_Cargos`, `nome`, `salario`) VALUES
(1, 'Auxiliar de dentista', '2000.00'),
(2, 'DENTISTA SÊNIOR', '14000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionarios`
--

CREATE TABLE `tb_funcionarios` (
  `id_Funcionarios` int(11) NOT NULL,
  `id_Cargos` int(11) NOT NULL,
  `Funcionario` varchar(20) NOT NULL,
  `dataNascimento` date NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `RG` varchar(15) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_funcionarios`
--

INSERT INTO `tb_funcionarios` (`id_Funcionarios`, `id_Cargos`, `Funcionario`, `dataNascimento`, `Telefone`, `Celular`, `RG`, `CPF`, `senha`, `email`) VALUES
(3, 1, 'Vagner', '1999-03-09', '1111-1111', '2222-22222', '39.480.087-4', '111.222.333-45', NULL, ''),
(4, 1, 'robert', '2019-05-17', '41395253', '1194667885', '394800874', '49184667885', '202cb962ac59075b964b07152d234b70', ''),
(5, 1, 'robert', '2019-05-17', '41395253', '1194667885', '394800874', '49184667885', '202cb962ac59075b964b07152d234b70', ''),
(6, 2, 'robert', '2019-05-08', '41395253', '1194667885', '1234', '49184667885', '202cb962ac59075b964b07152d234b70', ''),
(7, 2, 'joseCirurgiao', '2019-05-08', '41395253', '1194667885', '396544896', '48831767885', '202cb962ac59075b964b07152d234b70', ''),
(8, 2, 'vagner', '2019-06-24', '1141395253', '11974455879', '354677895', '49887445667', '202cb962ac59075b964b07152d234b70', ''),
(9, 1, 'robert', '0000-00-00', '41395253', '974402161', '394588469', '49184667885', '202cb962ac59075b964b07152d234b70', 'robertadm@hotmail.com'),
(10, 2, 'robert', '2019-07-03', '11111111111', '1111111111', '11111111111111', '31248864883', '202cb962ac59075b964b07152d234b70', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_Usuario` int(11) NOT NULL,
  `paciente` varchar(150) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data_nascimento` date NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `estado` char(2) NOT NULL,
  `token` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_Usuario`, `paciente`, `Email`, `Telefone`, `Celular`, `endereco`, `cep`, `numero`, `complemento`, `cpf`, `senha`, `data_nascimento`, `bairro`, `cidade`, `sexo`, `estado`, `token`) VALUES
(5, 'elias', 'elias@hotmail.c', '112314', '1194667885', 'rua ananias carmerindo pires', ' 06785100 ', '405', ' c2', '', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'jd_panorama', 'taboão da serra', 'm', 'CE', ''),
(6, 'Robert santos santos', 'robert@hotmail.', '112314', '1194667885', 'Rua Ananias Carmerindo Pires', ' 06785-100', '405', '        c2', '1111111111111', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(8, 'robert santos dos re', 'robert@hotmail.', '112314', '1194667885', 'rua ananias carmerindo pires', ' 06785100 ', '405', ' c2', '1111111111111', '', '0000-00-00', 'jd_panorama', 'taboão da serra', 'm', 'CE', ''),
(10, 'testre', 'teste@123.com', '', '', '', ' 06785100 ', '405', ' ', '', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'jd_panorama', '', '', '', ''),
(17, 'luis', 'luis@teste.com', '(11) 11111111', '(11) 111111111', '', '', '', '', '111.111.111-11', '3978da5adde4e4ce8f9fe1d45649761f', '2019-06-19', '', '', '', '', ''),
(18, 'usuario teste', 'usuario@teste.c', '(11) 11111111', '(11) 111111111', '', '', '', '', '111.111.111-11', '202cb962ac59075b964b07152d234b70', '2019-06-26', '', '', '', '', ''),
(19, 'usuario2', 'usario2@teste.c', '112314', '(15) 145451584', 'jd panora', '06785-100 ', '1111', 'c12', '111.111.111-11', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', '', '', ''),
(20, 'vagenerTeste', 'vagen123@hotmai', '(11) 11111111', '(11) 111111111', '', '', '', '', '391.669.788-90', '202cb962ac59075b964b07152d234b70', '1989-10-16', '', '', '', '', ''),
(21, 'teste', 'teste123@hotmai', '(11) 11111111', '(11) 111111111', '', '', '', '', '111.111.111-11', 'caf1a3dfb505ffed0d024130f58c5cfa', '1111-11-11', '', '', '', '', ''),
(22, 'testador', 'robert1@hotmail', '(31) 23213213', '(13) 123123232', 'jose damiao', '06785-100', '400', 'c12', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'taboao', 'm', 'SP', ''),
(23, 'robert santos dos re', 'robert-santosrr', '(13) 12321322', '(32) 652222222', 'jose damiao', '06785-100', '400', 'x3', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '1999-03-09', '22222222222222222', 'taboao', 'm', 'RN', ''),
(24, 'robert santos dos re', 'teste17@teste.c', '(11) 54222222', '(15) 145451584', 'jose damiao', '06785-100', '400', 'x3', '455.467.845-12', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'taboao', 'f', 'PE', ''),
(25, 'robert santos dos re', 'teste20@teste.c', '(11) 54222222', '(15) 145451584', 'jose damiao', '06785-100', '400', 'x3', '455.467.845-20', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'taboao', 'f', 'PE', ''),
(26, 'robert santos dos reis', 'robert123@hotma', '(11) 11111111', '(11) 111111111', '', '06785-100', '400', 'x3', '123.233.143-24', '202cb962ac59075b964b07152d234b70', '1999-03-09', '', '', 'f', '', ''),
(27, '123213', 'robert1234@hotm', '(12) 32322322', '(21) 312312312', 'Rua Ananias Carmerindo Pires', '06785-100', '400', 'x3', '111.144.444-45', '202cb962ac59075b964b07152d234b70', '2019-06-14', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(28, 'eliasteste', 'eliasteste@123.', '(12) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '400', 'x3', '455.462.321-31', '202cb962ac59075b964b07152d234b70', '2019-06-14', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(29, '13234', 'elias435@hotmai', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '212112', '1233', '121.578.844-17', '202cb962ac59075b964b07152d234b70', '2112-11-12', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(30, 'dd', 'abnersantos@hot', '(11) 47013758', '(11) 984310816', 'Rua Helena Moraes de Oliveira', '06767-390', '11', 'xx', '391.669.788-80', 'ead840d9a2f6d677edc19f66ecc7c6f7', '1989-10-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(31, 'Maça', 'adm123@senac.co', '(11) 47013758', '(11) 984310816', 'Rua Helena Moraes de Oliveira', '06767-390', '12', '12', '391.669.788-70', '202cb962ac59075b964b07152d234b70', '1989-10-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(32, 'Vagner', 'vag@hotmail.com', '(11) 99444517', '(45) 451561561', 'Rua Izaura da Silva Camargo', ' 06767-310', '123', '   12', '391.669.788-30', '202cb962ac59075b964b07152d234b70', '1989-10-16', 'Jardim São Paulo', 'Taboão da Serra', 'm', 'SP', ''),
(33, 'Juliana', 'juliana.assisca', '(11) 99908343', '(11) 999083431', 'Rua Caqui', '06835-280', '11', 'Orfanato', '504.197.358-01', '3c4f26a3d54cc4c239ea591efa1ef80e', '2000-06-28', 'Jardim Pinheirinho', 'Embu das Artes', 'f', 'SP', ''),
(34, 'admin', 'geo_pereiratdb@', '(46) 46464646', '(25) 611626656', '', '06890-000', '135', 'centro', '121.345.678-91', '202cb962ac59075b964b07152d234b70', '8777-10-07', '', 'São Lourenço da Serra', 'm', 'SP', ''),
(35, 'Aline', 'aline@maisamiga', '(11) 44165844', '(11) 995151111', 'Rua Gilda de Abreu', '06755-030', '100', 'Cs', '123.456.123-10', '81dc9bdb52d04dc20036dbd8313ed055', '2001-01-11', 'Jardim Santa Rosa', 'Taboão da Serra', 'm', 'SP', ''),
(36, 'luciana', 'lucyana_matos@h', '', '(11) 111111111', 'Rua Felisbela Oliveira Ferreira Missumos', '06773-030', '0000', 'casa', '000.000.000-00', 'e0df8d0038ecb2106799423410c2a4c1', '1984-10-29', 'Parque São Joaquim', 'Taboão da Serra', 'f', 'SP', ''),
(37, 'Eloisa Estevão', 'eloisa.jestevao', '(11) 95196342', '(11) 993789162', 'Rua Brasil', '06813-085', '34', 'a', '446.328.974-58', '473e82435f22511361b41007246d714c', '1996-05-10', 'Jardim Valo Verde', 'Embu das Artes', 'f', 'SP', ''),
(38, 'Brunão', 'brunasenac@gmai', '(11) 98745454', '(11) 987546446', 'Rua Isabel Soria Mainardes', ' 06787-110', '22', '  casa', '123.456.789-10', 'f11fb42c501fe16b20622205335e7bb9', '1976-10-10', 'Jardim Maria Helena', 'Taboão da Serra', 'm', 'SP', ''),
(39, 'paloma p silva', 'loma765890@gmail.com', '(32) 03255555', '(25) 555555555', 'Rua Santa Rita', '06843-220', '25', 'coaosa', '248.995.226-85', '9d85cd8bf53996df44dddb9a988da293', '2001-04-20', 'Maria Auxiliadora', 'Embu das Artes', 'm', 'SP', '1eadfedb3e5e82b768fa322e1c484a94'),
(40, 'Jorge', 'juniorsystem597', '(11) 99444517', '(11) 984459716', 'Rua Izaura da Silva Camargo', ' 06767-310', '82', ' 12', '176.247.154-21', '1f579f72a6a8ce1033afca7c94c132b0', '1989-10-16', 'Jardim São Paulo', 'Taboão da Serra', 'm', 'SP', ''),
(41, 'Gustavo', 'olivera.gustavo', '(55) 4465416', '(22) 851354452', 'Rua Jurandir Cabelho', '06774-070', '401', '2', '561.614.656', 'b504446d28ecd0baa21371ead11a5647', '1974-07-25', 'Parque Jacarandá', 'Taboão da Serra', 'm', 'SP', ''),
(42, 'Dani ', 'felipe.souza@ho', '(11) 95572573', '(11) 648748948', 'Rua Guaramembé', '05754-060', '000', 'sdfgrdb', '876.876.864-57', '642d60c6062c7fcaed270ebf5bdf0c6a', '2014-11-20', 'Umarizal', 'São Paulo', 'f', 'SP', ''),
(43, 'fgg', 'kkjh@kkhh.com.b', '(11) 45698754', '(11) 985858585', 'ghfjjjkkjjn  ', '06781-333', '212', '0', '222.222.222-22', '25f9e794323b453885f5181f1b624d0b', '2000-01-22', 'fgtfdfd', 'ghjhvbn', 'm', 'SP', ''),
(44, 'joanes', 'joaoalmeida_ped', '(11) 96564566', '(11) 965645661', 'Rua Minas Gerais', '06852-310', '279', 'casa 3', '123.456.789-41', '97db1846570837fce6ff62a408f1c26a', '2000-04-21', 'Parque Paraíso', 'Itapecerica da Serra', 'm', 'SP', ''),
(45, 'Faustino', 'carlos.1@gmail.', '(11) 36666112', '(11) 656566656', 'Rua Constantino Dias Lopes', ' 06787-420', '255', ' casa 2', '232.652.626-26', '6d270c0bdf9489e7d214b73e1c83f98d', '1995-02-10', 'Jardim Salete', 'Taboão da Serra', '.', 'SP', ''),
(46, 'teste123', 'testes56@hotmai', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '12312', '123', '121.148.756-87', '202cb962ac59075b964b07152d234b70', '2019-07-03', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(47, 'Maria', 'marieemenezzes@', '(11) 37820649', '(11) 995679870', 'Rua Clara Fisher', '05549-110', '01', 'casa 2', '367.743.198-07', '10e30e49861d928a4240059cd09e4ce4', '1993-08-05', 'Jardim das Esmeraldas', 'São Paulo', 'f', 'SP', ''),
(48, 'anderson ferreira neves', 'andersonferreir', '(11) 11111111', '(22) 222222222', 'Rua Ursa Maior', '06815-420', '268', 'casa', '389.034.048-23', '56c487f5e28e22071762b0e9416520dd', '1911-01-27', 'Jardim do Colégio', 'Embu das Artes', 'm', 'SP', ''),
(49, 'Amanda', 'macena.amanda@d', '(00) 00000000', '(00) 000000000', 'Rua Santa Benta', '06835-515', '250', '123', '000.001.000-00', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Santo Antônio', 'Embu das Artes', 'f', 'SP', ''),
(50, 'dr. Cuca beludo ', 'CASSIANOSILVA15', '(11) 55784565', '(45) 555885522', 'Rua Avaí', '06786-380', '1156', 'CS2', '258.258.369-71', 'e63e2a641902a29d37cefa3fd31252d9', '2011-12-01', 'Vila Indiana', 'Taboão da Serra', 'm', 'SP', ''),
(51, 'Marcio ed Lima Castro', 'marciolima.cast', '', '(11) 967581888', 'Rua Quatorze de Novembro', '06817-240', '2000', 'casa', '122.222.222-2', '25f9e794323b453885f5181f1b624d0b', '1987-06-23', 'Esplanada', 'Embu das Artes', 'm', 'SP', ''),
(52, 'Gustavo2', 'olivera.gustavo', '(55) 4465416', '(22) 851354452', 'Rua Jurandir Cabelho', '06774-070', '401', '2', '564.165.165', '81dc9bdb52d04dc20036dbd8313ed055', '1974-07-25', 'Parque Jacarandá', 'Taboão da Serra', 'm', 'SP', ''),
(53, 'janaine', 'janainesantos17', '(11) 97089616', '(11) 999083431', 'Rua Caqui', '06835-280', '11', 'casa', '417.237.198-11', '3c4f26a3d54cc4c239ea591efa1ef80e', '2001-11-17', 'Jardim Pinheirinho', 'Embu das Artes', 'f', 'SP', ''),
(54, 'admin', 'edvaldolimarodr', '', '(11) 935698895', 'Rua Santa Inês', '06835-480', '161', 'casa2', '456.789.234-44', 'ddf4d82783c48365856f68f6b3ae7b2c', '1889-06-05', 'Jardim Santo Antônio', 'Embu das Artes', 'm', 'SP', ''),
(55, 'carlos pinto ', 'carlos.pinto.ca', '(66) 6565653', '(99) 565565232', 'Rua Cambirisa', '05735-010', '201', 'casa', '555.555.555-55', 'a20df7f02202e665e6a7b674bbfb1fcc', '1998-08-20', 'Parque Reboucas', 'São Paulo', 'm', 'SP', ''),
(56, 'Gustavo', 'olivera.gustavo', '(55) 4465416', '(22) 851354452', 'Rua Jurandir Cabelho', '06774-070', '1', '1', '888.888.888-88', '202cb962ac59075b964b07152d234b70', '1974-07-25', 'Parque Jacarandá', 'Taboão da Serra', 'm', 'SP', ''),
(57, 'Marcio de Lima Castro', 'marciolima.cast', '(11) 95845555', '(11) 967581888', 'Rua Quatorze de Novembro', '06817-240', '50', 'casa', '125.487.111-1', '25f9e794323b453885f5181f1b624d0b', '1987-06-23', 'Esplanada', 'Embu das Artes', 'm', 'SP', ''),
(58, 'carlos pinto', 'carlos.pinto.ca', '(11) 42445899', '(11) 982478214', 'Rua Cambirisa', '05735-010', '201', 'casa 1', '231.485.684-36', 'c29abc3d65d0514415016c15b4220b14', '1999-08-20', 'Parque Reboucas', 'São Paulo', 'm', 'SP', ''),
(59, 'elias', 'elias55@hotmail', '(55) 4465416', '(22) 851354452', 'Rua Jurandir Cabelho', '06774-070', '1', '1', '391.669.788-40', '202cb962ac59075b964b07152d234b70', '1974-07-25', 'Parque Jacarandá', 'Taboão da Serra', 'm', 'SP', ''),
(60, 'carlos', 'teste123@hotmai', '112314', '11940074001', 'asdsa', '06803180 ', 'AsAS', '123', '31248864883', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', '', '', ''),
(61, 'Wesley', 'wesleycristian3', '(11) 11111111', '(11) 111111111', 'Rua Brás Pires', '06871-050', '114', 'CS', '222.333.444-55', 'e10adc3949ba59abbe56e057f20f883e', '1111-11-11', 'Jardim Virgínia', 'Itapecerica da Serra', 'm', 'SP', ''),
(62, 'Jose', 'jose_hrq_@hotma', '(11) 95375573', '(11) 648748948', 'Rua Guaramembé', ' 05754-060', '22', ' casa', '411.141.288-21', '6734fa703f6633ab896eecbdfad8953a', '1994-12-22', 'Umarizal', 'São Paulo', '.', 'SP', ''),
(63, 'Maria Claudia Menezes', 'marieemenezzes@', '(11) 37820649', '(11) 995679870', 'Rua Clara Fisher', '05549-110', '43', 'casa 2', '403.644.268-61', '10e30e49861d928a4240059cd09e4ce4', '1993-08-05', 'Jardim das Esmeraldas', 'São Paulo', 'f', 'SP', ''),
(64, 'dr. Cuca beludo ', 'ricardomachado@', '(11) 55784565', '(45) 555885522', 'Rua Antônio Vidal da Silva', '06786-560', '1156', 'CS2', '123.852.963-71', '28db2ca83edaffd63d286f9001d86573', '2011-12-01', 'Jardim Comunitário', 'Taboão da Serra', 'm', 'SP', ''),
(65, 'Marcio de Lima Castro', 'marciolima@hotm', '(11) 95845555', '(11) 967581888', 'Rua Quatorze de Novembro', '06817-240', '50', 'casa', '356.998.711-1', '25f9e794323b453885f5181f1b624d0b', '1987-06-23', 'Esplanada', 'Embu das Artes', 'm', 'SP', ''),
(66, 'admin Masculino', 'edvaldolimarodr', '(11) 93569889', '(11) 935698895', 'Rua Santa Inês', '06835-480', '1', '1', '456.789.234-80', '202cb962ac59075b964b07152d234b70', '1889-06-05', 'Jardim Santo Antônio', 'Embu das Artes', 'm', 'SP', ''),
(67, 'admin Masculino', 'edvaldolimarodr', '(11) 93569889', '(11) 935698895', 'Rua Santa Inês', '06835-480', '1', '1', '456.789.234-60', '202cb962ac59075b964b07152d234b70', '1889-06-05', 'Jardim Santo Antônio', 'Embu das Artes', 'm', 'SP', ''),
(68, 'admin Masculino', 'edvaldolimarodr', '(11) 93569889', '(11) 935698895', 'Rua Santa Inês', '06835-480', '8', '8', '456.789.234-70', '202cb962ac59075b964b07152d234b70', '1889-06-05', 'Jardim Santo Antônio', 'Embu das Artes', 'm', 'SP', ''),
(69, '123', '123@123.com', '(12) 31234234', '(32) 131231231', 'Rua Ananias Carmerindo Pires', '06785-100', '123', '123', '114.554.861-21', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(70, '44444', '444@444.COM', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111', '11111', '123.454.548-97', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'f', 'SP', ''),
(71, '44444', '4434@4434.COM', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111', '11111', '123.452.348-97', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'f', 'SP', ''),
(72, '1', '1@hotmail.com', '(11) 47013758', '(11) 984310816', 'Rua Helena Moraes de Oliveira', '06767-390', '1', '1', '391.669.788-15', '202cb962ac59075b964b07152d234b70', '1989-10-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(73, 'e', '7@hotmail.com', '(11) 11111111', '(22) 222222222', 'Rua Izaura da Silva Camargo', '06767-310', '3', '5', '391.669.788-62', '202cb962ac59075b964b07152d234b70', '1989-10-16', 'Jardim São Paulo', 'Taboão da Serra', 'm', 'SP', ''),
(74, '44444', '4454@4454.COM', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111', '11111', '545.454.348-97', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'f', 'SP', ''),
(75, 'ela', '8@hotmail.com', '(77) 77777777', '(77) 777777777', 'Rua Helena Moraes de Oliveira', '06767-390', '12', '2', '391.669.788-32', '202cb962ac59075b964b07152d234b70', '1989-10-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(76, '365', '365@g.com', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111111', '1111111', '124.894.565-47', '202cb962ac59075b964b07152d234b70', '1111-11-12', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(77, '123', '1234555@G.COM', '(11) 11211111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '06444', '44110', '186.987.546-74', '202cb962ac59075b964b07152d234b70', '5858-05-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(78, 'eee', '10@hotmail.com', '(11) 47013758', '(11) 470137580', 'Rua Helena Moraes de Oliveira', '06767-390', '111', '1111', '391.669.788-20', '202cb962ac59075b964b07152d234b70', '1989-11-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(79, '3653', '343565@g.com', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111111', '1111111', '878.944.566-54', '202cb962ac59075b964b07152d234b70', '1111-11-12', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(80, 'teat', '9@hotmail.com', '(11) 44444444', '(11) 479999999', 'Rua Helena Moraes de Oliveira', '06767-390', '8', '8', '391.669.788-25', '202cb962ac59075b964b07152d234b70', '1989-10-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(81, '44444', '44564@44564.COM', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111', '11111', '487.895.625-41', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'f', 'SP', ''),
(82, '12544', '556DSA68@66.COM', '(23) 12312311', '(31) 231231232', 'Rua Ananias Carmerindo Pires', '06785-100', '123', '123', '158.889.795-46', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(83, '111', '123@gmail.com', '(11) 11111111', '(22) 222222222', 'Rua Izaura da Silva Camargo', '06767-310', '321', '11', '156.486.547-58', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim São Paulo', 'Taboão da Serra', 'm', 'SP', ''),
(84, '3653', '343566@g.com', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111111', '1111111', '878.944.566-66', '202cb962ac59075b964b07152d234b70', '1111-11-12', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(85, 'dd', '11@hotmail.com', '(11) 11111111', '(55) 555555555', 'Rua Helena Moraes de Oliveira', '06767-390', '2', '3', '391.669.788-36', '202cb962ac59075b964b07152d234b70', '1989-10-15', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(86, '123', '12345565@G.COM', '(11) 11211111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '06444', '44110', '186.986.546-74', '202cb962ac59075b964b07152d234b70', '5858-05-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(87, '12544', '556DS1A68@66.CO', '(23) 12312311', '(31) 231231232', 'Rua Ananias Carmerindo Pires', '06785-100', '123', '123', '158.889.795-48', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(88, '44444', '44564@445698.CO', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '1111', '11111', '487.895.628-79', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'f', 'SP', ''),
(89, '123', '363@3.com', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '111', '1111', '154.878.778-87', '202cb962ac59075b964b07152d234b70', '1111-11-11', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(90, 'elias', 'eliasteste@teste.com', '(11) 11111111', '(11) 111111111', 'Rua Sérgio Cardoso', '06785-110', '12', '121', '554.411.223-32', '202cb962ac59075b964b07152d234b70', '2019-07-04', 'Jardim Santo Onofre', 'Taboão da Serra', 'm', 'SP', ''),
(91, 'robert santos ', 'robertsantosrrs@gmail.com', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '405', 'c2', '111.111.222-33', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(92, 'Elias Abner', 'elias.abner.bonilha@gmail.com', '(11) 11111111', '(11) 111111111', 'Rua Helena Moraes de Oliveira', ' 06767-390', '1', ' 12', '391.669.788-87', '827ccb0eea8a706c4c34a16891f84e7b', '1989-10-16', 'Parque Pinheiros', 'Taboão da Serra', 'm', 'SP', ''),
(93, 'robert', 'robert-santosrrs@hotmail.com', '(11) 11111111', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100', '405', 'c2', '112.233.114-45', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', '7603f399a5305c6b355c0be67ff88320'),
(94, 'teste', 'teste155@teste.com', '112314', 'r23442342342343', '', '06785-100 ', 'n3', 'c2', '424.344.657-27', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', 'm', '', ''),
(95, 'teste', 'teste155@teste.com', '112314', 'r23442342342343', '', '06785-100 ', 'n3', 'c2', '424.344.657-27', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', 'm', '', ''),
(96, 'TESTE1213', 'teste17@teste.com', '112314', '234234234324', '', '06785-100 ', '1111', 'C3', '134.355.623-42', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', 'm', '', ''),
(97, 'TESTE1213', 'teste17@teste.com', '112314', '234234234324', '', '06785-100 ', '1111', 'C3', '134.355.623-42', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', 'm', '', ''),
(98, '123123123', 'robertadm@hotmail.com', '112314', '123123213231', '', '06785-100 ', '123', '123', '443.846.678-23', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', 'm', '', ''),
(99, '121312321321', 'robertadm@hotmail.com', '112314', '12312312312312', '', '23423-423 ', '213123', '123123213', '123.232.113-21', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', 'm', 'SP', ''),
(100, 'Masculino', 'robert@hotmail.com', '112314', '', '', '06785-100 ', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00', '', '', 'm', '', ''),
(101, 'Masculino', 'robert@hotmail.com', '112314', '', '', '06785-100 ', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00', '', '', 'm', '', ''),
(102, 'Masculino', 'robert@hotmail.com334', '112314', '', 'Jardim Panorama', '06785-100 ', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00', '', 'Taboão da Serra', 'm', 'SP', ''),
(103, 'Masculino', 'robert@hotmail.com', '112314', '12312312312312', 'Rua Ananias Carmerindo Pires', '06785-100 ', '1231231312312', '123123', '123.431.242-34', '81dc9bdb52d04dc20036dbd8313ed055', '0000-00-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(104, 'testesist', 'teste@1234.com', '112314', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100 ', 'n3', 'c2', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(105, 'testesist', 'teste@1234.com', '', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100 ', 'n3', 'c2', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', ''),
(106, 'testesist', 'teste@1234.com', '', '(11) 111111111', 'Rua Ananias Carmerindo Pires', '06785-100 ', 'n3', 'c2', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'Jardim Panorama', 'Taboão da Serra', 'm', 'SP', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agendadent`
--
ALTER TABLE `tb_agendadent`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `id_funcionarios` (`id_funcionarios`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `tb_cargos`
--
ALTER TABLE `tb_cargos`
  ADD PRIMARY KEY (`id_Cargos`);

--
-- Indexes for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD PRIMARY KEY (`id_Funcionarios`),
  ADD KEY `fk_tb_Funcionarios_id` (`id_Cargos`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agendadent`
--
ALTER TABLE `tb_agendadent`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tb_cargos`
--
ALTER TABLE `tb_cargos`
  MODIFY `id_Cargos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  MODIFY `id_Funcionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_agendadent`
--
ALTER TABLE `tb_agendadent`
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_Usuario`),
  ADD CONSTRAINT `tb_agendadent_ibfk_1` FOREIGN KEY (`id_funcionarios`) REFERENCES `tb_funcionarios` (`id_Funcionarios`);

--
-- Limitadores para a tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD CONSTRAINT `fk_tb_Funcionarios_id` FOREIGN KEY (`id_Cargos`) REFERENCES `tb_cargos` (`id_Cargos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
