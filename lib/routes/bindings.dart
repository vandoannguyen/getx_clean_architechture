import 'dart:collection';

import 'package:get/get.dart';
import 'package:getx_clean_architechture/module/presentations/controllers/home/home_controller.dart';
import 'package:getx_clean_architechture/module/presentations/controllers/main/main_controller.dart';

abstract class BaseBindings extends Bindings {
  ListQueue<String> listQueue = ListQueue();

  BaseBindings();

  @override
  void dependencies() {
    listQueue.addLast(DateTime.now().millisecondsSinceEpoch.toString());
  }

  void dispose() {
    listQueue.removeLast();
  }
}

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}

class MainBinding extends BaseBindings {
  MainBinding._instance() : super();

  factory MainBinding() {
    return MainBinding._instance();
  }

  @override
  void dependencies() {
    super.dependencies();
    Get.put(MainController(), tag: listQueue.last);
  }
}
