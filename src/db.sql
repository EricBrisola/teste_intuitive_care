CREATE DATABASE demonstracoes_contabeis;

CREATE TABLE Operadora_plano_saude (
	Registro_ANS VARCHAR(8) NOT NULL,
    CNPJ VARCHAR(14) NOT NULL,
    Razao_Social VARCHAR(255) NOT NULL,
	Nome_Fantasia VARCHAR(80),
    Modalidade VARCHAR(50) NOT NULL,
    Logradouro VARCHAR(80) NOT NULL,
    Numero VARCHAR(8) NOT NULL,
    Complemento VARCHAR(50) NOT NULL,
    Bairro VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    UF ENUM('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO') NOT NULL,
    CEP VARCHAR(8) NOT NULL,
    DDD INT,
    Telefone VARCHAR(9),
    Fax VARCHAR(9),
    Endereco_eletronico VARCHAR(70),
    Representante VARCHAR(70) NOT NULL,
    Cargo_Representant VARCHAR(70) NOT NULL,
    Regiao_de_Comercializacao INT CHECK (Regiao_de_Comercializacao BETWEEN 0 AND 7),
    Data_Registro_ANS DATE NOT NULL,
    PRIMARY KEY (Registro_ANS, CNPJ)
);