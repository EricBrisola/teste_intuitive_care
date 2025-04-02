## Estrutura do Projeto

```
teste_intuitive_care-main/
  data/
    CSVs/
      demonstracoes_contabeis/
        (arquivos CSV)
    SQL/
      (arquivos SQL)
    downloads/
      (arquivos PDF)
    merged/
      merged_pdfs.pdf
    zipped/
      (arquivos ZIP)
  src/
    dataConverter/
      (scripts de conversão e formatação)
    webScraper/
      (scripts para download e processamento de PDFs)
```

## Bibliotecas Necessárias

Instale as dependências antes de rodar o projeto:

```sh
pip install -r requirements.txt
```

## Como Rodar

1. Execute o web scraper para baixar os PDFs:
   ```sh
   python src/webScraper/webScraperMain.py
   ```
2. Extraia tabelas e converta em CSV:
   ```sh
   python src/dataConverter/dataConverterMain.py
   ```
3. Os arquivos processados estarão na pasta `data/`.
