import 'package:flutter/material.dart';

class SwitchListFilters extends StatelessWidget {
  const SwitchListFilters({super.key, required this.titleText, required this.subTitleText, required this.isChecked, required this.isSelectFree});
 final bool isSelectFree;
  final String titleText;
  final String subTitleText;
  final void Function(bool isChecked) isChecked;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
            value: isSelectFree,
            onChanged: isChecked,
            title: Text(
              titleText,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(
              left: 34,
              right: 22,
            ),
            subtitle: Text(
              subTitleText,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          );
  }
}