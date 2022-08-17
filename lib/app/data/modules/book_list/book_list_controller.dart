import 'package:book_list/app/data/repository/interface_repository.dart';
import 'package:get/get.dart';

class BookListController extends GetxController with StateMixin {
  final InterfaceRepository _homeRepository;

  BookListController(this._homeRepository);

  @override
  void onInit() {
    super.onInit();
    findBooks();
  }

  Future<void> findBooks() async {
    change([], status: RxStatus.loading());
    try {
      final data = await _homeRepository.findAllBooks();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar Usuário'));
    }
  }
}
