import 'package:book_list/app/data/model/book_model.dart';
import 'package:book_list/app/data/modules/book_list/book_item/book_item_page.dart';
import 'package:book_list/app/data/modules/book_list/book_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookListPage extends GetView<BookListController> {
  const BookListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final BookModel item = state[index];
            return Card(
              child: ListTile(
                title: Text(item.title),
                onTap: () {
                  Get.to(BookItemPage(), arguments: item);
                },
              ),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error),
              TextButton(
                onPressed: () => controller.findBooks(),
                child: const Text('Tentar novamente'),
              )
            ],
          ),
        );
      }),
    );
  }
}
