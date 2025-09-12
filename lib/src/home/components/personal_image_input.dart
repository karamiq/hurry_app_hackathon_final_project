import 'dart:io';
import 'package:app/utils/constants/assets.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class PersonalImageInput extends FormField<File> {
  PersonalImageInput({
    required this.onPickImage,
    super.key,
    super.validator,
    super.onSaved,
    super.initialValue,
  }) : super(
          builder: (FormFieldState<File> state) {
            return _PersonalImageInputWidget(
              value: state.value,
              onChanged: (File? image) {
                state.didChange(image);
                if (image != null && state.hasError) {
                  state.validate();
                }
                onPickImage(image);
              },
              errorText: state.errorText,
            );
          },
        );

  final void Function(File? image) onPickImage;
}

class _PersonalImageInputWidget extends StatefulWidget {
  const _PersonalImageInputWidget({
    required this.value,
    required this.onChanged,
    this.errorText,
  });

  final File? value;
  final void Function(File? image) onChanged;
  final String? errorText;

  @override
  State<_PersonalImageInputWidget> createState() => _PersonalImageInputWidgetState();
}

class _PersonalImageInputWidgetState extends State<_PersonalImageInputWidget> {
  bool _isLoading = false;

  Future<void> _takePicture(bool isFromGallery) async {
    final picker = ImagePicker();

    setState(() {
      _isLoading = true;
    });

    try {
      final XFile? image = await picker.pickImage(
        source: isFromGallery ? ImageSource.gallery : ImageSource.camera,
        imageQuality: 85,
      );

      if (image != null) {
        widget.onChanged(File(image.path));
      }
    } catch (e) {
      // Handle error silently
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _clearImage() {
    widget.onChanged(null);
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;
    final colorScheme = context.colorScheme;
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderSize.smallRadius,
            color: colorScheme.primaryContainer.withAlpha(100),
            border: DashedBorder.symmetric(
              dashLength: 10,
              strokeCap: StrokeCap.butt,
              horizontal: BorderSide(
                color: context.theme.colorScheme.primary,
                width: 2,
              ),
              vertical: BorderSide(color: context.theme.colorScheme.primary, width: 1.4),
            ),
          ),
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : widget.value != null
                  ? ClipRRect(
                      borderRadius: BorderSize.smallRadius,
                      child: Image.file(
                        widget.value!,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Assets.assetsSvgUploadSimple,
                          color: Theme.of(context).colorScheme.primary,
                          width: 40,
                        ),
                        Text(
                          'Upload the fingerprint image',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        SizedBox(height: Insets.small),
                        Text(
                          'Browse',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        SizedBox(height: Insets.extraSmall),
                        Container(
                          height: 1.5,
                          width: 50,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
        ),
        if (hasError) ...[
          const SizedBox(height: 8),
          Text(
            widget.errorText!,
            style: TextStyle(
              color: colorScheme.error,
            ),
          ),
        ],
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _isLoading ? null : () => _takePicture(false),
              icon: Padding(
                padding: const EdgeInsets.all(Insets.extraSmall),
                child: const Icon(Icons.camera_alt, color: Colors.white),
              ),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderSize.smallRadius),
              ),
            ),
            const SizedBox(width: Insets.small),
            OutlinedButton(
              onPressed: _isLoading ? null : () => _takePicture(true),
              style: OutlinedButton.styleFrom(
                foregroundColor: colorScheme.outline,
                side: BorderSide(color: colorScheme.outline, width: 2),
                shape: RoundedRectangleBorder(borderRadius: BorderSize.smallRadius),
              ),
              child: const Text(
                'Select from Gallery',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
