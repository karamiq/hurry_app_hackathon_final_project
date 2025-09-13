import 'package:app/common_lib.dart';
import 'package:app/data/providers/settings_provider.dart';
import 'package:app/theme/theme_mode.dart';
import 'package:flutter/material.dart';
import 'circuler_container.dart';

class HomeHeader extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  ConsumerState<HomeHeader> createState() => _ProfileHeadState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _ProfileHeadState extends ConsumerState<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final l10n = context.l10n;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(BorderSize.medium),
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: -126,
            right: -70,
            child: CirculerContainer(),
          ),
          const Positioned(
            bottom: -80,
            right: -90,
            child: CirculerContainer(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.medium,
              vertical: Insets.large,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(BorderSize.small),
                color: context.colorScheme.primary.withOpacity(.3),
              ),
              child: Column(
                children: [
                  Gap(context.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            ref.read(settingsProvider.notifier).toggleThemeMode(context);
                          },
                          icon: Icon(
                            settings.themeMode.isLight ? Icons.dark_mode : Icons.light_mode,
                            color: Colors.white,
                          )),
                      Column(
                        children: [
                          Text(
                            l10n.ifi,
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            l10n.theInternationalFingerprintRecognization,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            ref.read(settingsProvider.notifier).toggleLocale();
                          },
                          icon: Icon(Icons.language, color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
