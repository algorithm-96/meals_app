import 'package:flutter/material.dart';
import 'package:meals_app/widgets/switch_list_filters.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _gluttenFree = false;
  var _lactosFree = false;
  var _vegetarianFree = false;
  var _veganFree = false;

  @override
  Widget build(BuildContext context) {
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
                setState(() {
                  _gluttenFree = isChecked;
                });
              }),
              isSelectFree: _gluttenFree),
          SwitchListFilters(
              titleText: 'Lactos-free',
              subTitleText: 'Only include lactos-free meals.',
              isChecked: ((isChecked) {
                setState(() {
                  _lactosFree = isChecked;
                });
              }),
              isSelectFree: _lactosFree),
          SwitchListFilters(
              titleText: 'Vegetarian',
              subTitleText: 'Only include vegetarian meals.',
              isChecked: ((isChecked) {
                setState(() {
                  _vegetarianFree = isChecked;
                });
              }),
              isSelectFree: _vegetarianFree),
          SwitchListFilters(
              titleText: 'Vegan',
              subTitleText: 'Only include vegan meals.',
              isChecked: ((isChecked) {
                setState(() {
                  _veganFree = isChecked;
                });
              }),
              isSelectFree: _veganFree),
        ],
      ),
    );
  }
}
