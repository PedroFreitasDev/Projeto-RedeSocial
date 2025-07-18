
-- -----------------------------------------------------
-- Table `Perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Perfil` (
  `idPerfil` INT NOT NULL,
  `Nome` VARCHAR(16) NOT NULL,
  `Bio` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idPerfil`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(32) NOT NULL,
  `idPerfil` INT NOT NULL,
  PRIMARY KEY (`IdUsuario`),
  INDEX `fk_usuarios_Perfil_idx` (`idPerfil` ASC) VISIBLE,
  CONSTRAINT `fk_usuarios_Perfil`
    FOREIGN KEY (`idPerfil`)
    REFERENCES `Perfil` (`idPerfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

