class PaymentCard {
  final String imageCard;
  final String id;
  final String date;
  final String logocard;
  const PaymentCard(
      {required this.imageCard,
      required this.id,
      required this.date,
      required this.logocard});
}

List<PaymentCard> listPaymentCard = [
  PaymentCard(
      imageCard: 'assets/images/card_1.png',
      id: '*** *** *** 3872',
      date: '17/2020',
      logocard: 'assets/images/logo_visa.png'),
      PaymentCard(
      imageCard: 'assets/images/card_1.png',
      id: '*** *** *** 2873',
      date: '17/2020',
      logocard: 'assets/images/logo_visa.png'),
      PaymentCard(
      imageCard: 'assets/images/card_2.png',
      id: '*** *** *** 3212',
      date: '17/2020',
      logocard: 'assets/images/logo_mastercard.png'),
      PaymentCard(
      imageCard: 'assets/images/card_1.png',
      id: '*** *** *** 3412',
      date: '17/2020',
      logocard: 'assets/images/logo_visa.png'),
];
