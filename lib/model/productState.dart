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
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.product.Product_Img),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.product.Product_Name,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.product.orderQuantity.length,
                itemBuilder: (BuildContext context, int index) {
                  final orderQty = widget.product.orderQuantity[index];
                  return Text('${orderQty.quantity * _sliderVal} '
                      '${orderQty.measure}');
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              label: '${_sliderVal * widget.product.Product_Price} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
