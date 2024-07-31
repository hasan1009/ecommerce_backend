import 'package:ecom_backend/screens/mobile/auth/mobile_auth.dart';
import 'package:ecom_backend/screens/web/auth/web_auth.dart';
import 'package:ecom_backend/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: MobileAuthPage(), desktop: WebAuthPage());
  }
}
