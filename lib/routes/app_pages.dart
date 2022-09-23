import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:cyarty/bindings/home_binding.dart';
import 'package:cyarty/views/country_view.dart';
import 'package:cyarty/views/details_view.dart';
import 'package:cyarty/views/home_view.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: Routes.COUNTRY,
          page: () => CountryView(),
          children: [
            GetPage(
              name: Routes.DETAILS,
              page: () => DetailsView(),
            ),
          ],
        ),
      ],
    ),
  ];
}
