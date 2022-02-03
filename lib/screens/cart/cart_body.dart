import 'package:flutter/material.dart';
import '../../models/item.dart';
import '../view.dart';
import 'cart_viewmodel.dart';
import 'cart_tile.dart';

class CartBody extends StatelessWidget {
  //const HomeMainBody(this.index);

  //dynamic index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SelectorView<CartViewModel, int>(
            // showProgressIndicator: false,
            selector: (_, vm) => vm.dataCount,
            builder: (_, vm, __, ___) {
              return ListView.separated(
                itemCount: vm.dataCount,
                separatorBuilder: (_, __) => Divider(
                  color: Colors.blueGrey,
                ),
                itemBuilder: (context, index) => CartTile(index),
              );
            }));
  }
}




// import 'package:flutter/material.dart';

// class CartBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Container(
//       margin: EdgeInsets.all(15.0),
//       child: Center(
//           child: ListView(children: <Widget>[
//         Container(
//           padding: const EdgeInsets.all(8),
//           child: const Text("Item #1"),
//           color: Color.fromARGB(255, 230, 212, 58),
//         ),
//         Container(
//           padding: const EdgeInsets.all(8),
//           child: const Text("Item #2"),
//           color: Color.fromARGB(255, 230, 212, 58),
//         ),
//         Container(
//           padding: const EdgeInsets.all(8),
//           child: const Text("Item #3"),
//           color: Color.fromARGB(255, 230, 212, 58),
//         ),
//         Container(
//           padding: const EdgeInsets.all(8),
//           child: const Text("Item #4"),
//           color: Color.fromARGB(255, 230, 212, 58),
//         ),
//       ])),
//     ));
//   }
// }
