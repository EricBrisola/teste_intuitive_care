from scraper.pdfList import pdfs
from scraper.downloader import downloadPdfs
from processor.merger import merger
from processor.compactor import compactor


downloadedPdfPaths = downloadPdfs(pdfs)

downloadedPdfPaths.sort()

mergedFilePath = merger(downloadedPdfPaths)

compactor(mergedFilePath)
