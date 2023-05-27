import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class AuthenticationCheckBoxWidget extends StatelessWidget {
  const AuthenticationCheckBoxWidget({
    super.key,
    this.label,
    required this.value,
    required this.onChanged,
  });
  final String? label;
  final bool value;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(width: 0.5),
          activeColor: MyColors.lavenderPink,
          value: value,
          onChanged: onChanged,
        ),
        Text(
          '$label',
          style: GoogleFonts.urbanist(
            color: MyColors.onPrimary,
            textStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
