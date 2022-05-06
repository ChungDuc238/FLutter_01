import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stless/bodey_payment_card_widget.dart';

class PaymentCardScreen extends StatefulWidget {
  const PaymentCardScreen({Key? key}) : super(key: key);

  @override
  State<PaymentCardScreen> createState() => _PaymentCardScreenState();
}

class _PaymentCardScreenState extends State<PaymentCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
                left: 15.0, right: 30.0, top: 30.0, bottom: 52.0),
            child:  CustomAppBar(text: 'Payment cards', callback: () => {}),
          ),
          const BodyPaymentCardWidget(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomButton(
                      text: 'Add new card',
                      color: 0xFF20C3AF,
                      callback: () => {},
                      colorText: 0xFFFFFFFF,
                      colorBorder: 0),
                ),
                const SizedBox(
                  height: 40.0,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
