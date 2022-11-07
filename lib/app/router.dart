import 'package:auto_route/annotations.dart';
import 'package:id_generator/features/page_layout/page_layout.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[AutoRoute(path: '/', page: PageLayout)])
class $AppRouter {}
