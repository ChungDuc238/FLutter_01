import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/bottom_button_widget.dart';
import 'package:flutter_01/src/components/stless/List_construction_work_widget.dart';
import 'package:flutter_01/src/components/stless/custom_search_widget.dart';

class ConstructionWorkScreen extends StatefulWidget {
  const ConstructionWorkScreen({Key? key}) : super(key: key);

  @override
  State<ConstructionWorkScreen> createState() => _ConstructionWorkScreenState();
}

class _ConstructionWorkScreenState extends State<ConstructionWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              CustomAppBar(
                text: 'Construction works',
                callback: () => {},
              ),
              const SizedBox(
                height: 30.0,
              ),
              const CustomSearchWidget(),
              const SizedBox(
                height: 30.0,
              ),
              const ListConstructionWorkWidget(),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  BottomButtonWidget(text1: 'Skip', text2: 'Done'),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
