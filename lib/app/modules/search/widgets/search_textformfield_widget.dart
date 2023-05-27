import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class SearchTextFormFieldWidget extends StatelessWidget {
  const SearchTextFormFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyColors.periwinkle,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(
          Icons.search,
          size: 24,
          color: MyColors.onPrimary,
        ),
        hintText: 'Search',
        hintStyle: GoogleFonts.urbanist(
          fontSize: 16,
          color: Colors.grey[600],
          textStyle: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.1,
            color: MyColors.onPrimary,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.1,
            color: MyColors.onPrimary,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.1,
            color: MyColors.onPrimary,
          ),
        ),
      ),
    );
  }
}
