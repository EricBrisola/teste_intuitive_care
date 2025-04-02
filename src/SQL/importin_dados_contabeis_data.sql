USE teste_intuitive_care;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\1T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');
    


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\2T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\3T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\4T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\1T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\2T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\3T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\4T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_FINAL = REPLACE(@var_vl_saldo_final, ',', '.');




