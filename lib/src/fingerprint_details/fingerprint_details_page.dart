import 'package:app/common_lib.dart';
import 'package:app/data/models/fingerprint_model.dart';
import 'package:app/src/components/details_card.dart';
import 'package:flutter/material.dart';

class FingerprintDetailsPage extends StatelessWidget {
  const FingerprintDetailsPage({super.key, required this.data});
  final FingerPrintModel data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColumnPadded(
        gap: Insets.medium,
        children: [
          const Gap(Insets.medium),
          Container(
            width: double.infinity,
            padding: Insets.mediumAll,
            decoration: BoxDecoration(
              color: data.verified ? Colors.green.shade50 : Colors.red.shade50,
              gradient: LinearGradient(
                colors: data.verified
                    ? [Colors.green.shade400, Colors.green.shade600]
                    : [Colors.red.shade400, Colors.red.shade600],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Icon(data.verified ? Icons.verified_user : Icons.error_outline,
                    size: 64, color: Colors.white),
                const SizedBox(height: 16),
                Text(
                  data.verified ? context.l10n.verificationSuccessful : context.l10n.verificationFailed,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  data.message,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Details Cards
          DetailCard(
            icon: Icons.fingerprint,
            title: context.l10n.matchedId,
            value: data.matched_fingerprint_id ?? context.l10n.notAvailable,
            color: Colors.purple,
          ),

          DetailCard(
            icon: Icons.analytics,
            title: context.l10n.confidenceScore,
            value: '${(data.confidence_score * 100).toStringAsFixed(1)}%',
            color: Colors.orange,
            child: LinearProgressIndicator(
              value: data.confidence_score,
              backgroundColor: Colors.orange.shade100,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ),

          // Action Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.check_circle),
              label: Text(context.l10n.complete),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: data.verified ? Colors.green : Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const Gap(Insets.large * 2),
        ],
      ),
    );
  }
}
