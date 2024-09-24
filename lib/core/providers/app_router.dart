import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_management_system/core/screens/credential_printing.dart';
import 'package:school_management_system/core/screens/login_vtwo_screen.dart';

import '../screens/export_screens.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          name: 'home',
          path: '/',
          builder: (context, state) => const LoginVtwoScreen(),
        ),
        GoRoute(
          name: 'panel',
          path: '/panel',
          builder: (context, state) => const PanelScreen(),
        ),
        GoRoute(
          name: 'card_student',
          path: '/card_student',
          builder: (context, state) => const CardStudent(),
        ),
        GoRoute(
          name: 'printing_card',
          path: '/printing_card',
          builder: (context, state) => const PrintingCredential(),
        ),
      ],
    );
