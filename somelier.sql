CREATE USER 'Sommelier'@'localhost' IDENTIFIED BY 'root';

GRANT SELECT(nomeVinho, anoVinho) ON Vinho TO 'Sommelier'@'localhost';
GRANT SELECT(codVinicola, nomeVinicola) ON Vinicola TO 'Sommelier'@'localhost';

ALTER USER 'Sommelier'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;