-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.26 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para calendario
CREATE DATABASE IF NOT EXISTS `calendario` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `calendario`;

-- Copiando estrutura para tabela calendario.convites
CREATE TABLE IF NOT EXISTS `convites` (
  `id_convite` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_destinatario` int(11) NOT NULL,
  `fk_id_remetente` int(11) NOT NULL,
  `fk_id_evento` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_convite`),
  KEY `fk_id_destinatario` (`fk_id_destinatario`),
  KEY `fk_id_remetente` (`fk_id_remetente`),
  KEY `fk_id_evento` (`fk_id_evento`),
  CONSTRAINT `convites_ibfk_1` FOREIGN KEY (`fk_id_destinatario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `convites_ibfk_2` FOREIGN KEY (`fk_id_remetente`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `convites_ibfk_3` FOREIGN KEY (`fk_id_evento`) REFERENCES `eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela calendario.convites: ~0 rows (aproximadamente)
DELETE FROM `convites`;
/*!40000 ALTER TABLE `convites` DISABLE KEYS */;
/*!40000 ALTER TABLE `convites` ENABLE KEYS */;

-- Copiando estrutura para tabela calendario.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_usuario` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `recorrencia` varchar(255) NOT NULL,
  `cor` varchar(7) DEFAULT NULL,
  `inicio` datetime NOT NULL,
  `termino` datetime DEFAULT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela calendario.eventos: ~2 rows (aproximadamente)
DELETE FROM `eventos`;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` (`id_evento`, `fk_id_usuario`, `titulo`, `descricao`, `recorrencia`, `cor`, `inicio`, `termino`) VALUES
	(14, 2, 'teste', 'teste', '', '#008000', '2022-03-11 00:00:00', '2022-04-14 00:00:00'),
	(15, 2, 'Novo Teste', 'Teste numero 3', 'A Cada Ano', '#0071c5', '2022-03-02 00:00:00', '2022-03-03 00:00:00');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;

-- Copiando estrutura para tabela calendario.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  `senha` text NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela calendario.usuarios: ~2 rows (aproximadamente)
DELETE FROM `usuarios`;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuario`, `nome`, `senha`) VALUES
	(1, 'Bruno', '574616d5bea6032c4b7879006f47357b22ecbcb9'),
	(2, 'Christiano', '4adb9bcb892b072b38ec53c96c380346c81e6f2a');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
