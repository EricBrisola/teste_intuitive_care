from scraper.pdfList import pdfs
from scraper.downloadPdfs import downloadPdfs
from processor.mergeFiles import merger
from processor.compactFiles import compactor


def run():
    downloadedPdfPaths = downloadPdfs(pdfs)

    downloadedPdfPaths.sort()

    mergedFilePath = merger(downloadedPdfPaths)

    compactor(mergedFilePath, "compressedPdfs")


run()
