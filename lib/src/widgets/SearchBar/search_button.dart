import 'dart:developer';
import 'package:flutter/material.dart';

import '../../theme/color_codes.dart' as color_constants;

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.isDisabled});
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: TextButton(
        onPressed: isDisabled ? null : () => log('Searched!'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (isDisabled) {
                  return color_constants.lightBlue;
                }
                if (states.contains(MaterialState.pressed)) {
                  return color_constants.lightBlue;
                }
                return color_constants.primary02Color;
              },
            ),
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                top: 12.5, bottom: 12.5, left: 18, right: 18)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        child: const Text(
          'Search',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
