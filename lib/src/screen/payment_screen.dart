import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stful/payment_body_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 15.0, right: 30.0, top: 30.0, bottom: 30.0),
              child:  CustomAppBar(text: 'Payment for services', callback: () => {}),
            ),
            const Expanded(
              flex: 3,
              child: BodyPaymentScreen(),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: CustomButton(
                        text: 'Checkout',
                        color: 0xFF20C3AF,
                        callback: () => {},
                        colorText: 0xFFFFFFFF,
                        colorBorder: 0),
                  ),
                  const SizedBox(height: 18.0),
                  const Text(
                    'Continue Shopping',
                    style: TextStyle(
                      color: Color(0xFFFFB19D),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFFFB19D),
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
