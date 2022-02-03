
import 'package:servitech/app/service_locator.dart';
import 'package:servitech/models/cart.dart';
import 'package:servitech/services/cart/cart_service.dart';
import '../viewmodel.dart';

class CartViewModel extends Viewmodel {
  final _service = locator<CartService>();

   List<Cart> _list;

  Cart getCart(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  @override
  init() => update(() async {
        _list = await _service.fetchCart();
        super.init();
      });

  // void addNote(Item newItem) => update(() async {
  //       final item = await _service.addCart(newItem);
  //       _list.add(item);
  //     });

  // void deleteNote(dynamic id) => update(() async {
  //       await _service.deleteItem(id);
  //       _list.removeWhere((note) => note.id == id);
  //     });

  // void updateNote({dynamic id, Item data}) => update(() async {
  //       final item = await _service.updateItem(id: id, newItem: data);
  //       final index = _list.indexWhere((note) => note.id == id);
  //       if (index == -1) return;
  //       _list[index] = item;
  //     });
}
