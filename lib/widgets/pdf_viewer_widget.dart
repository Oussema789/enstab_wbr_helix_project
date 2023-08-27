import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PDFViewerWidget extends StatefulWidget {
  final String pdfPath;
  const PDFViewerWidget({Key? key, required this.pdfPath}) : super(key: key);

  @override
  State<PDFViewerWidget> createState() => _PDFViewerWidgetState();
}

class _PDFViewerWidgetState extends State<PDFViewerWidget> {
  late PdfController _pdfController;
  late double _pdfWidth = 0;
  late double _pdfHeight = 0;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfController(
      document: PdfDocument.openAsset(widget.pdfPath),
    );
    _getPdfDimensions();
  }

  Future<void> _getPdfDimensions() async {
    try {
      final PdfDocument document = await PdfDocument.openAsset(widget.pdfPath);
      final PdfPage page = await document
          .getPage(1); // Assuming you want the dimensions of the first page
      final double pageWidth = page.width;
      final double pageHeight = page.height;
      setState(() {
        _pdfWidth = pageWidth;
        _pdfHeight = pageHeight;
      });
      page.close(); // Close the page after getting the dimensions
      document.close(); // Close the document after getting the dimensions
    } catch (e) {
      // Handle any errors that may occur while opening or reading the document
      print("Error getting PDF dimensions: $e");
    }
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              height: _pdfHeight * 0.65,
              width: _pdfWidth,
              child: PdfView(
                builders: PdfViewBuilders<DefaultBuilderOptions>(
                  options: const DefaultBuilderOptions(),
                  pageLoaderBuilder: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  pageBuilder: _pageBuilder,
                ),
                controller: _pdfController,
              ),
            ),
            Container(
              width: _pdfWidth,
              color: Colors.grey,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.navigate_before),
                    onPressed: () {
                      _pdfController.previousPage(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 100),
                      );
                    },
                  ),
                  PdfPageNumber(
                    controller: _pdfController,
                    builder: (_, loadingState, page, pagesCount) => Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$page/${pagesCount ?? 0}',
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.navigate_next),
                    onPressed: () {
                      _pdfController.nextPage(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 100),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {
                      _pdfController.loadDocument(
                        PdfDocument.openAsset('assets/pdfs/test.pdf'),
                      );
                    },
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _pageBuilder(
    BuildContext context,
    Future<PdfPageImage> pageImage,
    int index,
    PdfDocument document,
  ) {
    return PhotoViewGalleryPageOptions(
      imageProvider: PdfPageImageProvider(
        pageImage,
        index,
        document.id,
      ),
      minScale: PhotoViewComputedScale.contained * 0.8,
      maxScale: PhotoViewComputedScale.contained * 10,
      initialScale: PhotoViewComputedScale.contained * 1.0,
      heroAttributes: PhotoViewHeroAttributes(tag: '${document.id}-$index'),
    );
  }
}
