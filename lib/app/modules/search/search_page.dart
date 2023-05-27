import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/app/modules/search/pages/grooming/grooming_page.dart';
import 'package:petcare_app/app/modules/search/pages/verterinary/verterinary_page.dart';
import 'package:petcare_app/app/theme/utils/my_colors.dart';

import 'search_controller.dart';
import 'widgets/search_textformfield_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      init: SearchingController(),
      builder: (controller) {
        return Obx(
          () {
            if (controller.selectedIndex.value == -1) {
              return Scaffold(
                body: SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 24),
                          const SearchTextFormFieldWidget(),
                          const SizedBox(height: 24),
                          RichText(
                            text: TextSpan(
                              text: 'What are you\nlooking for, ',
                              style: GoogleFonts.anton(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: MyColors.onPrimary,
                                textStyle: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Nagi ?',
                                  style: GoogleFonts.anton(
                                    color: MyColors.periwinkle,
                                    textStyle: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1,
                              crossAxisCount: 3,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                            ),
                            itemCount: controller.icon.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () =>
                                    controller.changeSelectedIndex(index),
                                child: Container(
                                  height: 100,
                                  width: 87,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: MyColors.skyBlue,
                                    borderRadius: BorderRadius.circular(8),
                                    // border: Border.all(width: 0.2),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 0.8,
                                        blurRadius: 1,
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/${controller.icon[index]}.svg',
                                        height: 50,
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        controller.icon[index],
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          color: MyColors.onPrimary,
                                          fontWeight: FontWeight.w600,
                                          textStyle: const TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else if (controller.selectedIndex.value == 0) {
              return const VerterinaryPage();
            } else {
              return const GroomingPage();
            }
          },
        );
      },
    );
  }
}
