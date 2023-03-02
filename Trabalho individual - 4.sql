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
  `Locais` Local,
  `CEP` Local,
  `Email` varchar(255)
);

CREATE TABLE `Cursos`.`da_instituicao` (
  `code` int PRIMARY KEY,
  `Cursos` varchar(255),
  `Turnos` varchar(255),
  `Vagas` varchar(255)
);

CREATE TABLE `Turmas`.`de_aulas` (
  `order_id` int,
  `Turnos` varchar(255),
  `Cursos` varchar(255)
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

ALTER TABLE `Local`.`das_instituicoes` ADD FOREIGN KEY (`Locais`) REFERENCES `Instituto`.`Resilia` (`Locais`);

ALTER TABLE `Local`.`das_instituicoes` ADD FOREIGN KEY (`Email`) REFERENCES `Instituto`.`Resilia` (`id`);

ALTER TABLE `Cursos`.`da_instituicao` ADD FOREIGN KEY (`Turnos`) REFERENCES `Turmas`.`de_aulas` (`Turnos`);

ALTER TABLE `Cursos`.`da_instituicao` ADD FOREIGN KEY (`Vagas`) REFERENCES `Turmas`.`de_aulas` (`Cursos`);

ALTER TABLE `Aluno`.`1` ADD FOREIGN KEY (`matricula`) REFERENCES `Turmas`.`de_aulas` (`Cursos`);

ALTER TABLE `Aluno`.`1` ADD FOREIGN KEY (`admin_id`) REFERENCES `Instituto`.`Resilia` (`Cursos`);

ALTER TABLE `Aluno`.`2` ADD FOREIGN KEY (`matricula`) REFERENCES `Turmas`.`de_aulas` (`Cursos`);

ALTER TABLE `Aluno`.`2` ADD FOREIGN KEY (`admin_id`) REFERENCES `Instituto`.`Resilia` (`Cursos`);
