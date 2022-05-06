import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stless/custom_card_form.dart';
import 'package:flutter_01/src/components/stless/custom_payment_card.dart';

class PaymentCardDetailScreen extends StatefulWidget {
  const PaymentCardDetailScreen({Key? key}) : super(key: key);

  @override
  State<PaymentCardDetailScreen> createState() =>
      _PaymentCardDetailScreenState();
}

class _PaymentCardDetailScreenState extends State<PaymentCardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CustomAppBar(text: 'Payment Cards', callback: () => {}),
              const SizedBox(
                height: 30.0,
              ),
              const CustomPaymentCard(),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Card Number',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(
                    0xFF525464,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: double.infinity,
                height: 60.0,
                color: const Color(0xFFF7F7F7),
                child: const Padding(
                  padding: EdgeInsets.all(21.0),
                  child: Text(
                    '**** **** **** 3872',
                    style: TextStyle(color: Color(0xFFB0B0C3), fontSize: 16.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              Row(
                children: const [
                  Expanded(
                    child: CustomCardFormWidget(
                        title: 'Exp. Month',
                        name: '07',
                        icon: Icons.keyboard_arrow_down),
                  ),
                  Expanded(
                    child: CustomCardFormWidget(
                        title: 'Exp. Year',
                        name: '2022',
                        icon: Icons.keyboard_arrow_down),
                  ),
                  Expanded(
                    child: CustomCardFormWidget(
                        title: 'CVV',
                        name: '* * *',
                        icon: Icons.visibility_off),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        text: 'Save card',
                        color: 0xFF20C3AF,
                        callback: () => {},
                        colorText: 0xFFFFFFFF,
                        colorBorder: 0),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
