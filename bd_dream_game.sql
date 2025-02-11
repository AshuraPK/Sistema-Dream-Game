-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/02/2025 às 15:43
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_dream_game`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_jogos`
--

CREATE TABLE `tb_jogos` (
  `Id_jogos` int(11) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  `Avaliacao` int(5) NOT NULL,
  `Tamanho` int(11) NOT NULL,
  `Descricao` varchar(225) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Desenvolvedor` varchar(150) NOT NULL,
  `Genero` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_jogos`
--

INSERT INTO `tb_jogos` (`Id_jogos`, `Titulo`, `Avaliacao`, `Tamanho`, `Descricao`, `Valor`, `Desenvolvedor`, `Genero`) VALUES
(1, 'Devil May Cry', 9, 2, 'Devil May Cry é uma franquia de jogos de ação e hack and slash da Capcom, focada em combates rápidos e estilosos. O protagonista, Dante, é um caçador de demônios carismático que luta contra forças do mal usando espadas e arma', 0, 'Dantas', 'Ação');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_jogos`
--
ALTER TABLE `tb_jogos`
  ADD PRIMARY KEY (`Id_jogos`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_jogos`
--
ALTER TABLE `tb_jogos`
  MODIFY `Id_jogos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
