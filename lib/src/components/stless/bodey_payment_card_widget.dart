import 'package:flutter/material.dart';
import 'package:flutter_01/src/model/payment_card_model.dart';

class BodyPaymentCardWidget extends StatelessWidget {
  const BodyPaymentCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder(
        itemCount: listPaymentCard.length,
        shrinkWrap: true,
        itemBuilder: (_, int index) => Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: const Color(0xffE2E2E0)),
          ),
          margin: const EdgeInsets.only(bottom: 16),
          height: 90.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(listPaymentCard[index].imageCard),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(listPaymentCard[index].id),
                        Text(
                          listPaymentCard[index].date,
                          style: const TextStyle(color: Color(0xFF838391)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage(listPaymentCard[index].logocard),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
