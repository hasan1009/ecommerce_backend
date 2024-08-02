import 'package:ecom_backend/config/app_image.dart';
import 'package:ecom_backend/config/colors.dart';
import 'package:ecom_backend/screens/dashboard/widget/statics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    var statics = [
      {
        "icon": AppImage.cartImage,
        "label": "Total Order",
        "value": "2343",
      },
      {
        "icon": AppImage.refreshImage,
        "label": "Pending Order",
        "value": "123",
      },
      {
        "icon": AppImage.carImage,
        "label": "Processing Order",
        "value": "76",
      },
      {
        "icon": AppImage.doneImage,
        "label": "Completed Order",
        "value": "32",
      },
    ];
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                Container(
                  width: 5,
                  height: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 10),
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: statics
              .map((e) => Expanded(
                      child: HomeStatics(
                    label: e["label"]!,
                    value: e["value"]!,
                    icon: e["icon"]!,
                  )))
              .toList(),
        )
      ],
    );
  }
}
