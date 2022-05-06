class PaymentModel {
  String imagePath;
  String content;
  String price;
  PaymentModel(
      {required this.imagePath, required this.content, required this.price});
}

List<PaymentModel> listPayment = [
  PaymentModel(
      imagePath: 'assets/images/payment_1.png',
      content: 'Welding works',
      price: '\$40'),
  PaymentModel(
      imagePath: 'assets/images/payment_2.png',
      content: 'Foundation works',
      price: '\$55'),
  PaymentModel(
      imagePath: 'assets/images/payment_3.png',
      content: 'Waterproofing',
      price: '\$20'),
  PaymentModel(
      imagePath: 'assets/images/payment_1.png',
      content: 'Welding works',
      price: '\$40'),
  PaymentModel(
      imagePath: 'assets/images/payment_2.png',
      content: 'Foundation works',
      price: '\$55'),
];
