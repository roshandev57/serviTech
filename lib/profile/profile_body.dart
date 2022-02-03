import 'package:flutter/material.dart';
import 'package:servitech/screens/profile/components/profile_button.dart';
import 'package:servitech/screens/profile/profile_screen.dart';
import '../../models/profile.dart';
import '../view.dart';
import 'profile_viewmodel.dart';

import '../cart/cart_screen.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: SelectorView<ProfileViewModel, Profile>(
            // showProgressIndicator: false,
            selector: (_, vm) => vm.getUser(),
            builder: (_, vm, user, ___) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 36,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      '${user.name}',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '${user.email}',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    ProfileButton(
                        text: "Update Profile",
                        img: Icon(Icons.person),
                        screen: ProfileScreen()),
                    ProfileButton(
                      text: "My Cart",
                      img: Icon(Icons.shopping_cart),
                      screen: CartScreen(),
                    ),
                    ProfileButton(
                      text: "Wishlist",
                      img: Icon(Icons.favorite),
                      screen: CartScreen(),
                    ),
                    ProfileButton(
                      text: "Settings",
                      img: Icon(Icons.settings),
                      screen: CartScreen(),
                    ),
                    ProfileButton(
                      text: "Start Selling",
                      img: Icon(Icons.sell),
                      screen: CartScreen(),
                    ),
                  ],
                ),
              );
            }));
  }
}
