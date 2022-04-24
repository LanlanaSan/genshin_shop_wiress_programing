class Product {
  final int Product_ID;
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;
  final List<OrderQty> orderQuantity;

  Product(
    this.Product_ID,
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
    this.orderQuantity,
  );
  List<String> addToWishlist = [];
  static List<Product> samples = [
    Product(
      1,
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      [
        OrderQty(
          1,
          'Qty.',
        ),
      ],
    ),
    Product(
      2,
      'Bard Arrow Feather Enamel pin',
      'assets/Bard_feather.jpg',
      'Material:  Plated Copper, Inlaid Zircon\nWeight: Approx. 4.1g \nLength of item: 31.5 X 16 mm',
      1447.73,
      [
        OrderQty(
          1,
          'Qty.',
        ),
      ],
    ),
    Product(
      3,
      'Concerts Final Hour Adjustable Ring',
      'assets/FinalHourRing.jpg',
      'Material:  Plated Copper, Inlaid Zircon\nWeight: Approx. 4.1g \nInner Diameter: 15.9 ~ 18.2 MM\nInner Circumference: 50 ~ 57 MM',
      1447.73,
      [
        OrderQty(
          1,
          'Qty.',
        ),
      ],
    ),
    Product(
      4,
      'Raiden Shogun Standee',
      'assets/RaidenShogunStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
      [
        OrderQty(
          1,
          'Qty.',
        ),
      ],
    ),
    Product(
      5,
      'Kujou Sara Standee',
      'assets/KujouSara.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
      [
        OrderQty(
          1,
          'Qty.',
        ),
      ],
    ),
    Product(
      6,
      'Sangonomiya Kokomi Standee',
      'assets/kokomi.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
      [
        OrderQty(
          1,
          'Qty.',
        ),
      ],
    ),
    Product(
      7,
      'Diluc Letter Set',
      'assets/DilucLetter.jpg',
      'The Letter Set consists of 3 items\n1. Badge (58mm Diameter, Alloy Metal)\n2. Colour Paper (150 x 150 mm)\n3. Letter Set\nEnvelope: (110 X 160 mm, 200g card board)\nPost card: (148 X 202 mm) \nSticker: (108 X 75 mm)',
      578.9,
      [
        OrderQty(
          1,
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
