CREATE DATABASE teste_intuitive_care;

USE teste_intuitive_care;

CREATE TABLE IF NOT EXISTS Operadora_plano_saude (
	registro_ans VARCHAR(8) PRIMARY KEY,
    cnpj VARCHAR(14) NOT NULL UNIQUE,
    razao_social VARCHAR(255) NOT NULL,
	nome_rantasia VARCHAR(80),
    modalidade VARCHAR(50) NOT NULL,
    logradouro VARCHAR(80) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf ENUM('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO') NOT NULL,
    cep VARCHAR(8) NOT NULL,
    ddd VARCHAR(2),
    telefone VARCHAR(12),
    fax VARCHAR(12),
    endereco_eletronico VARCHAR(70),
    representante VARCHAR(70) NOT NULL,
    cargo_representante VARCHAR(70) NOT NULL,
    regiao_de_comercializacao VARCHAR(1),
    data_registro_ans DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Demonstracao_contabil (
    id INT AUTO_INCREMENT PRIMARY KEY,
	registro_data DATE NOT NULL,
    reg_ans VARCHAR(8) NOT NULL,
    cd_conta_contabil VARCHAR(9) NOT NULL,
    descricao VARCHAR(160) NOT NULL,
    vl_saldo_inicial DECIMAL(13, 2) NOT NULL,
    vl_saldo_final DECIMAL(13, 2) NOT NULL
    
);

CREATE INDEX idx_registro_data_ans ON demonstracao_contabil (registro_data, reg_ans);






