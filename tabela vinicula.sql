CREATE TABLE Vinicola (
  codVinicola BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeVinicola VARCHAR(100) NOT NULL,
  descricaoVinicola TEXT,
  foneVinicola VARCHAR(15),
  emailVinicola VARCHAR(100),
  codRegiao BIGINT,
  FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);