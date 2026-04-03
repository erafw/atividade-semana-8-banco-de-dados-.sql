CREATE TABLE Vinho (
  codVinho BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeVinho VARCHAR(100) NOT NULL,
  tipoVinho VARCHAR(50),
  anoVinho INT,
  descricaoVinho TEXT,
  codVinicola BIGINT,
  FOREIGN KEY (codVinicola) REFERENCES Vinicola(codVinicola)
);
