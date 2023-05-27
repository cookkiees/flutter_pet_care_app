import 'package:flutter/material.dart';

import '../../../theme/utils/my_colors.dart';

class ProfileTextFormFieldWidget extends StatelessWidget {
  const ProfileTextFormFieldWidget({
    super.key,
    required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyColors.periwinkle,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: const Icon(
          Icons.keyboard_arrow_right,
          size: 24.0,
        ),
        labelStyle: TextStyle(
          color: MyColors.onPrimary.withOpacity(0.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.periwinkle,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: MyColors.onPrimary,
          ),
        ),
      ),
    );
  }
}
