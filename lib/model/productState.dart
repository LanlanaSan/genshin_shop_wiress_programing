import 'package:flutter/material.dart';
import 'package:authentification_test/model/productInfo.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductDetailState createState() {
    return _ProductDetailState();
  }
}

class _ProductDetailState extends State<ProductDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.Product_Name),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 300,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Image(
                            image: AssetImage(widget.product.Product_Img),
                            width: MediaQuery.of(context).size.width,
                            height: 350,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, -0.8),
                          child: IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              size: 30,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {
                              //add to wishlist
                              print('adding to wishlist ...');
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, -0.4),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_cart,
                              size: 30,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              //add to wishlist
                              print('adding to cart ...');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
              child: Container(
                width: 400,
                height: 40,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: Text(
                        widget.product.Product_Name,
                        style: const TextStyle(
                            fontFamily: 'Lexend Deca',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '\฿' + '${widget.product.Product_Price}',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF4B39EF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 120,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${widget.product.Product_Description} ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Color(0xFF8B97A2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Expanded(
            //   child: ListView.builder(
            //     itemCount: widget.product.orderQuantity.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       final orderQty = widget.product.orderQuantity[index];
            //       return Text('${orderQty.quantity * _sliderVal} '
            //               '${orderQty.measure}' +
            //           'Total     ' +
            //           '${_sliderVal * widget.product.Product_Price} Baht');
            //     },
            //   ),
            // ),

            // Slider(
            //   min: 1,
            //   max: 10,
            //   divisions: 9,
            //   label: '${_sliderVal * widget.product.Product_Price} Baht',
            //   value: _sliderVal.toDouble(),
            //   onChanged: (newValue) {
            //     setState(() {
            //       _sliderVal = newValue.round();
            //     });
            //   },
            //   activeColor: Colors.blue,
            //   inactiveColor: Colors.black,
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 0),
              child: Row(
                  // +,- button
                  ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    print('Button being pressed ...');
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.blue,
                    size: 10.0,
                  ),
                  label: Expanded(
                    child: Text(
                      'Buy now',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size.fromHeight(30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
