import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jitak/view/mobile/edit_store_profile_mobile.dart';
import 'package:jitak/view/mobile/home_page_mobile.dart';
import 'package:jitak/view/mobile/stamb_card_details_mobile.dart';
import 'package:jitak/view/tab/homePageTablet.dart';
import 'package:jitak/view/tab/stamp_card_details_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   ScreenTypeLayout.builder(
          mobile: (p0) => const HomePage(),
          tablet: (p0) => const HomePageTablet()

        )
        );
  }
}

