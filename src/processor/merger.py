import PyPDF2


def merger(files):
    mergedFilePath = "data/merged/merged_pdfs.pdf"

    if len(files) < 1:
        print("Pdfs não encontrados")
        return

    try:
        merger = PyPDF2.PdfMerger()
        for file in files:
            if ".pdf" in file.lower():
                merger.append(file)

        with open(mergedFilePath, "wb") as mergedPdfs:
            merger.write(mergedPdfs)
            print("Mesclado com sucesso!")
            return mergedFilePath

    except Exception as err:
        print(f'Erro ao mesclar pdfs: {err}')
