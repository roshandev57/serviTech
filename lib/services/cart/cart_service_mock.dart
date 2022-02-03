import 'cart_service.dart';
import '../../models/item.dart';
import '../../models/cart.dart';
import '../items/items_service.dart';
import '../items/items_service_mock.dart';

class CartServiceMock extends CartService {
  ItemsServiceMock title;

  final mockData = <Cart>[
    Cart(
      Item(
          title: 'Lenovo Ideapad',
          details: 'Suitable for office work',
          price: 2000.00),
    ),
    Cart(
      Item(title: 'Asus ROG', details: 'Suitable for gaming', price: 7000.00),
    ),
    Cart(
      Item(
          title: 'Razer Basilisk Mouse',
          details: 'Mouse dedicated for gaming purposes.\nUp to 16000DPI',
          price: 200.00),
    ),
  ];

  @override
  Future<List<Cart>> fetchCart() async {
    return [...mockData];
  }

  @override
  Future<Cart> getCart(cartId) async {
    final item = mockData.firstWhere((element) => element.cartId == cartId,
        orElse: null);

    return Cart.copy(item);
  }
}
