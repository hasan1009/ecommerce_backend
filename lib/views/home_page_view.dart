import 'package:ecom_backend/screens/mobile/home_page/mobile_homepage.dart';
import 'package:ecom_backend/screens/web/home_page/web_home_page.dart';
import 'package:ecom_backend/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: MobileHomePage(), desktop: WebHomePage());
  }
}
