import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class AuthenticationTextFormFieldWidget extends StatelessWidget {
  const AuthenticationTextFormFieldWidget({
    super.key,
    required this.labelText,
    this.suffixIcon,
  });
  final String labelText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyColors.periwinkle,
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        suffixIcon: suffixIcon,
        labelStyle: GoogleFonts.urbanist(
          fontSize: 16,
          color: Colors.grey[600],
          textStyle: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: MyColors.onPrimary,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: MyColors.onPrimary,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: MyColors.onPrimary,
          ),
        ),
      ),
    );
  }
}
