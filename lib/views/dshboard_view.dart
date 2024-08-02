import 'package:ecom_backend/screens/mobile/dashboard/dashboard.dart';
import 'package:ecom_backend/screens/web/dashboard/dashboard.dart';
import 'package:ecom_backend/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: MobileDashboard(), desktop: WebDashboard());
  }
}
