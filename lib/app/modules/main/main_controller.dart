import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/utils/my_colors.dart';

class MainController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Get.bottomSheet(
          const MainBottomSheetWidget(),
        );
      },
    );
  }

  // Boottom navigation bar
  RxInt pageIndex = 0.obs;

  var isLoading = false.obs;
  void onTabSelected(int index) {
    isLoading.value = true; // Tampilkan Circular Progress Indicator

    // Delay untuk simulasi proses asinkron (misalnya, pengambilan data)
    Future.delayed(const Duration(milliseconds: 200), () {
      // Lakukan perpindahan halaman sesuai dengan indeks yang dipilih
      pageIndex.value = index;
      isLoading.value = false;
    });
  }

  final GlobalKey<ScaffoldState> mainScaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    mainScaffoldKey.currentState?.openDrawer();
  }
}

class MainBottomSheetWidget extends StatelessWidget {
  const MainBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(32)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add pet detail',
                style: GoogleFonts.urbanist(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: MyColors.onPrimary,
                  textStyle: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ...List.generate(
                3,
                (index) {
                  var element = [
                    'Faster check-in at appointment.',
                    'Schedule of vaccination, haircuts, inspections etc.',
                    'Reminder of the upcoming events with your pet.'
                  ];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      dense: true,
                      titleAlignment: ListTileTitleAlignment.center,
                      leading: const CircleAvatar(
                        radius: 8,
                        backgroundColor: MyColors.periwinkle,
                      ),
                      title: Text(
                        element[index],
                        style: GoogleFonts.urbanist(
                          fontSize: 16,
                          color: MyColors.onPrimary,
                          textStyle: const TextStyle(
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                foregroundColor: MyColors.periwinkle,
                minimumSize: const Size(160, 50)),
            child: Text(
              '+ Add',
              style: GoogleFonts.urbanist(
                fontSize: 16,
                color: MyColors.onPrimary,
                textStyle: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
