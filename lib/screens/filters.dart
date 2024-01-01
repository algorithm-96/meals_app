import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/widgets/switch_list_filters.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListFilters(
              titleText: 'Glutten-free',
              subTitleText: 'Only include glutten-free meals.',
              isChecked: ((isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.gluttenFree, isChecked);
              }),
              isSelectFree: activeFilters[Filter.gluttenFree]!),
          SwitchListFilters(
              titleText: 'Lactos-free',
              subTitleText: 'Only include lactos-free meals.',
              isChecked: ((isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.lactosFree, isChecked);
              }),
              isSelectFree: activeFilters[Filter.lactosFree]!),
          SwitchListFilters(
              titleText: 'Vegetarian',
              subTitleText: 'Only include vegetarian meals.',
              isChecked: ((isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegetarian, isChecked);
              }),
              isSelectFree: activeFilters[Filter.vegetarian]!),
          SwitchListFilters(
              titleText: 'Vegan',
              subTitleText: 'Only include vegan meals.',
              isChecked: ((isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegetarian, isChecked);
              }),
              isSelectFree: activeFilters[Filter.vegetarian]!),
        ],
      ),
    );
  }
}
