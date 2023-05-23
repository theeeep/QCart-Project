// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// import '../utils/cumstom_theme.dart';

// class RestultScreen extends StatelessWidget {
//   const RestultScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             //Show QR Code
//             QrImage(
//               data: '',
//               size: 150,
//               version: QrVersions.auto,
//             ),

//             const Text(
//               "Scanned Result",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black54,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Text(
//               "Result",
//               style: TextStyle(
//                   color: Colors.black87, fontSize: 16, letterSpacing: 1),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width - 100,
//               height: 40,
//               child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomTheme.qPrimaryColor),
//                   onPressed: () {},
//                   child: const Text(
//                     "Copy",
//                     style: TextStyle(
//                         color: Colors.black87, fontSize: 16, letterSpacing: 1),
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// const bgColor = Color(0xffffafafa);

// // class QrScanner extends StatefulWidget {
// //   const QrScanner({super.key});

// //   @override
// //   State<QrScanner> createState() => _QrScannerState();
// // }

// // class _QrScannerState extends State<QrScanner> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Text("QR Code"),
// //     );
// //   }
// // }

// class QrScanner extends StatefulWidget {
//   const QrScanner({super.key});

//   @override
//   State<QrScanner> createState() => _QrScannerState();
// }

// class _QrScannerState extends State<QrScanner> {
//   var getResult = 'QR Code Result';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bgColor,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "QR Scanner",
//           style: TextStyle(
//               color: Colors.black87,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 1),
//         ),
//       ),
//       body: Container(
//         width: double.infinity,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     "Place the QR Code in the Area",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 1),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Scanning will be started automatically",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.black54,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//                 flex: 4,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         scanQRCode();
//                       },
//                       child: Text('Scan QR'),
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     Text(getResult),
//                   ],
//                 )),
//             Expanded(
//               child: Container(
//                 alignment: Alignment.center,
//                 child: const Text(
//                   "Qcart🛒 Happy Shopping",
//                   style: TextStyle(
//                     color: Colors.black87,
//                     fontSize: 14,
//                     letterSpacing: 1,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void scanQRCode() async {
//     try {
//       final qrCode = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.BARCODE);

//       if (!mounted) return;

//       setState(() {
//         getResult = qrCode;
//       });
//       print("QRCode_Result:--");
//       print(qrCode);
//     } on PlatformException {
//       getResult = 'Failed to scan QR Code.';
//     }
//   }
// }
