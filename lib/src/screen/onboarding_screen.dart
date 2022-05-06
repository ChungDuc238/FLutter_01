import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stful/onboarding_content.dart';
import 'package:flutter_01/src/model/onboarding_model.dart';
import 'package:flutter_01/src/screen/categories_screen.dart';

// ignore: camel_case_types
class onboardingScreen extends StatefulWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  var curentPage = 0;
  int _pageIndex = 0;
  var pageviewController = PageController(
    initialPage: 0,
  );
  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    autoNextPage();
  }

  autoNextPage() {
    Timer.periodic(const Duration(seconds: 6), (timer) {
      if (curentPage < onboardingList.length - 1) {
        setState(() {
          curentPage = curentPage + 1;
          if (curentPage == onboardingList.length - 1) {
            Future.delayed(const Duration(seconds: 3), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            });
          }
        });
      }
      pageviewController.animateToPage(curentPage,
          duration: const Duration(seconds: 3), curve: Curves.easeIn);
      // }
    });
  }

  ////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
                controller: pageviewController,
                scrollDirection: Axis.horizontal,
                itemCount: onboardingList.length,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: ((context, index) => onboadringContent(
                    title: onboardingList[index].title,
                    image: onboardingList[index].image,
                    description: onboardingList[index].description))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    onboardingList.length,
                    (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _pageIndex) ? 30 : 10,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _pageIndex)
                                ? const Color(0xFFB5C3C7)
                                : const Color(0xFFB5C3C7).withOpacity(0.5)),
                      );
                    },
                  ))
            ],
          ),
          (_pageIndex == onboardingList.length - 1)
              ? Container(
                  margin:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                  child: FloatingActionButton(
                      child: const Icon(
                        Icons.add,
                        size: 25,
                      ),
                      backgroundColor: Color(0xff20C3AF),
                      onPressed: () {}),
                )
              : Container(
                  height: 60,
                  width: double.infinity,
                  margin:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                  child: CustomButton(
                      text: 'Next',
                      color: 0xff20C3AF,
                      callback: () => {},
                      colorText: 0xFFFFFFFF,
                      colorBorder: 0.0),
                ),

          // Container(
          //   height: 60,
          //   width: double.infinity,
          //   margin: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
          //   child: CustomButton(
          //       text: 'Next',
          //       color: 0xff20C3AF,
          //       callback: () {
          //         if (_pageIndex == onboardingList.length - 1) {

          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => CategoriesScreen()));
          //         }
          //       },colorBorder: 0.0,colorText: 0xFFFFFFFF,),
          // )
        ],
      ),
    );
  }
}
