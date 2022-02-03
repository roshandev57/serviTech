import 'package:flutter/material.dart';
import '../../models/item.dart';
import '../view.dart';
import 'home_viewmodel.dart';
import 'home_tile.dart';

class HomeMainBody extends StatelessWidget {
  //const HomeMainBody(this.index);

  //dynamic index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SelectorView<HomeViewModel, int>(
            // showProgressIndicator: false,
            selector: (_, vm) => vm.dataCount,
            builder: (_, vm, __, ___) {
              return ListView.separated(
                itemCount: vm.dataCount,
                separatorBuilder: (_, __) => Divider(
                  color: Colors.blueGrey,
                ),
                itemBuilder: (context, index) => HomeTile(index),
              );
            }));
  }
}
 


          //     GridView.count(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //     children: <Widget>[
            // Container(
            //   padding: const EdgeInsets.all(8),
            //   child: const Text("Item #1"),
            //   color: Colors.teal[100],
            // ),
          //   Container(
          //     padding: const EdgeInsets.all(8),
          //     child: const Text("Item #2"),
          //     color: Colors.teal[100],
          //   ),
          //   Container(
          //     padding: const EdgeInsets.all(8),
          //     child: const Text("Item #3"),
          //     color: Colors.teal[100],
          //   ),
          //   Container(
          //     padding: const EdgeInsets.all(8),
          //     child: const Text("Item #4"),
          //     color: Colors.teal[100],
          //   ),
          //   Container(
          //     padding: const EdgeInsets.all(8),
          //     child: const Text("Item #5"),
          //     color: Colors.teal[100],
          //   ),
          // ])