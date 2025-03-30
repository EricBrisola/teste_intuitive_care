import wget


def downloadPdfs(paths):
    pathList = []

    if len(paths) < 1:
        print("Nenhum pdf fornecido")
        return

    try:
        for i, path in enumerate(paths):
            downloadPath = wget.download(
                path, out=f'data/downloads/pdf{i+1}.pdf')
            pathList.append(downloadPath)
        print("\nBaixado com sucesso!")

    except Exception as err:
        print(f'Erro ao baixar pdfs: {err}')
    finally:
        return pathList
