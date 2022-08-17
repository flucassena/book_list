import 'package:book_list/app/data/model/book_model.dart';

abstract class InterfaceRepository {
  Future<List<BookModel>> findAllBooks();
}
