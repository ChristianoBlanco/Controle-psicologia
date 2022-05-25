-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Mar-2022 às 20:35
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `calendario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadpacientes`
--

CREATE TABLE `cadpacientes` (
  `id` int(11) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `nomesocial` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `nomecontato1` varchar(255) NOT NULL,
  `telcontato1` varchar(255) NOT NULL,
  `nomecontato2` varchar(255) NOT NULL,
  `telcontato2` varchar(255) NOT NULL,
  `observacao` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadpacientes`
--

INSERT INTO `cadpacientes` (`id`, `cpf`, `nome`, `sobrenome`, `nomesocial`, `sexo`, `genero`, `telefone`, `email`, `endereco`, `numero`, `complemento`, `estado`, `cidade`, `pais`, `nomecontato1`, `telcontato1`, `nomecontato2`, `telcontato2`, `observacao`, `created`, `modified`) VALUES
(11, '08462662508', 'Ghost', 'Indefinido', 'Ghost', 'masculino', 'cisgenero', '21212121', 'ghost@gmail.com', 'Verdansk', '666', 'Sem complemento', 'Verdansk', 'Quary', 'USS', 'Capitão Price', '12345678', 'Roze', '1234567989', 'Testando Cadastro e pesquisa de pacientes	', '0000-00-00 00:00:00', NULL),
(12, '07548925811', 'Polina', 'Desconhecido', 'Polina', 'feminino', 'cisgenero', '212121', 'polina@gmail.com', 'Caldera', '120', 'Sem complemento', 'Caldera', 'Power Plant', 'USS', 'Ghost', '12345678', 'Roze', '1234567989', 'Testando cadastro e pesquisa	', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `convites`
--

CREATE TABLE `convites` (
  `id_convite` int(11) NOT NULL,
  `fk_id_destinatario` int(11) NOT NULL,
  `fk_id_remetente` int(11) NOT NULL,
  `fk_id_evento` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `fk_id_usuario` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `recorrencia` varchar(255) NOT NULL,
  `cor` varchar(7) DEFAULT NULL,
  `inicio` datetime NOT NULL,
  `termino` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `senha`) VALUES
(1, 'Bruno', '574616d5bea6032c4b7879006f47357b22ecbcb9'),
(2, 'Christiano', '4adb9bcb892b072b38ec53c96c380346c81e6f2a');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadpacientes`
--
ALTER TABLE `cadpacientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `convites`
--
ALTER TABLE `convites`
  ADD PRIMARY KEY (`id_convite`),
  ADD KEY `fk_id_destinatario` (`fk_id_destinatario`),
  ADD KEY `fk_id_remetente` (`fk_id_remetente`),
  ADD KEY `fk_id_evento` (`fk_id_evento`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadpacientes`
--
ALTER TABLE `cadpacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `convites`
--
ALTER TABLE `convites`
  MODIFY `id_convite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `convites`
--
ALTER TABLE `convites`
  ADD CONSTRAINT `convites_ibfk_1` FOREIGN KEY (`fk_id_destinatario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `convites_ibfk_2` FOREIGN KEY (`fk_id_remetente`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `convites_ibfk_3` FOREIGN KEY (`fk_id_evento`) REFERENCES `eventos` (`id_evento`);

--
-- Limitadores para a tabela `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
