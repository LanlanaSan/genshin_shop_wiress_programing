import 'package:authentification_test/model/productInfo/electronicInfo.dart';
import 'package:authentification_test/model/productInfo/productInfo.dart';
import 'package:authentification_test/model/productState.dart';
import 'package:flutter/material.dart';

class Electronics extends StatefulWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  _Electronics createState() => _Electronics();
}

class _Electronics extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gaming'),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(15.0),
        itemCount: Elec.samples.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 3,
          childAspectRatio: 0.44,
        ),
        itemBuilder: (BuildContext context, int index) {
          var elec = Elec.samples[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductDetail(product: Product.samples[14]);
                  },
                ),
              );
            },
            child: buildSCard(Elec.samples[index]),
          );
        },
      ),
    );
  }

  Widget buildSCard(Elec elec) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Image(
              image: AssetImage(elec.Product_Img),
              fit: BoxFit.cover,
              height: 150,
              width: 150),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            elec.Product_Name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lexend Deca',
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 14.0,
              ),
              Text(
                '\฿' + '${elec.Product_Price}',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF4B39EF),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 5),
                ////////////////ADD TO CART BUTTON//////////////
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  label: Text('Add to cart'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size.fromHeight(30),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Button-Reserve pressed ...');
                  },
                ),
                ////////////////////////////////////////////////
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  label: Text('Wishlist'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size.fromHeight(30),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Button-Reserve pressed ...');
                  },
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
