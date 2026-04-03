USE LojaDeVinhos;

CREATE TABLE Regiao (
  codRegiao BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeRegiao VARCHAR(100) NOT NULL,
  descricaoRegiao TEXT
);
