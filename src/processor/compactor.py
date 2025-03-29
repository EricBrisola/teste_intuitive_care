from zipfile import ZipFile
import os


def compactor(fileToZip):
    if not fileToZip:
        print("Necessário um arquivo para compactar")
        return

    try:
        with ZipFile("data/zipped/compressedPdfs.zip", "w") as zip:
            zip.write(fileToZip, arcname=os.path.basename(fileToZip))
            print("Compactado com sucesso!")

    except Exception as err:
        print(f"Erro ao compactar arquivos: {err}")
