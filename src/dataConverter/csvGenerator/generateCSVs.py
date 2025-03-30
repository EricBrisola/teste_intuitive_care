def generateCSVs(formattedDataframe, path):
    try:
        formattedDataframe.to_csv(path,
                                  sep=";", index=False)
        return True
    except Exception as err:
        print(f"Erro ao gerar csv: {err}")
