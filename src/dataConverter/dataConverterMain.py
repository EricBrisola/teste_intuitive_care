from extractor.extractTables import extractTables
from formatter.formatTables import concatAndFormatTables
from csvGenerator.generateCSVs import generateCSVs
from compactor.compactFiles import compactor


def run():

    createdCSVPath = "data/CSVs/Teste_Eric_Brisola.csv"

    tables = extractTables("data/downloads/pdf1.pdf")
    formattedTablesDf = concatAndFormatTables(tables)

    generatedSuccessfully = generateCSVs(
        formattedTablesDf, createdCSVPath)

    if generatedSuccessfully:
        compactor(createdCSVPath, "Teste_Eric_Brisola")


run()
