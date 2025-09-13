import 'package:app/common_lib.dart';
import 'package:app/src/home/utils/bio_authenticator.dart';
import 'package:app/utils/widgets/buttons/filled_loading_button.dart';
import 'package:flutter/material.dart';

class CheckAgain extends HookWidget {
  const CheckAgain({super.key, required this.onChange});

  final ValueChanged<bool> onChange;

  @override
  Widget build(BuildContext context) {
    final isLoading = useState<bool>(false);
    final theme = context.colorScheme;
    return ColumnPadded(
      gap: Insets.medium,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.redAccent),
          child: ClipRRect(
            borderRadius: BorderSize.extraLargeRadius,
            child: Material(
              color: Colors.transparent,
              child: SvgPicture.asset(
                Assets.assetsSvgCancel,
                color: Colors.white,
                height: 140,
                width: 140,
              ),
            ),
          ),
        ),
        Text(
          context.l10n.recognitionFailed,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '${context.l10n.unrecognizedPersonal}\n${context.l10n.authorizationMessage}',
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        const Gap(Insets.medium),
        FilledLoadingButton(
            isLoading: isLoading.value,
            child: Text(context.l10n.retry),
            onPressed: () async {
              isLoading.value = true;
              onChange(await BioAuthenticator.authenticate());
              isLoading.value = false;
            })
      ],
    );
  }
}
