import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/bottom_button_widget.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stful/item_product.dart';
import 'package:flutter_01/src/model/product_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OderInProgressScreen extends StatefulWidget {
  const OderInProgressScreen({Key? key}) : super(key: key);

  @override
  State<OderInProgressScreen> createState() => _OderInProgressScreenState();
}

class _OderInProgressScreenState extends State<OderInProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30.0),
          child: Column(
            children: [
              CustomAppBar(text: 'Oder in progress', callback: () => {}),
              SizedBox(
                height: 60.0,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: listProduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7, crossAxisCount: 2),
                itemBuilder: (_, index) => ItemProduct(
                    imagePath: listProduct[index].imagePath,
                    name: listProduct[index].title,
                    price: listProduct[index].price),
              ),
              SizedBox(
                height: 40.0,
              ),
              const BottomButtonWidget(text1: 'Archive', text2: 'In work')
            ],
          ),
        ),
      ),
    ));
  }
}
