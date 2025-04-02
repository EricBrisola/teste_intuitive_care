SELECT 
    razao_Social AS Operadora,
    cnpj AS CNPJ, 
    registro_ANS AS ANS, 
    data_registro_ANS AS registrado_desde, 
    (SUM(vl_saldo_inicial) - SUM(vl_saldo_final)) AS Despesas
	FROM Operadora_plano_saude op
    JOIN demonstracao_contabil de
    ON registro_ANS = reg_ans
    WHERE descricao LIKE 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%'
		AND registro_data >= '2024-10-01'
    GROUP BY razao_Social, cnpj
    ORDER BY Despesas DESC
    LIMIT 10;
    
SELECT razao_Social AS Operadora,
    cnpj AS CNPJ, 
    registro_ANS AS ANS, 
    data_registro_ANS AS registrado_desde, 
    (SUM(vl_saldo_inicial) - SUM(vl_saldo_final)) AS Despesas
	FROM Operadora_plano_saude op
    JOIN demonstracao_contabil de
    ON registro_ANS = reg_ans
    WHERE descricao LIKE 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%'
		AND registro_data >= '2024-01-01'
    GROUP BY razao_Social, cnpj
    ORDER BY Despesas DESC
    LIMIT 10;