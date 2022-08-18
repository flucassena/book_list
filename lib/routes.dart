import 'package:book_list/app/data/modules/book_list/book_item/book_item_page.dart';
import 'package:book_list/app/data/modules/book_list/book_list_bindings.dart';
import 'package:get/get.dart';
import 'app/data/modules/book_list/book_list_page.dart';

class Routes {
  static final routes = [
    GetPage(
        name: '/',
        page: () => const BookListPage(),
        binding: BookListBindings(),
        children: [
          GetPage(
            name: '/book_item',
            page: () => const BookItemPage(),
          ),
        ]),
  ];
}
