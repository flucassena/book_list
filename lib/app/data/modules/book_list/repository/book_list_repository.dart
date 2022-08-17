import 'package:book_list/app/data/model/book_model.dart';
import 'package:book_list/app/data/repository/interface_repository.dart';
import 'package:book_list/shared/rest_client.dart';

class BookListRepository implements InterfaceRepository {
  final RestClient restClient;
  BookListRepository(this.restClient);

  @override
  Future<List<BookModel>> findAllBooks() async {
    final response = await restClient
        .get('https://62507208977373573f3d77f0.mockapi.io/api/lib/library');
    List<dynamic> data = response.body;
    return data.map<BookModel>((resp) => BookModel.fromMap(resp)).toList();
  }
}
