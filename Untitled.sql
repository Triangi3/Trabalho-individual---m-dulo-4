CREATE SCHEMA `Instituto`;

CREATE SCHEMA `Local`;

CREATE SCHEMA `Cursos`;

CREATE SCHEMA `Turmas`;

CREATE SCHEMA `Aluno`;

CREATE TABLE `Instituto`.`Resilia` (
  `id` int(2262),
  `Cursos` varchar(255),
  `Turnos` varchar(255),
  `Locais` Local
);

CREATE TABLE `Local`.`das_instituicoes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `full_name` varchar(255),
  `created_at` timestamp,
  `country_code` int
);

CREATE TABLE `Cursos`.`da_instituicao` (
  `code` int PRIMARY KEY,
  `Cursos` varchar(255),
  `Turnos` varchar(255),
  `Vagas` varchar(255)
);

CREATE TABLE `Turmas`.`des_aulas` (
  `order_id` int,
  `product_id` int,
  `quantity` int DEFAULT 1
);

CREATE TABLE `Aluno`.`1` (
  `id` int,
  `nome` varchar(100),
  `data_nasc` date,
  `sexo` ENUM,
  `CPF` varchar(11),
  `matricula` varchar(255),
  `admin_id` int,
  PRIMARY KEY (`id`, `nome`)
);

CREATE TABLE `Aluno`.`2` (
  `id` int,
  `nome` varchar(100),
  `data_nasc` date,
  `sexo` ENUM,
  `CPF` varchar(11),
  `matricula` varchar(255),
  `admin_id` int,
  PRIMARY KEY (`id`, `nome`)
);
