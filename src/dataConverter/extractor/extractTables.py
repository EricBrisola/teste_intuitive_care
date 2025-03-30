from tabula import read_pdf


def extractTables(path):
    tables = read_pdf(path,
                      pages="all", encoding="ISO-8859-1", lattice=True)
    return tables
