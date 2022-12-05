// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/intro_screens/intro_page_1.dart';
import 'package:flutter_application_2/intro_screens/intro_page_2.dart';
import 'package:flutter_application_2/intro_screens/intro_page_3.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// pageView
          PageView(
            controller: _controller,
            onPageChanged: (index) => setState(() => onLastPage = (index == 2)),
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          /// dot indicators
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// skip
                  TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text(
                        "SKIP",
                        style: TextStyle(color: Colors.grey[900]),
                      )),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: Colors.indigoAccent,
                    ),
                    onDotClicked: (index) => _controller.animateToPage(index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                  ),

                  /// next or done
                  onLastPage
                      ? TextButton(
                          onPressed: () {
                            Get.to(() => HomePage());
                          },
                          child: Text(
                            "DONE",
                            style: TextStyle(color: Colors.green[800]),
                          ))
                      : TextButton(
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          child: Text(
                            "NEXT",
                            style: TextStyle(color: Colors.grey[900]),
                          )),
                ],
              )),
        ],
      ),
    );
  }
}
 // onLastPage
          //     ? Positioned(
          //         bottom: 80,
          //         left: 100,
          //         right: 100,
          //         child: InkWell(
          //           borderRadius: BorderRadius.circular(40),
          //           onTap: () {
          //             Get.to(() => HomePage());
          //           },
          //           child: Container(
          //             decoration: BoxDecoration(
          //                 color: Colors.deepPurple,
          //                 borderRadius: BorderRadius.circular(40)),
          //             child: Padding(
          //               padding: const EdgeInsets.only(
          //                 top: 16,
          //                 bottom: 16,
          //                 left: 35,
          //                 right: 35,
          //               ),
          //               child: Text(
          //                 "Get Started",
          //                 textAlign: TextAlign.center,
          //                 style: GoogleFonts.robotoMono(color: Colors.white),
          //               ),
          //             ),
          //           ),
          //         ),
          //       )