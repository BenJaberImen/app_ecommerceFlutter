class Item {
  String imgPath;
  double price;
  String location;
String name;
  Item({required this.imgPath, required this.name,required this.price, this.location: "Main branch"});
}


  final List<Item> items = [
    Item(name:"product1",price: 212.99, imgPath: "assets/images/1.webp", location: "Imen Shop"),
    Item(name:"product2",price: 142.99, imgPath: "assets/images/2.webp"),
    Item(name:"product3",price: 172.99, imgPath: "assets/images/3.webp"),
    Item(name:"product4",price: 126.99, imgPath: "assets/images/4.webp"),
    Item(name:"product5",price: 128.99, imgPath: "assets/images/5.webp"),
    Item(name:"product6",price: 129.99, imgPath: "assets/images/6.webp"),
    Item(name:"product7",price: 199.99, imgPath: "assets/images/7.webp"),
    Item(name:"product8",price: 188.99, imgPath: "assets/images/8.webp"),
  ];