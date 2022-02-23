import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: false,
      textAlignVertical: TextAlignVertical.center,
      style: smallStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
      decoration: InputDecoration(
        constraints: const BoxConstraints(minHeight: 40, maxHeight: 40),
        contentPadding: const EdgeInsets.fromLTRB(14, 13, 14, 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(width: 1, color: AppColor.faintColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(width: 1, color: AppColor.faintColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(width: 1, color: AppColor.faintColor),
        ),
        prefixIcon: const Icon(Icons.search, color: AppColor.textColor),
        hintText: 'Search here...',
        hintStyle: smallStyle.copyWith(
          color: AppColor.hintColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
