import 'dart:convert';

import 'package:book_list/app/data/model/book_model.dart';
import 'package:book_list/app/data/repository/interface_repository.dart';
import 'package:http/http.dart' as http;

class HomeRepository implements InterfaceRepository {
  @override
  Future<List<BookModel>> findAllBooks() async {
    try {
      final response = await http
          .get("https://62507208977373573f3d77f0.mockapi.io/api/lib/library");
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap
          .map<BookModel>((resp) => BookModel.fromMap(resp))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
