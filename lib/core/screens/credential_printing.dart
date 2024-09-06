import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:school_management_system/core/providers/app_router.dart';
import 'package:school_management_system/core/providers/file_picker_provider.dart';
import 'package:school_management_system/core/providers/provider_students.dart';
import 'package:school_management_system/core/utils/export_utils.dart';

class PrintingCredential extends ConsumerWidget {
  const PrintingCredential({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataVigencia = ref.watch(vigenciaProvider);
    final students = ref.watch(studentProviderProvider);
    final dataPhoto = ref.watch(chargePhotoProvider);

    final uploadphoto = dataPhoto.when(
      data: (data) {
        return data;
      },
      loading: () {
        return const CircularProgressIndicator();
      },
      error: (error, stack) {
        return Text('Error: $error');
      },
    );

    final dataStudents = students.when(
      data: (data) {
        return data;
      },
      loading: () {
        return const CircularProgressIndicator();
      },
      error: (error, stack) {
        return Text('Error: $error');
      },
    );

    return Scaffold(
      body: PdfPreview(
        build: (format) => _generateCredential(
            format, dataStudents, dataVigencia, uploadphoto),
        actions: [
          IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () {
              ref.read(appRouterProvider).go('/card_student');
            },
          )
        ],
      ),
    );
  }
}

