import 'package:get/get.dart';
import 'package:getx_clean_architechture/module/presentations/pages/home/home_view.dart';
import 'package:getx_clean_architechture/module/presentations/pages/main/main_view.dart';
import 'package:getx_clean_architechture/routes/bindings.dart';
import 'package:getx_clean_architechture/routes/routes.dart';

class CommonPage {
  static List<GetPage> pages = [
    GetPage(
      page: () => const HomeView(),
      name: CommonRoutes.INIT,
      binding: HomeBindings(),
    ),

    ///can duplicate controller in getx set unique = true
    GetPage(
      name: CommonRoutes.MAIN2,
      page: () => const MainView(),
      binding: MainBinding(),
    )
  ];
}
