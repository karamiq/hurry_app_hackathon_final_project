import 'package:app/data/models/fingerprint_model.dart';
import 'package:app/src/entry_point.dart';
import 'package:app/src/fingerprint_details/fingerprint_details_page.dart';
import 'package:app/src/home/home_page.dart';
import 'package:app/src/local_history/local_history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final Provider<GoRouter> routerProvider = Provider((ref) => router);

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RoutesDocument.home,
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => EntryPoint(child: child),
      routes: [
        GoRoute(
          path: RoutesDocument.home,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: RoutesDocument.localHistory,
          builder: (context, state) => const LocalHistoryPage(),
        ),
        GoRoute(
          path: RoutesDocument.fingerprintDetails,
          builder: (context, state) {
            final data = state.extra as FingerPrintModel;
            return FingerprintDetailsPage(data: data);
          },
        ),
        // Add more child routes here as needed
      ],
    ),
  ],
);

class RoutesDocument {
  const RoutesDocument._();
  static const String home = '/';
  static const String localHistory = '/local-history';
  static const String fingerprintDetails = '/fingerprint-details';

  // // Product
  // static String productDetails(String id) => 'product-details/$id';
}

  // final encodedItemId = getEncodedComponent(item.id);
  // context.push(
  //     "${RoutesDocument.pharmacyHome}/${RoutesDocument.productDetails(encodedItemId)}");