Future<Uint8List> _generateCredential(
    PdfPageFormat format, dataStudents, datavigencia, uploadphoto) async {
  final doc = pw.Document(
    title: 'Credencial de Estudiante',
  );

  Future<pw.MemoryImage> loadImage(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return pw.MemoryImage(response.bodyBytes);
    } else {
      throw Exception('Failed to load image');
    }
  }

  final image = await loadImage(uploadphoto);

  final profileImage = pw.MemoryImage(
    (await rootBundle.load(ImagesSchool.logo)).buffer.asUint8List(),
  );

  final barecode = pw.MemoryImage(
    (await rootBundle.load(ImagesSchool.qrcode)).buffer.asUint8List(),
  );

  final sign = pw.MemoryImage(
    (await rootBundle.load(ImagesSchool.sign)).buffer.asUint8List(),
  );

  final bgShape = await rootBundle.loadString(ImagesSchool.forms);

  doc.addPage(
    pw.MultiPage(
      pageFormat: const PdfPageFormat(153, 243, marginAll: 0.0),
      build: (pw.Context context) => [
        pw.Container(
          height: 243, // Ajusta este valor según tus necesidades
          child: pw.Stack(
            children: [
              pw.Positioned(
                child: pw.Container(
                  width: 145,
                  height: 190,
                  child: pw.SvgImage(svg: bgShape),
                ),
                left: 5,
                top: 85,
              ),
              pw.Positioned(
                left: 10,
                top: 13,
                child: pw.Text(
                  'Sección: Primaria\nC.C.T.09PRI1924A',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF564CC8),
                    fontSize: 5,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.Positioned(
                left: 10,
                top: 50,
                child: pw.Container(
                  width: 50,
                  height: 85,
                  child: pw.Image(image),
                ),
              ),
              pw.Positioned(
                right: 8,
                top: 5,
                child: pw.Container(
                  width: 40,
                  height: 40,
                  child: pw.Image(profileImage),
                ),
              ),
              pw.Positioned(
                left: 70,
                top: 55,
                child: pw.Container(
                    width: 70,
                    child: pw.Text(
                        '${dataStudents['name']}\n${dataStudents['last_name']} ',
                        style: pw.TextStyle(
                          color: const PdfColor.fromInt(0xFF342E2E),
                          fontSize: 7,
                          fontWeight: pw.FontWeight.bold,
                        ))),
              ),
              pw.Positioned(
                  left: 70,
                  top: 80,
                  child: pw.Container(
                    width: 70,
                    child: pw.Text(
                      'Nivel: ${dataStudents['nivel']}\nT.S: ${dataStudents['bt']} ',
                      style: pw.TextStyle(
                        fontSize: 7,
                        color: const PdfColor.fromInt(0xFF342E2E),
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  )),
              pw.Positioned(
                left: 70,
                top: 105,
                child: pw.Text(
                  'Ciclo:\n$datavigencia',
                  style: pw.TextStyle(
                    fontSize: 7,
                    color: const PdfColor.fromInt(0xFF342E2E),
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.Positioned(
                left: 10,
                bottom: 25,
                child: pw.SizedBox(
                  width: 120,
                  height: 50,
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        'Teléfono: (55) 9154-1083',
                        textAlign: pw.TextAlign.left,
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xFF342E2E),
                          fontSize: 8.5,
                        ),
                      ),
                      pw.SizedBox(
                        height: .5,
                      ),
                      pw.Text(
                        'Dirrecion:  Cedro 219,\nCol. Sta. María la Ribera,\nCuauhtémoc, 06400,\nCiudad de México, CDMX',
                        textAlign: pw.TextAlign.left,
                        style: const pw.TextStyle(
                          color: PdfColor.fromInt(0xFF342E2E),
                          fontSize: 8.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        pw.Container(
          height: 243,
          child: pw.Stack(
            children: [
              pw.Positioned(
                left: 25,
                top: 4,
                child: pw.Container(
                  width: 100,
                  height: 100,
                  child: pw.Image(profileImage),
                ),
              ),
              pw.Positioned(
                left: 54,
                top: 25,
                child: pw.Container(
                  width: 43,
                  height: 43,
                  child: pw.Image(barecode),
                ),
              ),
              pw.Positioned(
                left: 4,
                top: 105,
                child: pw.Container(
                  width: 145,
                  height: 50,
                  padding: const pw.EdgeInsets.all(.05),
                  child: pw.SizedBox(
                    width: 180,
                    height: 80,
                    child: pw.Column(
                      children: [
                        pw.Text(
                          'Personas Autorizadas:',
                          style: pw.TextStyle(
                            color: const PdfColor.fromInt(0xFF4C3B3B),
                            fontSize: 8.5,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          height: .5,
                        ),
                        pw.Expanded(
                          child: pw.Text(
                            '${dataStudents['people_authorized']}',
                            textAlign: pw.TextAlign.center,
                            style: const pw.TextStyle(
                              color: PdfColor.fromInt(0xFF4C3B3B),
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              pw.Positioned(
                left: 32,
                bottom: 60,
                child: pw.SizedBox(
                  width: 90,
                  height: 10,
                  child: pw.Text(
                    'Firma del director ',
                    textAlign: pw.TextAlign.center,
                    style: const pw.TextStyle(
                      color: PdfColor.fromInt(0xFF342E2E),
                      fontSize: 8.5,
                      height: 0.08,
                    ),
                  ),
                ),
              ),
              pw.Positioned(
                left: 40,
                bottom: 34,
                child: pw.Container(
                  width: 70,
                  height: 70,
                  child: pw.Image(sign),
                ),
              ),
              pw.Positioned(
                left: 3,
                bottom: 15,
                child: pw.SizedBox(
                  width: 147,
                  height: 20,
                  child: pw.Text(
                    'Patricia Covarrubias Fernández',
                    textAlign: pw.TextAlign.center,
                    // ignore: prefer_const_constructors
                    style: pw.TextStyle(
                      color: const PdfColor.fromInt(0xFF342E2E),
                      fontSize: 8.5,
                    ),
                  ),
                ),
              ),
              pw.Positioned(
                left: 5,
                bottom: 8,
                child: pw.SizedBox(
                  width: 145,
                  height: 7,
                  child: pw.Text(
                    'www.institutonuevageneracion.com',
                    textAlign: pw.TextAlign.center,
                    style: const pw.TextStyle(
                      color: PdfColor.fromInt(0xFF1816A5),
                      fontSize: 8,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

  return doc.save();
}
