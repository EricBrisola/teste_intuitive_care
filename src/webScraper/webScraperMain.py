from scraper.pdfList import pdfs
from webScraper.scraper.downloadPdfs import downloadPdfs
from webScraper.processor.mergeFiles import merger
from webScraper.processor.compactFiles import compactor


def run():
    downloadedPdfPaths = downloadPdfs(pdfs)

    downloadedPdfPaths.sort()

    mergedFilePath = merger(downloadedPdfPaths)

    compactor(mergedFilePath, "compressedPdfs")


run()
