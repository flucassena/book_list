import 'package:book_list/app/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookItemPage extends StatelessWidget {
  const BookItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book Page'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: ListTile(
                        title: Text('Title: ${Get.arguments.title}'),
                        subtitle: Text(
                          'Subtitle: ${Get.arguments.subtitle} \n \nText: ${Get.arguments.text}\n',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
