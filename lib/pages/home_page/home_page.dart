// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tirhutalipi/pages/home_page/home_silder.dart';
import 'package:tirhutalipi/res/lang.dart';
import 'package:tirhutalipi/utils/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> headerImages = [
    "assets/imgs/img1.jpeg",
    "assets/imgs/img2.jpeg",
    "assets/imgs/img3.jpeg",
    "assets/imgs/img4.jpeg"
  ];
  bool isHindi = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar.appBar(
        ishindi: isHindi,
        onTap: (ishindi) {
          setState(() {
            isHindi = ishindi;
          });
          if (isHindi == true) {
            Get.updateLocale(Locale(hindi));
          } else {
            Get.updateLocale(Locale(metheli));
          }
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .35,
              width: Get.width,
              child: Stack(
                children: [
                  HomeSlider(slideData: headerImages),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // text
                        Text(
                          "AppString.mainHeadLine.tr",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        //Btns
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("kundan")),
                            SizedBox(width: 10),
                            ElevatedButton(
                                onPressed: () {}, child: Text("kundan2"))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: Get.height * 0.4,
            //   width: double.maxFinite,
            //   decoration: BoxDecoration(color: Colors.green),
            //   alignment: Alignment.center,
            //   child: Stack(
            //     children: [
            //       CarouselSlider.builder(
            //         itemCount: headerImages.length,
            //         options: CarouselOptions(viewportFraction: 1),
            //         itemBuilder: (context, index, realIndex) {
            //           return Image.asset(
            //             headerImages[index],
            //             height: Get.height * 0.4,
            //             fit: BoxFit.cover,
            //           );
            //         },
            //       ),
            //       Text(AppString.mainHeadLine.tr),
            //     ],
            //   ),
            // ),

            Center(
              child: Text(AppString.aboutText.tr),
            ),
          ],
        ),
      ),
    );
  }
}
