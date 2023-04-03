// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';

import '../../features/future_mind_strange_mind/presentation/pages/strange_mind_detail_page.dart';
import '../../features/future_mind_strange_mind/presentation/pages/strange_mind_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: StrangeMindListPage,
      initial: true,
    ),
    AutoRoute(
      page: StrangeMindDetailPage,
    )
  ],
)
class $AppRouter {}
