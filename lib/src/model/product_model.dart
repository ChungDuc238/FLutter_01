class Product {
  String imagePath;
  String title;
  String price;
  Product({required this.imagePath, required this.title, required this.price});
}

List<Product> listProduct = [
  Product(
      imagePath: 'assets/images/product_1.png',
      title: 'Balcony repair',
      price: '24'),
  Product(
      imagePath: 'assets/images/product_2.png',
      title: 'Redecorating',
      price: '60'),
  Product(
      imagePath: 'assets/images/product_4.png',
      title: 'Painting works',
      price: '42'),
  Product(
      imagePath: 'assets/images/product_3.png',
      title: 'Interior design',
      price: '54'),
  // Product(
  //     imagePath: 'assets/images/product_3.png',
  //     title: 'Painting works',
  //     price: '42'),
  // Product(
  //     imagePath: 'assets/images/product_4.png',
  //     title: 'Interior design',
  //     price: '54'),
  // Product(
  //     imagePath: 'assets/images/product_4.png',
  //     title: 'Interior design',
  //     price: '54'),
  // Product(
  //     imagePath: 'assets/images/product_3.png',
  //     title: 'Painting works',
  //     price: '42'),
  // Product(
  //     imagePath: 'assets/images/product_4.png',
  //     title: 'Interior design',
  //     price: '54'),
];
