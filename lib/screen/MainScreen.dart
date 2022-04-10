import 'package:authentification_test/afterLogin/cart.dart';
import 'package:authentification_test/afterLogin/others.dart';
import 'package:authentification_test/afterLogin/product.dart';
import 'package:authentification_test/afterLogin/wishlist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance; //For managing user state and data

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // First part of appbar
            title: const Text('GENSHIN shop'),

            //second part of appbar
            //backgroundColor: Colors.white,
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.storefront),
                  text: 'Products',
                ),
                Tab(
                  icon: Icon(Icons.favorite_border),
                  text: 'Wishlist',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                  text: 'Cart',
                ),
                Tab(
                  icon: Icon(Icons.toc),
                  text: 'Others',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              //page connections of each tabs
              productScreen(),
              wishlistScreen(),
              cartScreen(),
              otherScreen()
            ],
          ),
        ),
      ),
    );
  }
}
