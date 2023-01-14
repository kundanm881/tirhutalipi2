// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tirhutalipi/res/lang.dart';

class KAppBar {
  static appBar({
    required bool ishindi,
    required Function(bool ishindi) onTap,
  }) =>
      AppBar(
        title: Text(AppString.appName.tr),
        actions: [
          Center(
            child: InkWell(
              onTap: () => onTap(!ishindi),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                alignment: Alignment.center,
                child: Text(AppString.langA.tr),
              ),
            ),
          )
          // PopupMenuButton(
          //   child: Center(
          //     child: Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 8),
          //         child: Row(
          //           children: [
          //             Text("देवनागरी"),
          //             Icon(Icons.arrow_drop_down_rounded),
          //           ],
          //         )),
          //   ),
          //   itemBuilder: (context) {
          //     return [
          //       PopupMenuItem(child: Text("देवनागरी")),
          //       PopupMenuItem(child: Text("Tirhutha")),
          //     ];
          //   },
          //   onSelected: (value) {
          //     print("object $value");
          //   },
          // ),
        ],
      );

  static _updateLanguage({required bool isHindi}) {
    print("object2");
  }
}

  // 𑒁
    // अ

