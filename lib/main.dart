import 'package:book_list/app/data/modules/home/home_page.dart';
import 'package:book_list/app/data/modules/home/home_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: "/",
          page: () => HomePage(),
          binding: HomeBindings(),
        )
      ],
    );
  }
}
