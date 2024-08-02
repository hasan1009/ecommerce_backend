import 'package:flutter/material.dart';

import '../config/colors.dart';
import 'responsive_layout.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Resposive.isDesktop(context);
    return Container(
      height: 70,
      decoration: BoxDecoration(color: AppColors.sidebarColor),
      child: Row(
        children: [
          if (!isDesktop)
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)),
          const SizedBox(
            width: 10,
          ),
          if (isDesktop) const Spacer(),
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search here...",
                fillColor: Theme.of(context).colorScheme.background,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primary),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )),
          )),
          const SizedBox(
            width: 20,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Text(
                    "N",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Mahabub Hasan",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
