class Keychain {
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;

  Keychain(
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
  );
  static List<Keychain> samples = [
    Keychain(
      //24
      'Genshin Impact Vision Keychain',
      'assets/vk.jpg',
      'Sixe: 5.7*4.6 CM\nMaterial: Plastic\nItem Type:Genshin Impact Vision Keychain',
      61,
    ),
    Keychain(
      //25
      'Chibi pin(x1)',
      'assets/ghp.jpg',
      'Round pinback buttons\n\nYour choice of two sizes: \npetite Small (1.25"/32mm) \nin-your-face Large (2.25"/57mm)\n\nMaterial: scratch- and UV-resistant Mylar',
      120.6,
    ),
  ];
}
