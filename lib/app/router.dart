import 'package:auto_route/annotations.dart';
import 'package:id_generator/features/page_layout/page_layout.dart';

import '../features/page_initial_wrapper.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: PageInitialWrapper,
      children: [
        AutoRoute(
          path: '',
          page: PageLayout,
          initial: true,
        ),
      ],
    )
  ],
)
class $AppRouter {}
