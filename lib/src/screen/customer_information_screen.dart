import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerInformationScreen extends StatefulWidget {
  const CustomerInformationScreen({Key? key}) : super(key: key);

  @override
  State<CustomerInformationScreen> createState() =>
      _CustomerInformationScreenState();
}

class _CustomerInformationScreenState extends State<CustomerInformationScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> imageProductDetail = [
      'assets/images/product_detail_1.png',
      'assets/images/product_detail_2.png',
      'assets/images/product_detail_3.png',
      'assets/images/product_detail_4.png',
      'assets/images/product_detail_5.png'
    ];
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                text: 'Customer Information',
                callback: () => {},
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Portfolio',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'The last completed works of the contractor are shown below.',
                style: TextStyle(fontSize: 14.0, color: Color(0xFF616173)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 26.0, bottom: 16.0),
                height: 255.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 285,
                      child: Image.asset(
                        imageProductDetail[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(imageProductDetail[1]),
                        Image.asset(imageProductDetail[2]),
                        Image.asset(imageProductDetail[3]),
                        Image.asset(imageProductDetail[4]),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/images/star.png'),
                  Image.asset('assets/images/star.png'),
                  Image.asset('assets/images/star.png'),
                  Image.asset('assets/images/star.png'),
                  Image.asset('assets/images/star_1.png'),
                ],
              ),
              SizedBox(
                height: 57,
              ),
              const Text(
                'Details',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF525464),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'I have been working in this position for over 10 years! I have created many design solutions and I think my main best quality is creativity. If you liked my work, please contact me and see the professionalism and quality of my services.',
                style: TextStyle(height: 1.7),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Read more',
                style: TextStyle(
                  color: Color(0xFFFFB19D),
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
