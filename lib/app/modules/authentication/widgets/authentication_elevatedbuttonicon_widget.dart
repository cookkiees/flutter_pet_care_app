import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class AuthenticationElevatedButtonIconWidget extends StatelessWidget {
  const AuthenticationElevatedButtonIconWidget({
    super.key,
    this.onPressed,
    required this.icon,
    required this.title,
  });
  final Function()? onPressed;
  final String? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: MyColors.periwinkle,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      icon: SvgPicture.asset('assets/icons/$icon.svg'),
      label: RichText(
        text: TextSpan(
          text: 'continue with ',
          style: GoogleFonts.urbanist(
            fontSize: 16,
            color: MyColors.onPrimary,
            textStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          children: [
            TextSpan(
              text: ' $title',
              style: GoogleFonts.urbanist(
                color: MyColors.onPrimary,
                fontWeight: FontWeight.bold,
                textStyle: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
