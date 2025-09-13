import 'package:app/common_lib.dart';
import 'package:app/src/home/components/custom_scaffold.dart';
import 'package:app/src/home/components/home_header.dart';
import 'package:flutter/material.dart';

class EntryPoint extends StatefulHookConsumerWidget {
  const EntryPoint({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EntryPointState();
}

class _EntryPointState extends ConsumerState<EntryPoint> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      RoutesDocument.home,
      RoutesDocument.localHistory,
    ];
    int getSelectedIndex() {
      final String location = GoRouterState.of(context).fullPath!;

      return pages.indexOf(location);
    }

    void onItemTapped(int index) {
      GoRouter.of(context).go(pages[index]);
    }

    return CustomScaffold(
      safeArea: false,
      body: Column(
        children: [
          HomeHeader(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.medium),
            child: widget.child,
          )),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
