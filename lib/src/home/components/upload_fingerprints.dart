import 'dart:io';

import 'package:app/common_lib.dart';
import 'package:app/data/models/enum.dart';
import 'package:app/data/models/fingerprint_model.dart';
import 'package:app/data/providers/fingerprints_provider.dart';
import 'package:app/data/services/clients/_clients.dart';
import 'package:app/src/home/components/fingerpritn_result_dialog.dart';
import 'package:app/src/home/components/personal_image_input.dart';
import 'package:app/utils/widgets/buttons/filled_loading_button.dart';
import 'package:app/utils/widgets/form_fields/custom_drop_down_button.dart';
import 'package:flutter/material.dart';

class UploadFingerprints extends HookConsumerWidget {
  const UploadFingerprints({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMatchingReq = useState<bool>(true);

    File? selectedImage;
    final selectedRole = useState<Role?>(null);
    final formKey = GlobalKey<FormState>();

    return SingleChildScrollView(
      child: ColumnPadded(
        gap: Insets.medium,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(Insets.extraSmall),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
          const Gap(Insets.small),
          SizedBox(
            height: 80,
            child: Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    isMatchingReq.value = true;
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: isMatchingReq.value ? Insets.largeAll : Insets.mediumAll,
                    decoration: BoxDecoration(
                      color:
                          isMatchingReq.value ? context.colorScheme.primary : context.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      context.l10n.matchFingerprint,
                      style: context.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    isMatchingReq.value = false;
                  },
                  child: AnimatedContainer(
                    padding: !isMatchingReq.value ? Insets.largeAll : Insets.mediumAll,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      color:
                          !isMatchingReq.value ? context.colorScheme.primary : context.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      context.l10n.uploadFingerprint,
                      style: context.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Form(
            key: formKey,
            child: PersonalImageInput(
              validator: (File? image) => image == null ? context.l10n.selectAnImageOfAFingerprint : null,
              onPickImage: (image) => selectedImage = image,
            ),
          ),
          if (isMatchingReq.value)
            CustomDropdownButtonFormField(items: [
              DropdownMenuItem(value: Role.bank, child: Text(Role.bank.displayName(context))),
              DropdownMenuItem(value: Role.gym, child: Text(Role.gym.displayName(context)))
            ], hintText: context.l10n.role, onChanged: (data) => selectedRole.value = data),
          FilledLoadingButton(
              isLoading: isMatchingReq.value
                  ? ref.watch(matchFingerprintsProvider).isLoading
                  : ref.watch(uploadFingerprintsProvider).isLoading,
              child: Text(context.l10n.upload),
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  if (isMatchingReq.value) {
                    (await ref
                            .read(matchFingerprintsProvider.notifier)
                            .run(selectedImage!, selectedRole.value))
                        .whenDataOrError(
                      data: (data) {
                        // Navigate to fingerprint details page with the result
                        context.push(RoutesDocument.fingerprintDetails, extra: data);
                      },
                      error: (error, stackTrace) {},
                    );
                  } else {
                    (await ref.read(uploadFingerprintsProvider.notifier).run(selectedImage!)).whenDataOrError(
                      data: (data) {
                        Utils.showSuccessOverlay(context.l10n.fingerprintWasUploadedSuccessfully);
                      },
                      error: (error, stackTrace) {},
                    );
                  }
                }
              }),
          const Gap(Insets.large),
        ],
      ),
    );
  }

  void whenDataOrError(
      {required Function(FingerPrintModel) data, required Function(Object, StackTrace) error}) {}
}
