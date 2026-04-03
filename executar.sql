SELECT V.nomeVinho, V.anoVinho, VI.nomeVinicola, R.nomeRegiao
FROM Vinho V
INNER JOIN Vinicola VI ON V.codVinicola = VI.codVinicola
INNER JOIN Regiao R ON VI.codRegiao = R.codRegiao;