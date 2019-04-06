
CREATE TABLE `disciplina` (
  `iddisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_nasc` date NOT NULL,
  `nome_mae` varchar(45) NOT NULL,
  `titulacao` int(11) NOT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `prof_disc` (
  `idprof_disc` int(11) NOT NULL AUTO_INCREMENT,
  `id_prof` int(11) NOT NULL,
  `id_disc` int(11) NOT NULL,
  PRIMARY KEY (`idprof_disc`),
  KEY `fk_id_prof_idx` (`id_prof`),
  KEY `fk_id_disc_idx` (`id_disc`),
  CONSTRAINT `fk_id_disc` FOREIGN KEY (`id_disc`) REFERENCES `disciplina` (`iddisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_prof` FOREIGN KEY (`id_prof`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8