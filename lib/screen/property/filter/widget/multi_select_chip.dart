import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> featuresList;
  final Function(List<String>) onSelectionChanged;

  const MultiSelectChip({
    Key? key,
    required this.onSelectionChanged,
    required this.featuresList,
  }) : super(key: key);

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.featuresList) {
      bool isSelected = selectedChoices.contains(item);

      choices.add(
        Container(
          padding: const EdgeInsets.all(3),
          child: ChoiceChip(
            label: Text(item),
            labelStyle: smallStyle.copyWith(
              color: isSelected ? AppColor.deepBlueColor : AppColor.deepBlackColor,
              fontWeight: FontWeight.w600,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: isSelected ? AppColor.deepBlueColor : AppColor.blackColor,
                width: 1.5,
              ),
            ),
            selected: isSelected,
            backgroundColor: AppColor.white,
            selectedColor: AppColor.white,
            onSelected: (selected) {
              setState(() {
                isSelected ? selectedChoices.remove(item) : selectedChoices.add(item);
                widget.onSelectionChanged(selectedChoices);
              });
            },
          ),
        ),
      );
    }

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _buildChoiceList());
  }
}
