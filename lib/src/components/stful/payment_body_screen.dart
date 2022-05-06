import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stless/item_payment.dart';
import 'package:flutter_01/src/model/payment_model.dart';

class BodyPaymentScreen extends StatefulWidget {
  const BodyPaymentScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyPaymentScreen> createState() => _BodyPaymentScreenState();
}

class _BodyPaymentScreenState extends State<BodyPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListView.builder(
            itemCount: listPayment.length,
            shrinkWrap: true,
            itemBuilder: (_, int index) => ItemPayment(
                imagePath: listPayment[index].imagePath,
                content: listPayment[index].content,
                price: listPayment[index].price),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
            child: Divider(
              color: Color(0xFFF7F6F5),
              thickness: 2,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 40.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF525464),
                  ),
                ),
                Text(
                  '\$200',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF525464),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
