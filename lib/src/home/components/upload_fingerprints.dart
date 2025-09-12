import 'dart:io';

import 'package:app/common_lib.dart';
import 'package:app/data/providers/validate_fingerprint_provider.dart';
import 'package:app/data/services/clients/auth_client.dart';
import 'package:app/src/home/components/personal_image_input.dart';
import 'package:app/utils/widgets/buttons/filled_loading_button.dart';
import 'package:flutter/material.dart';

class UploadFingerprints extends ConsumerWidget {
  const UploadFingerprints({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    File? selectedImage;
    final formKey = GlobalKey<FormState>();

    return ColumnPadded(
      gap: Insets.medium,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Form(
          key: formKey,
          child: PersonalImageInput(
            validator: (File? image) => image == null ? 'Please select an Image of a fingerprint' : null,
            onPickImage: (image) => selectedImage = image,
          ),
        ),
        FilledLoadingButton(
            isLoading: ref.watch(validateFingerprintProvider).isLoading,
            child: Text('Upload'),
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                await ref.read(authClientProvider).validate(selectedImage!).whenComplete(() {
                  Utils.showSuccessOverlay('Fingerprint was uploaded successfuly');
                }).catchError((e) {
                  Utils.showErrorOverlay('Faild to upload duo to: $e');
                });
              }
            }),
        RowPadded(
          gap: Insets.small,
          children: [
            Expanded(child: Divider()),
            Text('OR'),
            Expanded(child: Divider()),
          ],
        ),
        TextButton(
            onPressed: () {
              context.push(RoutesDocument.wireless);
            },
            child: Text('Connect to wireless scanner'))
      ],
    );
  }
}
