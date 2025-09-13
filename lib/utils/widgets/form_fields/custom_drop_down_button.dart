import 'package:app/common_lib.dart';
import 'package:flutter/material.dart';

class CustomDropdownButtonFormField<T> extends StatelessWidget {
  const CustomDropdownButtonFormField({
    super.key,
    required this.items,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.fillColor,
    this.value,
    required this.onChanged,
  });

  final String hintText;
  final Widget? suffixIcon, prefixIcon;
  final Color? fillColor;
  final String? Function(T?)? validator;
  final ValueChanged<T?>? onChanged;
  final List<DropdownMenuItem<T>>? items;
  final T? value;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return DropdownButtonFormField(
      value: value,
      items: items,
      decoration: InputDecoration(
        fillColor: colorScheme.surface.withOpacity(.4),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BorderSize.extraSmall),
          borderSide: BorderSide(
            width: .5,
            color: context.colorScheme.primary,
          ),
        ),
        hintStyle: context.textTheme.bodyLarge?.copyWith(
          color: context.colorScheme.outline,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      dropdownColor: colorScheme.surface,
      borderRadius: BorderRadius.circular(BorderSize.extraSmall),
    );
  }
}
