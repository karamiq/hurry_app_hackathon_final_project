// import 'package:app/common_lib.dart';
// import 'package:app/data/models/fingerprint_model.dart';
// import 'package:flutter/material.dart';

// class FingerprintMatchingResultDialog extends StatelessWidget {
//   const FingerprintMatchingResultDialog({
//     super.key,
//     required this.data,
//   });
//   final FingerPrintModel data;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = context.colorScheme;
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       child: Container(
//         padding: const EdgeInsets.all(24),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.white,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               data.verified ? Icons.verified : Icons.error_outline,
//               color: data.verified ? Colors.green : Colors.red,
//               size: 48,
//             ),
//             const SizedBox(height: 12),
//             Text(
//               data.verified ? 'Fingerprint Verified!' : 'Verification Failed',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: data.verified ? Colors.green : Colors.red,
//               ),
//             ),
//             const SizedBox(height: 16),
//             Card(
//               elevation: 0,
//               color: Colors.white.withOpacity(0.9),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.fingerprint,
//                           color: colorScheme.primary,
//                         ),
//                         const SizedBox(width: 8),
//                         Text('Matched ID:', style: TextStyle(fontWeight: FontWeight.bold)),
//                         const SizedBox(width: 4),
//                         Text(
//                           data.matched_fingerprint_id ?? 'Not Found!',
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.emoji_events,
//                           color: colorScheme.primary,
//                         ),
//                         const SizedBox(width: 8),
//                         Text('Confidence:', style: TextStyle(fontWeight: FontWeight.bold)),
//                         const SizedBox(width: 4),
//                         Text('${data.confidence_score}%'),
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.message,
//                           color: colorScheme.primary,
//                         ),
//                         const SizedBox(width: 8),
//                         Text('Message:', style: TextStyle(fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 32, top: 4),
//                       child: Text(
//                         data.message,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: colorScheme.primary,
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 ),
//                 onPressed: () => Navigator.of(context).pop(),
//                 child: const Text('OK', style: TextStyle(fontSize: 16)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
