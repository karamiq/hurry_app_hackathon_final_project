import 'package:app/common_lib.dart';
import 'package:flutter/material.dart';

class LocalHistoryPage extends ConsumerStatefulWidget {
  const LocalHistoryPage({super.key});

  @override
  ConsumerState<LocalHistoryPage> createState() => _LocalHistoryPageState();
}

class _LocalHistoryPageState extends ConsumerState<LocalHistoryPage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderSize.extraSmallRadius,
                color: colorScheme.primary.withOpacity(.3),
              ),
              child: TabBar(
                labelStyle: TextStyle(
                  fontSize: 16,
                ),
                controller: tabController,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                  borderRadius: BorderSize.extraSmallRadius,
                  color: colorScheme.primary,
                ),
                padding: const EdgeInsets.all(10),
                tabs: const [
                  Tab(text: 'Scan'),
                  Tab(text: 'Create'),
                ],
              ),
            ),
            const Gap(Insets.extraSmall),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  // ref.watch(getQRDataHistoryProvider).when(
                  //     data: (data) => ScanPage(
                  //           data: data.reversed.toList(),
                  //         ),
                  //     error: (erro, track) => Center(
                  //           child: Text('Error: $erro'),
                  //         ),
                  //     loading: () => const Center(
                  //           child: CircularProgressIndicator.adaptive(),
                  //         )),
                  // const CreatePage(),

                  Container(),
                  Container()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
