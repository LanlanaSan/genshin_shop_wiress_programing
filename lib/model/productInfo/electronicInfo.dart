class Elec {
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;

  Elec(
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
  );
  static List<Elec> samples = [
    Elec(
      //15
      'Hu Tao Keycaps',
      'assets/hutaokey.jpg',
      'Size: 108 Keys \nMaterial: PBT Keyboard \nLanguage: English',
      2355,
    ),
    Elec(
      //16
      'Mousepad Raiden Shogun ',
      'assets/Raidenmousepad.jpg',
      'Note: 100% Brand New \nHigh Quality,Made of Soft Rubber Material & Smooth Fabric\nSize: 30x70 cm 30x80 cm',
      372,
    ),
    Elec(
      //17
      'Razer Iskur X ergonomic gaming chair',
      'assets/gchair.jpg',
      'Color: Black color',
      8750,
    ),
    Elec(
      //18
      'Razer DeathAdder mouse',
      'assets/mouse.jpg',
      'Color: Black color',
      4999,
    ),
    Elec(
      //19
      'Mousepad Hu Tao',
      'assets/hutaoPad.jpg',
      'size:600mm*300mm*2mm \n\nIf you need custom size, please contact customer service\n\nMaterial: Natural Rubber + cloth surface',
      186,
    )
  ];
}
