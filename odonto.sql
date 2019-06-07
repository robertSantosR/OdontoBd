-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Jun-2019 às 02:37
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
  `horario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_agendadent`
--

INSERT INTO `tb_agendadent` (`id_agenda`, `id_funcionarios`, `data`, `horario`) VALUES
(22, 6, '2019-05-24', '09:40:00'),
(23, 7, '1999-03-12', '10:20:00'),
(24, 7, '1999-03-12', '10:20:00');

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
-- Estrutura da tabela `tb_consulta`
--

CREATE TABLE `tb_consulta` (
  `id_Consulta` int(11) NOT NULL,
  `id_Funcionarios` int(11) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `id_Procedimento` int(11) NOT NULL,
  `id_agenda` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_consulta`
--

INSERT INTO `tb_consulta` (`id_Consulta`, `id_Funcionarios`, `id_Usuario`, `id_Procedimento`, `id_agenda`, `data`, `hora`) VALUES
(32, 7, 8, 1, 1, NULL, NULL),
(33, 7, 8, 1, 1, '1970-03-03', NULL),
(34, 7, 8, 1, 1, '1970-01-01', NULL),
(36, 7, 8, 1, 1, '1970-01-01', '09:40:00'),
(37, 7, 8, 1, 1, '1970-01-01', '09:40:00'),
(38, 7, 8, 1, 2, '1970-01-01', '09:40:00'),
(42, 7, 8, 1, 5, '2019-05-24', '10:20:00'),
(43, 7, 8, 1, 6, '1970-01-01', '09:40:00'),
(44, 7, 8, 1, 9, '2019-05-24', '10:00:00'),
(49, 6, 8, 1, 10, '2019-05-24', '09:20:00'),
(50, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(51, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(52, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(53, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(54, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(55, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(56, 6, 8, 1, 11, '2019-05-24', '09:20:00'),
(57, 6, 8, 1, 12, '2019-05-24', '09:20:00'),
(58, 6, 8, 1, 12, '2019-05-24', '09:20:00'),
(59, 6, 8, 1, 12, '2019-05-24', '09:20:00'),
(60, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(61, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(62, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(63, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(64, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(65, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(66, 6, 8, 1, 13, '2019-05-24', '09:20:00'),
(67, 6, 8, 1, 14, '1970-01-01', '09:20:00'),
(68, 6, 8, 1, 14, '1970-01-01', '09:20:00'),
(69, 6, 8, 1, 15, '1970-01-01', '09:20:00'),
(70, 6, 8, 1, 16, '1970-01-01', '09:20:00'),
(71, 6, 8, 1, 16, '1970-01-01', '09:20:00'),
(72, 6, 8, 1, 17, '1970-01-01', '09:20:00'),
(73, 6, 8, 1, 18, '1970-01-01', '09:20:00'),
(74, 6, 8, 1, 19, '1970-01-01', '09:20:00'),
(75, 6, 8, 1, 20, '2019-05-24', '09:40:00'),
(76, 6, 8, 1, 21, '2019-05-24', '09:40:00');

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
  `senha` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_funcionarios`
--

INSERT INTO `tb_funcionarios` (`id_Funcionarios`, `id_Cargos`, `Funcionario`, `dataNascimento`, `Telefone`, `Celular`, `RG`, `CPF`, `senha`) VALUES
(3, 1, 'Vagner', '1999-03-09', '1111-1111', '2222-22222', '39.480.087-4', '111.222.333-45', NULL),
(4, 1, 'robert', '2019-05-17', '41395253', '1194667885', '394800874', '49184667885', '202cb962ac59075b964b07152d234b70'),
(5, 1, 'robert', '2019-05-17', '41395253', '1194667885', '394800874', '49184667885', '202cb962ac59075b964b07152d234b70'),
(6, 2, 'robert', '2019-05-08', '41395253', '1194667885', '1234', '49184667885', '202cb962ac59075b964b07152d234b70'),
(7, 2, 'joseCirurgiao', '2019-05-08', '41395253', '1194667885', '396544896', '48831767885', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_procedimento`
--

CREATE TABLE `tb_procedimento` (
  `id_Procedimento` int(11) NOT NULL,
  `Procedimento` varchar(20) NOT NULL,
  `Valor` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_procedimento`
--

INSERT INTO `tb_procedimento` (`id_Procedimento`, `Procedimento`, `Valor`) VALUES
(1, 'Limpeza', '150');

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
  `senha` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_Usuario`, `paciente`, `Email`, `Telefone`, `Celular`, `senha`, `endereco`, `cep`, `numero`, `complemento`, `cpf`) VALUES
(1, 'dd', 'erew', '112314', '1147013758', NULL, 'rua helena', '06767390 ', 'dsf', '11645', '39166978890'),
(2, 'a', 'a', '112314', '', NULL, '', ' ', '', '', ''),
(3, 'a', 'b@ocm.c', '112314', '', NULL, '', ' ', '', '', ''),
(4, 'a', 'ab@ab.com', '112314', '', NULL, '', ' ', '', '', ''),
(5, 'elias', 'elias@hotmail.com', '', '', '123', '', '', '', '', ''),
(6, 'robert', 'robert@hotmail.com', '112314', '1194667885', NULL, 'rua ananias carmerindo pires', '06785100 ', '405', 'c2', '49184667885'),
(7, 'vagner', 'vagner@hotmail.com', '112314', '1194667885', NULL, 'rua ananias carmerindo pires', '06785100 ', '405', 'c2', '49184667885'),
(8, 'robert', 'robert@hotmail.com', '112314', '1194667885', '123', 'rua ananias carmerindo pires', '06785100 ', '405', 'c2', '49184667885');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agendadent`
--
ALTER TABLE `tb_agendadent`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `id_funcionarios` (`id_funcionarios`);

--
-- Indexes for table `tb_cargos`
--
ALTER TABLE `tb_cargos`
  ADD PRIMARY KEY (`id_Cargos`);

--
-- Indexes for table `tb_consulta`
--
ALTER TABLE `tb_consulta`
  ADD PRIMARY KEY (`id_Consulta`),
  ADD KEY `fk_tb_Consulta_id_Usuario` (`id_Usuario`),
  ADD KEY `fk_tb_Consulta_id` (`id_Funcionarios`),
  ADD KEY `fk_tb_Consulta_id_Procedimento` (`id_Procedimento`);

--
-- Indexes for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD PRIMARY KEY (`id_Funcionarios`),
  ADD KEY `fk_tb_Funcionarios_id` (`id_Cargos`);

--
-- Indexes for table `tb_procedimento`
--
ALTER TABLE `tb_procedimento`
  ADD PRIMARY KEY (`id_Procedimento`);

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
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_cargos`
--
ALTER TABLE `tb_cargos`
  MODIFY `id_Cargos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_consulta`
--
ALTER TABLE `tb_consulta`
  MODIFY `id_Consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  MODIFY `id_Funcionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_procedimento`
--
ALTER TABLE `tb_procedimento`
  MODIFY `id_Procedimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_agendadent`
--
ALTER TABLE `tb_agendadent`
  ADD CONSTRAINT `tb_agendadent_ibfk_1` FOREIGN KEY (`id_funcionarios`) REFERENCES `tb_funcionarios` (`id_Funcionarios`);

--
-- Limitadores para a tabela `tb_consulta`
--
ALTER TABLE `tb_consulta`
  ADD CONSTRAINT `fk_tb_Consulta_id` FOREIGN KEY (`id_Funcionarios`) REFERENCES `tb_funcionarios` (`id_Funcionarios`),
  ADD CONSTRAINT `fk_tb_Consulta_id_Procedimento` FOREIGN KEY (`id_Procedimento`) REFERENCES `tb_procedimento` (`id_Procedimento`),
  ADD CONSTRAINT `fk_tb_Consulta_id_Usuario` FOREIGN KEY (`id_Usuario`) REFERENCES `tb_usuario` (`id_Usuario`);

--
-- Limitadores para a tabela `tb_funcionarios`
--
ALTER TABLE `tb_funcionarios`
  ADD CONSTRAINT `fk_tb_Funcionarios_id` FOREIGN KEY (`id_Cargos`) REFERENCES `tb_cargos` (`id_Cargos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
