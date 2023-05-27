import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class PastViews extends StatelessWidget {
  const PastViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.access_time_filled,
            size: 100.0,
            color: MyColors.periwinkle.withOpacity(0.5),
          ),
        ),
        Text(
          'No appointments yet',
          style: GoogleFonts.urbanist(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: MyColors.onPrimary,
          ),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0.9,
            foregroundColor: MyColors.periwinkle,
          ),
          child: Text(
            'Find a specialist',
            style: GoogleFonts.urbanist(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: MyColors.onPrimary,
            ),
          ),
        )
      ],
    );
  }
}
