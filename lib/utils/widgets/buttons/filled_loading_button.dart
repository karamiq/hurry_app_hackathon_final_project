import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FilledLoadingButton extends StatelessWidget {
  const FilledLoadingButton({
    super.key,
    required this.isLoading,
    required this.child,
    required this.onPressed,
    this.color,
  });

  final bool isLoading;
  final Widget child;

  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isLoading ? Colors.grey : (color ?? Theme.of(context).colorScheme.primary),
        borderRadius: BorderSize.extraSmallRadius,
      ),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        onPressed: isLoading ? null : onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [isLoading ? const CircularProgressIndicator() : child],
        ),
      ),
    );
  }
}
