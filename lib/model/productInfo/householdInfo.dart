class House {
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;

  House(
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
  );
  static List<House> samples = [
    House(
      //20
      'Zhongli Vacuum Water Bottle',
      'assets/zhonglibottle.jpg',
      'Material: 304 stainless steel. \nSize: 6 X 20 cm. \nCapacity: 400 ml.',
      399,
    ),
    House(
      //21
      'Guoba Pot',
      'assets/guobaPot.jpg',
      'Size: 1100ml 23cm x 20cm x 12cm',
      2100,
    ),
    House(
      //22
      'Beidou 3D LED Lamp',
      'assets/beidoulamp.jpg',
      'Remoter Control Mode: On/Off, 16 colors, adjustable brightness, \nflash mode, smooth mode.Low consumption, will not be hot after long time working, Light source uses the high-quality LED, light is soft and uniform, no dazzling, non-flicker, wont hurt eyes.',
      690,
    ),
    House(
      //23
      'EULA 3D Led Lamp',
      'assets/eulalamp.jpg',
      'Remoter Control Mode: Remote Control with On/Off, 16 colors, adjustable brightness, flash mode, smooth mode.Low consumption, will not be hot after long time working, Light source uses the high-quality LED, light is soft and uniform, no dazzling, non-flicker, wont hurt eyes.',
      600,
    ),
  ];
}
