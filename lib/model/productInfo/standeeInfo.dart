class Stand {
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;

  Stand(
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
  );
  static List<Stand> samples = [
    Stand(
      'Raiden Shogun Standee',
      'assets/RaidenShogunStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Stand(
      'Kujou Sara Standee',
      'assets/KujouSara.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Stand(
      'Sangonomiya Kokomi Standee',
      'assets/kokomi.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Stand(
      'Kamisato Ayaka Standee',
      'assets/AyakaStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Stand(
      'Sayu Standee',
      'assets/SayuStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
  ];
}
