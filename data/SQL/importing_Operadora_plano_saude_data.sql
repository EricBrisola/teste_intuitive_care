USE teste_intuitive_care;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Relatorio_cadop_fixed.csv'
INTO TABLE Operadora_plano_saude
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(Registro_ANS, CNPJ, Razao_Social, Nome_Fantasia, Modalidade, Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP, ddd, Telefone, Fax, Endereco_eletronico, Representante, Cargo_Representante, Regiao_de_Comercializacao, @Data_Registro_ANS)
SET Data_Registro_ANS = REPLACE(@Data_Registro_ANS, '\r', '');