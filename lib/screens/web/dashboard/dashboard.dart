import 'package:flutter/material.dart';

import '../../../widgets/our_page.dart';

class WebDashboard extends StatelessWidget {
  const WebDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const OurPage(
      title: "Dashboard",
      child: Column(
        children: [
          Row(
            children: [
              Text("Mahabub Hasan"),
            ],
          )
        ],
      ),
    );
  }
}
