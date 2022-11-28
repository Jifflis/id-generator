import 'package:auto_route/annotations.dart';
import 'package:id_generator/features/page_layout/page_layout.dart';

import '../features/page_initial_wrapper.dart';
import '../features/page_sample_page.dart';
import '../features/page_sample_page_2.dart';
import '../features/page_sample_page_3.dart';

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
        AutoRoute(path: 'SamplePage3', page: SamplePage3),
        AutoRoute(path: 'SamplePage', page: SamplePage, children: [
          AutoRoute(path: '', page: SamplePage2, initial: true),
        ])
      ],
    )
  ],
)
class $AppRouter {}
