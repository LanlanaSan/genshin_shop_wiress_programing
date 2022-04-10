import 'package:authentification_test/model/productInfo.dart';
import 'package:authentification_test/model/productState.dart';
import 'package:flutter/material.dart';

class productScreen extends StatefulWidget {
  const productScreen({Key? key}) : super(key: key);

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(15.0),
          itemCount: Product.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProductDetail(product: Product.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Product.samples[index]),
            );
          },
        ),
      ),
    );
  }

// TODO: Add buildRecipeCard() here
  Widget buildRecipeCard(Product product) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(product.Product_Img),
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              product.Product_Name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatine',
              ),
            ),
            Padding(padding: const EdgeInsets.all(5.0)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: const Size.fromHeight(30),
              ),
              onPressed: () {
                /*
              setState(() {
                addToWishlist.add(Product.samples[index]);
              });
              */
              },
              child: Text('Add to wishlist'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: const Size.fromHeight(30),
              ),
              onPressed: () {
                /*
              setState(() {
                addToWishlist.add(Product.samples[index]);
              });
              */
              },
              child: Text('Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
