import 'package:book_list/app/data/model/book_model.dart';
import 'package:book_list/app/data/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final BookModel item = state[index];
            return ListTile(
              title: Text(item.title),
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
