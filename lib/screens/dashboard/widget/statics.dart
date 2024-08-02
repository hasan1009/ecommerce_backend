import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../config/colors.dart';

class HomeStatics extends StatelessWidget {
  final String label;
  final String value;
  final String icon;

  HomeStatics({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: AppColors.sidebarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: label == "Total Order"
                    ? Theme.of(context).colorScheme.primary.withOpacity(0.2)
                    : label == "Pending Order"
                        ? Color(0xFFEE0000).withOpacity(0.2)
                        : label == "Processing Order"
                            ? Color(0xFF1400FC).withOpacity(0.2)
                            : Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.2)),
            child: SvgPicture.asset(
              icon,
              width: 25,
              color: label == "Total Order"
                  ? Theme.of(context).colorScheme.primary
                  : label == "Pending Order"
                      ? Color(0xFFEE0000)
                      : label == "Processing Order"
                          ? Color(0xFF1400FC)
                          : Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          )
        ],
      ),
    ));
  }
}
