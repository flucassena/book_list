import 'package:book_list/app/data/modules/book_list/book_list_controller.dart';
import 'package:book_list/app/data/modules/book_list/repository/book_list_repository.dart';
import 'package:book_list/app/data/repository/interface_repository.dart';
import 'package:book_list/shared/rest_client.dart';
import 'package:get/get.dart';

class BookListBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<InterfaceRepository>(BookListRepository(Get.find()));
    Get.put(BookListController(Get.find()));
  }
}
