import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyCv extends StatefulWidget {
  MyCv({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCv> createState() => _MyCvState();
}

class _MyCvState extends State<MyCv> {

  PdfViewerController? _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }
bool isZoomIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        _pdfViewerController!.zoomLevel = 1;

      },child: const Icon(Icons.zoom_in)),
      body: SizedBox(
        child: SfPdfViewer.network(
          'https://download948.mediafire.com/0g2rh1eoxzxg/m4hu4qujesnxbrz/Mostafa+Mahmoud+cv.pdf',
          canShowHyperlinkDialog: false,
          controller: _pdfViewerController,

        ),
      ),
    );
  }
}
