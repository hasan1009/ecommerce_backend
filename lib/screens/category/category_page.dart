import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "Category",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
