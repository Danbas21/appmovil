import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:school_management_system/core/providers/app_router.dart';
import 'package:school_management_system/core/providers/file_picker_provider.dart';
import 'package:school_management_system/core/providers/provider_students.dart';
import 'package:school_management_system/core/utils/export_utils.dart';

import 'package:pdf/widgets.dart' as pw;

import 'package:school_management_system/core/utils/images.dart';

final pdfProvider = Provider((ref) => pw.Document());

class Credential extends ConsumerWidget {
  Credential({super.key});
  final GlobalKey _widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProviderProvider);
    final image = ref.watch(chargePhotoProvider);
    final vigencia = ref.watch(vigenciaProvider);
    final pdf = ref.watch(pdfProvider);

    return Scaffold(
      body: Container(
        width: 1440,
        height: 1024,
        decoration: const BoxDecoration(color: Color(0xFFFAFAFA)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500,
                height: 900,
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  border: Border.all(
                    color: const Color(0xFF342E2E),
                    width: 1,
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 35,
                      top: 63,
                      child: SizedBox(
                        width: 209,
                        height: 77,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sección: Primaria\nC.C.T.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '0',
                                style: TextStyle(
                                  color: Color(0xFF564CC8),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '9PRI1924A',
                                style: TextStyle(
                                  color: Color(0xFF4539CC),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 171,
                      child: SizedBox(
                        width: 155,
                        height: 196,
                        child: Image.network(
                          image.when(
                            data: (data) => data,
                            loading: () => ImagesSchool.picture,
                            error: (error, stack) => ImagesSchool.picture,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: Container(
                        width: 151,
                        height: 151,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImagesSchool.logo),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      top: 192,
                      child: SizedBox(
                        width: 200,
                        height: 145,
                        child: students.when(
                          data: (data) {
                            return SizedBox(
                              width: 283,
                              child: Text(
                                '${data['name']} ${data['last_name']} ',
                                style: const TextStyle(
                                  color: Color(0xFF342E2E),
                                  fontSize: 27,
                                  fontFamily: 'Anton',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 1.28,
                                ),
                              ),
                            );
                          },
                          loading: () => const CircularProgressIndicator(),
                          error: (error, stack) => Text(
                            error.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 503,
                      child: SizedBox(
                        width: 354,
                        height: 138,
                        child: students.when(
                          data: (data) {
                            return SizedBox(
                              width: 283,
                              child: Text(
                                'Nivel: ${data['nivel']}\nT.S: ${data['bt']}',
                                style: const TextStyle(
                                  color: Color(0xFF342E2E),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            );
                          },
                          loading: () => const CircularProgressIndicator(),
                          error: (error, stack) => Text(
                            error.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 255,
                      top: 362,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Ciclo:',
                            style: TextStyle(
                              color: Color(0xFF342E2E),
                              fontSize: 20,
                              fontFamily: 'Anton',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.80,
                            ),
                          ),
                          Text(
                            vigencia,
                            style: const TextStyle(
                              color: Color(0xFF342E2E),
                              fontSize: 20,
                              fontFamily: 'Anton',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.80,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      top: 656,
                      child: SizedBox(
                        width: 450,
                        height: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Teléfono: (559) 154-1083',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF8E7C7C),
                                fontSize: 20,
                                fontFamily: 'Anek Telugu',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.96,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Dirrecion:  Cedro 219,  Col. Sta. María la Ribera,\nCuauhtémoc, 06400,\nCiudad de México, CDMX',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF8E7C7C),
                                fontSize: 20,
                                fontFamily: 'Anek Telugu',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.96,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 798,
                      child: SizedBox(
                        width: 100,
                        height: 60,
                        child: FloatingActionButton(
                          onPressed: () => convertToPdf(context, pdf),
                          backgroundColor:
                              const Color.fromARGB(255, 173, 168, 223),
                          child: const Text('Imprimir'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 13,
                      child: SizedBox(
                          width: 38,
                          height: 32,
                          child: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () {
                              ref.read(appRouterProvider).go('/card_student');
                            },
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 500,
                height: 900,
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  border: Border.all(
                    color: const Color(0xFF342E2E),
                    width: 1,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 5,
                      child: Container(
                        width: 425,
                        height: 425,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImagesSchool.logo),
                              fit: BoxFit.fill,
                              alignment: Alignment.center),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 115,
                      child: Container(
                        width: 205,
                        height: 205,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const AssetImage(
                              ImagesSchool.qrcode,
                            ),
                            fit: BoxFit.values[1],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 450,
                      child: Container(
                        width: 400,
                        height: 200,
                        padding: const EdgeInsets.all(10),
                        child: students.when(
                          data: (data) {
                            return SizedBox(
                              width: 250,
                              height: 50,
                              child: Column(
                                children: [
                                  const Text(
                                    'Personas Autorizadas:',
                                    style: TextStyle(
                                      color: Color(0xFF4C3B3B),
                                      fontSize: 20,
                                      fontFamily: 'Anek Telugu',
                                      fontWeight: FontWeight.bold,
                                      height: 0.05,
                                      letterSpacing: 0.96,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${data['people_authorized']}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color(0xFF4C3B3B),
                                      fontSize: 20,
                                      fontFamily: 'Anek Telugu',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.96,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          loading: () => const CircularProgressIndicator(),
                          error: (error, stack) => Text(
                            error.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 2,
                      bottom: 5,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(8),
                        width: 480,
                        height: 210,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 160,
                              top: 0,
                              child: SizedBox(
                                width: 229,
                                height: 50,
                                child: Text(
                                  'Firma del director ',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 140,
                              top: 15,
                              child: Container(
                                width: 200,
                                height: 70,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(ImagesSchool.sign),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 100,
                              bottom: 40,
                              child: SizedBox(
                                width: 300,
                                height: 70,
                                child: Text(
                                  'Patricia Covarrubias Fernandez',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 60,
                              bottom: 7,
                              child: SizedBox(
                                width: 364,
                                height: 50.81,
                                child: Text(
                                  'www.institutonuevageneracion.com',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1816A5),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> convertToPdf(BuildContext context, pw.Document pdf) async {
    // Captura la interfaz de usuario como imagen
    final image = await WidgetWrapper.fromKey(
      key: _widgetKey,
      pixelRatio: 2.0,
    );

    // Añade la imagen al documento PDF
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Image(image),
        );
      },
    ));

    // Guarda el documento PDF
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
