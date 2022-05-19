class Plush {
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;

  Plush(
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
  );
  static List<Plush> samples = [
    Plush(
      //9
      'dodoco plush',
      'assets/dodocoPlush.jpg',
      'Size:13/22CM  \nMaterial:PP Cotton  \nColor:As shown',
      129,
    ),
    Plush(
      //10
      'Hu Tao Plush',
      'assets/hutaoPlush.jpg',
      'Size: 20CM \nMaterial: Filled With Cotton \nCharacters : Hu Tao',
      768.51,
    ),
    Plush(
      //11
      'Morax Dragon Plush',
      'assets/dragonPlush.jpg',
      'Size: 70CM 35CM  \nMaterial: Filled With PP Cottonl',
      1127,
    ),
    Plush(
      //12
      'Zhong Li Pillar Pillow',
      'assets/PillarPlush.jpg',
      'Material: Filled With PP Cotton \nCharacters : Zhong Li',
      516,
    ),
    Plush(
      //13
      'Gouba Plush',
      'assets/guobaPlush.jpg',
      'Material: Filled With PP Cotton \nCharacters : Gouba',
      725,
    ),
    Plush(
      //14
      'chongyun Pillow',
      'assets/chongyunPlush.jpg',
      'Material: Filled With PP Cotton \nCharacters : chongyun',
      512,
    ),
  ];
}
