import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';
import '../main_controller.dart';

class MainAppBarWidget extends GetView<MainController> {
  const MainAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Pet Care',
          style: GoogleFonts.anton(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: MyColors.periwinkle,
            textStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
