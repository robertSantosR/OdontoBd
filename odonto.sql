-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Jul-2019 às 03:24
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
(55, 7, '2019-06-08', '14:00:00', 1, 5),
(56, 6, '2019-06-08', '09:40:00', 1, 5),
(57, 7, '2019-06-08', '11:00:00', 1, 5),
(58, 6, '2019-06-08', '11:00:00', 1, 5),
(59, 7, '2019-06-08', '10:00:00', 1, 5),
(60, 7, '2019-06-08', '09:20:00', 1, 8),
(61, 7, '2019-06-08', '11:00:00', 1, 6),
(62, 7, '2019-06-08', '17:00:00', 1, 6),
(63, 7, '2019-06-08', '16:20:00', 1, 6),
(64, 6, '2019-06-10', '09:20:00', 1, 10),
(65, 7, '2019-06-10', '09:20:00', 1, 6),
(66, 8, '2019-06-10', '09:20:00', 1, 8),
(67, 6, '2019-06-10', '09:20:00', 1, NULL),
(68, 7, '2019-06-10', '09:20:00', 1, NULL),
(69, 8, '2019-06-10', '09:20:00', 1, NULL),
(70, 7, '2019-06-17', '09:20:00', 1, 5),
(71, 7, '2019-06-18', '09:20:00', 1, NULL),
(72, 7, '2019-06-19', '09:20:00', 1, 10),
(73, 8, '2019-06-17', '12:40:00', 1, NULL),
(74, 7, '2019-06-17', '12:40:00', 1, NULL),
(75, 6, '2019-06-17', '12:40:00', 1, 17),
(76, 7, '2019-06-30', '15:20:00', 1, NULL),
(77, 8, '2019-06-30', '15:20:00', 1, 21),
(78, 7, '2019-06-26', '09:20:00', 1, NULL),
(79, 8, '2019-06-26', '09:20:00', 1, NULL),
(80, 8, '2019-06-27', '12:00:00', 1, NULL),
(81, 7, '2019-06-27', '14:00:00', 1, NULL);

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
(9, 1, 'robert', '0000-00-00', '41395253', '974402161', '394588469', '49184667885', '202cb962ac59075b964b07152d234b70', 'robertadm@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_Usuario` int(11) NOT NULL,
  `paciente` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
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
(5, 'elias', 'elias@hotmail.com', '112314', '1194667885', 'rua ananias carmerindo pires', ' 06785100 ', '405', ' c2', '', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'jd_panorama', 'taboão da serra', 'm', 'CE', ''),
(6, 'Robert santos', 'robert@hotmail.com', '112314', '1194667885', 'rua ananias carmerindo pires', '     06785100 ', '405', '     c2', '49184667885', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'jd_panorama', 'taboão da serra', 'm', 'SP', ''),
(8, 'robert santos dos re', 'robert@hotmail.com', '112314', '1194667885', 'rua ananias carmerindo pires', ' 06785100 ', '405', ' c2', '49184667885', '', '0000-00-00', 'jd_panorama', 'taboão da serra', 'm', 'CE', ''),
(10, '', '', '', '', '', ' 06785100 ', '405', ' ', '', '202cb962ac59075b964b07152d234b70', '0000-00-00', 'jd_panorama', '', '', '', ''),
(17, 'luis', 'luis@teste.com', '(11) 11111111', '(11) 111111111', '', '', '', '', '111.111.111-11', '3978da5adde4e4ce8f9fe1d45649761f', '2019-06-19', '', '', '', '', ''),
(18, 'usuario teste', 'usuario@teste.com', '(11) 11111111', '(11) 111111111', '', '', '', '', '111.111.111-11', '202cb962ac59075b964b07152d234b70', '2019-06-26', '', '', '', '', ''),
(19, 'usuario2', 'usario2@teste.com', '112314', '(15) 145451584', 'jd panora', '06785-100 ', '1111', 'c12', '111.111.111-11', '202cb962ac59075b964b07152d234b70', '0000-00-00', '', '', '', '', ''),
(20, 'vagenerTeste', 'vagen123@hotmail.com', '(11) 11111111', '(11) 111111111', '', '', '', '', '391.669.788-90', '202cb962ac59075b964b07152d234b70', '1989-10-16', '', '', '', '', ''),
(21, 'teste', 'teste123@hotmail.com', '(11) 11111111', '(11) 111111111', '', '', '', '', '111.111.111-11', 'caf1a3dfb505ffed0d024130f58c5cfa', '1111-11-11', '', '', '', '', ''),
(22, 'testador', 'robert1@hotmail.com', '(31) 23213213', '(13) 123123232', 'jose damiao', '06785-100', '400', 'c12', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'taboao', 'm', 'SP', ''),
(23, 'robert santos dos re', 'robert-santosrrsasd@hotma', '(13) 12321322', '(32) 652222222', 'jose damiao', '06785-100', '400', 'x3', '491.846.678-85', '202cb962ac59075b964b07152d234b70', '1999-03-09', '22222222222222222', 'taboao', 'm', 'RN', ''),
(24, 'robert santos dos re', 'teste17@teste.com', '(11) 54222222', '(15) 145451584', 'jose damiao', '06785-100', '400', 'x3', '455.467.845-12', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'taboao', 'f', 'PE', ''),
(25, 'robert santos dos re', 'teste20@teste.com', '(11) 54222222', '(15) 145451584', 'jose damiao', '06785-100', '400', 'x3', '455.467.845-20', '202cb962ac59075b964b07152d234b70', '1999-03-09', 'Jardim Panorama', 'taboao', 'f', 'PE', '');

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
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tb_cargos`
--
ALTER TABLE `tb_cargos`
  MODIFY `id_Cargos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  MODIFY `id_Funcionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
