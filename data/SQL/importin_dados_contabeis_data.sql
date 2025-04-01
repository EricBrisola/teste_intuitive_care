USE teste_intuitive_care;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Relatorio_cadop_fixed.csv'
INTO TABLE Operadora_plano_saude
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Registro_ANS, CNPJ, Razao_Social, Nome_Fantasia, Modalidade, Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP, @varddd, Telefone, Fax, Endereco_eletronico, Representante, Cargo_Representante, @varRegiao_de_Comercializacao, Data_Registro_ANS)
SET DDD = NULLIF(@var_ddd, ''),
	Regiao_de_Comercializacao = NULLIF(@varRegiao_de_Comercializacao, '');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\1T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');
    


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\2T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\3T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\4T2023.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\1T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\2T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\3T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\demonstracoes_contabeis\\4T2024.csv'
INTO TABLE Demonstracao_contabil
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@registro_data, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, @var_vl_saldo_inicial, @var_vl_saldo_final)
SET registro_data = @registro_data,
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_inicial, ',', '.'),
	VL_SALDO_INICIAL = REPLACE(@var_vl_saldo_final, ',', '.');

SELECT *
FROM operadora_plano_saude
order by razao_social asc;

SELECT DISTINCT reg_ans 
FROM demonstracao_contabil 
WHERE reg_ans NOT IN (SELECT registro_ANS FROM operadora_plano_saude);

select count(*) from Demonstracao_contabil;

SELECT DISTINCT reg_ans 
FROM demonstracao_contabil 
WHERE reg_ans NOT IN (SELECT registro_ANS FROM operadora_plano_saude);

select * 
	from operadora_plano_saude
    where registro_ANS = '419915';








