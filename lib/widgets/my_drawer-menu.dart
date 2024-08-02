// ignore_for_file: file_names

import 'package:ecom_backend/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDwawerMenu extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final String icon;
  final bool isSelected;
  const MyDwawerMenu(
      {super.key,
      required this.ontap,
      required this.text,
      required this.icon,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color:
                  isSelected ? AppColors.darkPrimaryColor : AppColors.iconColor,
            ),
      ),
      leading: SvgPicture.asset(
        icon,
        // ignore: deprecated_member_use
        color: isSelected ? AppColors.darkPrimaryColor : AppColors.iconColor,
        height: 20,
      ),
      selected: isSelected,
      selectedTileColor: Colors.green.withOpacity(0.2),
      selectedColor: Colors.white,
    );
  }
}
