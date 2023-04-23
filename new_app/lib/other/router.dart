import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../model/broker_manage_model.dart';
import '../view/broker_description_screen.dart';
import '../view/home_screen/top_brokers_screen.dart';
import 'routes_enum.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      errorBuilder: (context, state) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/',
          name: RoutesNames.HomeScreen.name,
          builder: (BuildContext context, GoRouterState state) =>
              const MyHomePage(),
          routes: [
            GoRoute(
              path: 'BrokerDetailsScreen',
              name: RoutesNames.BrokerDetailsScreen.name,
              builder: (BuildContext context, GoRouterState state) {
                //Get from extra data the broker object
                final broker = state.extra as BrokerManageModel;
                return BrokerFullInfoScreen(currentbroker: broker);
              },
            ),
          ],
        ),
      ],
    );
  },
);
