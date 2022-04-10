import 'package:firebase_auth/firebase_auth.dart';

class Product {
  String Product_Img;
  String Product_Name;
  String Product_Description;
  double Product_Price;
  List<OrderQty> orderQuantity;

  Product(
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
    this.orderQuantity,
  );
  List<String> addToWishlist = [];
  static List<Product> samples = [
    Product(
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      [
        OrderQty(
          9,
          'Qty.',
        ),
      ],
    ),
    Product(
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      [
        OrderQty(
          9,
          'Qty.',
        ),
      ],
    ),
    Product(
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      [
        OrderQty(
          9,
          'Qty.',
        ),
      ],
    ),
    Product(
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      [
        OrderQty(
          9,
          'Qty.',
        ),
      ],
    ),
    Product(
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      [
        OrderQty(
          10,
          'Qty.',
        ),
      ],
    )
  ];
}

class OrderQty {
  late double quantity;
  late String measure;

  OrderQty(
    this.quantity,
    this.measure,
  );
}
