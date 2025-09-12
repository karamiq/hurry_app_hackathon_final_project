import 'package:app/common_lib.dart';
import 'package:flutter/material.dart';
import 'circuler_container.dart';

class ProfileHead extends ConsumerStatefulWidget {
  const ProfileHead({super.key});

  @override
  ConsumerState<ProfileHead> createState() => _ProfileHeadState();
}

class _ProfileHeadState extends ConsumerState<ProfileHead> {
  @override
  Widget build(BuildContext context) {
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
            child: Column(
              children: [
                const Gap(Insets.large * 2),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Insets.medium,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IFR',
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            'The International Fingerprint Recognization',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
