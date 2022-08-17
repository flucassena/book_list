import 'package:book_list/app/data/modules/home/home_controller.dart';
import 'package:book_list/app/data/modules/home/repository/home_repository.dart';
import 'package:book_list/app/data/repository/interface_repository.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<InterfaceRepository>(HomeRepository());
    Get.put(HomeController(Get.find()));
  }
}
