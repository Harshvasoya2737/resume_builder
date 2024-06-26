import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart'; // Import PdfPreview from printing package
import 'package:resume_builder/util.dart';

class My_pdf extends StatefulWidget {
  const My_pdf({Key? key}) : super(key: key);

  @override
  State<My_pdf> createState() => _My_pdfState();
}

class _My_pdfState extends State<My_pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PDF",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: PdfPreview(
        build: (format) {
          return createPdf();
        },
      ),
    );
  }

  Future<Uint8List> createPdf() async {
    var document = pw.Document();

    document.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Text(
                  "RESUME",
                  style: pw.TextStyle(
                    fontSize: 25,
                    font: pw.Font.helveticaBold(),
                  ),
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text("Name: ${resume.fname}", style: pw.TextStyle(fontSize: 20)),
              pw.Text("Address: ${resume.address}"),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    "               ${resume.address1}, Rajkot \n               360311",
                  ),
                  pw.Text(
                    "EMAIL: ${resume.email}",
                    style: pw.TextStyle(fontSize: 13),
                  ),
                ],
              ),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Text("Contact NO: ${resume.phone}"),
              ),
              pw.Container(
                width: double.infinity,
                margin: pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(color: PdfColors.blue100),
                child: pw.Text(
                  " Objective",
                  style: pw.TextStyle(color: PdfColors.black),
                ),
              ),
              pw.Container(
                width: double.infinity,
                margin: pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(color: PdfColors.blue100),
                child: pw.Text(
                  "Education Qualification",
                  style: pw.TextStyle(
                    color: PdfColors.black,
                  ),
                ),
              ),
              pw.Column(
                children: [
                  pw.Container(
                    height: 120,
                    width: double.infinity,
                    margin: pw.EdgeInsets.all(10),
                    decoration: pw.BoxDecoration(
                      color: PdfColors.white,
                      border: pw.Border.all(color: PdfColors.black, width: 2),
                    ),
                    child: pw.Column(
                      children: [
                        pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Container(
                              height: 30,
                              width: 103,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(color: PdfColors.black, width: 2),
                              ),
                              child: pw.Center(
                                child: pw.Text(
                                  "Courses",
                                  style: pw.TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            pw.Container(
                              height: 30,
                              width: 129,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(color: PdfColors.black, width: 2),
                              ),
                              child: pw.Center(
                                child: pw.Text(
                                  "University/School",
                                  style: pw.TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            pw.Container(
                              height: 30,
                              width: 125,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(color: PdfColors.black, width: 2),
                              ),
                              child: pw.Center(
                                child: pw.Text(
                                  "Passing Year",
                                  style: pw.TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            pw.Container(
                              height: 30,
                              width: 105,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(color: PdfColors.black, width: 2),
                              ),
                              child: pw.Center(
                                child: pw.Text(
                                  "Percent",
                                  style: pw.TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Add your education data here
                      ],
                    ),
                  ),
                ],
              ),
              pw.Container(
                width: double.infinity,
                margin: pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(color: PdfColors.blue100),
                child: pw.Text(
                  "Technical Skills",
                  style: pw.TextStyle(color: PdfColors.black),
                ),
              ),
              pw.Container(
                width: double.infinity,
                margin: pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(color: PdfColors.blue100),
                child: pw.Text(
                  "Experience",
                  style: pw.TextStyle(color: PdfColors.black),
                ),
              ),
              pw.Text("   => ${resume.company}"),
              pw.SizedBox(height: 15),
              pw.Text("   => ${resume.roles}"),
            ],
          );
        },
      ),
    );

    // Save the document and return as Uint8List
    return document.save();
  }
}
