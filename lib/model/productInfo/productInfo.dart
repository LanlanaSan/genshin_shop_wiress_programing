class Product {
  // final int Product_ID;
  // final String Product_category;
  final String Product_Img;
  final String Product_Name;
  final String Product_Description;
  final double Product_Price;
  //final List<OrderQty> orderQuantity;

  Product(
    // this.Product_ID,
    // this.Product_category,
    this.Product_Name,
    this.Product_Img,
    this.Product_Description,
    this.Product_Price,
    //this.orderQuantity,
  );
  List<String> addToWishlist = [];
  static List<Product> samples = [
    Product(
      // 1,
      // 'accessories',
      'Wanderers String-Kettle Necklace',
      'assets/Wanderer_necklace.jpg',
      'Material: Plated Copper, Inlaid Zircon\nWeight: Approx. 4.2g \nLength of the Necklace: 420 mm\nLength of the charm: 17.5 X 10 mm',
      2091.25,
      // [
      //   OrderQty(
      //     1,
      //     'Qty.',
      //   ),
      // ],
    ),
    Product(
      // 2,
      // 'accessories',
      'Bard Arrow Feather Enamel pin',
      'assets/Bard_feather.jpg',
      'Material:  Plated Copper, Inlaid Zircon\nWeight: Approx. 4.1g \nLength of item: 31.5 X 16 mm',
      1447.73,
    ),
    Product(
      // 3,
      // 'accessories',
      'Concerts Final Hour Adjustable Ring',
      'assets/FinalHourRing.jpg',
      'Material:  Plated Copper, Inlaid Zircon\nWeight: Approx. 4.1g \nInner Diameter: 15.9 ~ 18.2 MM\nInner Circumference: 50 ~ 57 MM',
      1447.73,
    ),
    Product(
      // 4,
      // 'standee',
      'Raiden Shogun Standee',
      'assets/RaidenShogunStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Product(
      // 5,
      // 'standee',
      'Kujou Sara Standee',
      'assets/KujouSara.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Product(
      // 6,
      // 'standee',
      'Sangonomiya Kokomi Standee',
      'assets/kokomi.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Product(
      //7
      'Kamisato Ayaka Standee',
      'assets/AyakaStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Product(
      //8
      'Sayu Standee',
      'assets/SayuStandee.jpg',
      'Material: Acrylic\nSize: 11 cm wide, 15.5 cm tall',
      546,
    ),
    Product(
      //9
      'dodoco plush',
      'assets/dodocoPlush.jpg',
      'Size:13/22CM  \nMaterial:PP Cotton  \nColor:As shown',
      129,
    ),
    Product(
      //10
      'Hu Tao Plush',
      'assets/hutaoPlush.jpg',
      'Size: 20CM \nMaterial: Filled With Cotton \nCharacters : Hu Tao',
      768.51,
    ),
    Product(
      //11
      'Morax Dragon Plush',
      'assets/dragonPlush.jpg',
      'Size: 70CM 35CM  \nMaterial: Filled With PP Cottonl',
      1127,
    ),
    Product(
      //12
      'Zhong Li Pillar Pillow',
      'assets/PillarPlush.jpg',
      'Material: Filled With PP Cotton \nCharacters : Zhong Li',
      516,
    ),
    Product(
      //13
      'Gouba Plush',
      'assets/guobaPlush.jpg',
      'Material: Filled With PP Cotton \nCharacters : Gouba',
      725,
    ),
    Product(
      //14
      'chongyun Pillow',
      'assets/chongyunPlush.jpg',
      'Material: Filled With PP Cotton \nCharacters : chongyun',
      512,
    ),
    Product(
      //15
      'Hu Tao Keycaps',
      'assets/hutaokey.jpg',
      'Size: 108 Keys \nMaterial: PBT Keyboard \nLanguage: English',
      2355,
    ),
    Product(
      //16
      'Mousepad Raiden Shogun ',
      'assets/Raidenmousepad.jpg',
      'Note: 100% Brand New \nHigh Quality,Made of Soft Rubber Material & Smooth Fabric\nSize: 30x70 cm 30x80 cm',
      372,
    ),
    Product(
      //17
      'Razer Iskur X ergonomic gaming chair',
      'assets/gchair.jpg',
      'Color: Black color',
      8750,
    ),
    Product(
      //18
      'Razer DeathAdder mouse',
      'assets/mouse.jpg',
      'Color: Black color',
      4999,
    ),
    Product(
      //19
      'Mousepad Hu Tao',
      'assets/hutaoPad.jpg',
      'size:600mm*300mm*2mm \n\nIf you need custom size, please contact customer service\n\nMaterial: Natural Rubber + cloth surface',
      186,
    ),
    Product(
      //20
      'Zhongli Vacuum Water Bottle',
      'assets/zhonglibottle.jpg',
      'Material: 304 stainless steel. \nSize: 6 X 20 cm. \nCapacity: 400 ml.',
      399,
    ),
    Product(
      //21
      'Guoba Pot',
      'assets/guobaPot.jpg',
      'Size: 1100ml 23cm x 20cm x 12cm',
      2100,
    ),
    Product(
      //22
      'Beidou 3D LED Lamp',
      'assets/beidoulamp.jpg',
      'Remoter Control Mode: On/Off, 16 colors, adjustable brightness, \nflash mode, smooth mode.Low consumption, will not be hot after long time working, Light source uses the high-quality LED, light is soft and uniform, no dazzling, non-flicker, wont hurt eyes.',
      690,
    ),
    Product(
      //23
      'EULA 3D Led Lamp',
      'assets/eulalamp.jpg',
      'Remoter Control Mode: Remote Control with On/Off, 16 colors, adjustable brightness, flash mode, smooth mode.Low consumption, will not be hot after long time working, Light source uses the high-quality LED, light is soft and uniform, no dazzling, non-flicker, wont hurt eyes.',
      600,
    ),
    Product(
      //24
      'Genshin Impact Vision Keychain',
      'assets/vk.jpg',
      'Sixe: 5.7*4.6 CM\nMaterial: Plastic\nItem Type:Genshin Impact Vision Keychain',
      61,
    ),
    Product(
      //25
      'Chibi pin(x1)',
      'assets/ghp.jpg',
      'Round pinback buttons\n\nYour choice of two sizes: \npetite Small (1.25"/32mm) \nin-your-face Large (2.25"/57mm)\n\nMaterial: scratch- and UV-resistant Mylar',
      120.6,
    ),
  ];
}

// class OrderQty {
//   late double quantity;
//   late String measure;

//   OrderQty(
//     this.quantity,
//     this.measure,
//   );
// }
