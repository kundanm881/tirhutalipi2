import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tirhutalipi/get_controller_bindings.dart';
import 'package:tirhutalipi/pages/home_page/home_page.dart';
import 'package:tirhutalipi/res/lang.dart';
import 'package:tirhutalipi/res/themes.dart';
import 'package:tirhutalipi/utils/device_id.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print(await DeviceId.getDeviceID());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      home: const HomePage(),
      translations: LocalLangunage(),
      locale: const Locale(hindi),
      initialBinding: GetControllerBindings(),
    );
  }
}
