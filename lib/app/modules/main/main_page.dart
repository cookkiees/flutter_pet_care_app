import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/utils/my_colors.dart';
import '../appoinments/appointments_page.dart';
import '../profile/profile_page.dart';
import '../search/search_page.dart';
import 'main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //     preferredSize: Size(double.infinity, 60), child: MainAppBarWidget()),
      body: Obx(
        () => IndexedStack(
          index: controller.pageIndex.value,
          children: [
            if (controller.isLoading.value)
              Center(child: CupertinoActivityIndicator(color: Colors.grey[900]))
            else
              const SearchPage(),
            if (controller.isLoading.value)
              Center(child: CupertinoActivityIndicator(color: Colors.grey[900]))
            else
              const AppointmentsPage(),
            if (controller.isLoading.value)
              Center(child: CupertinoActivityIndicator(color: Colors.grey[900]))
            else
              Center(
                child: Text(
                  'Explore',
                  style: GoogleFonts.anton(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: MyColors.onPrimary,
                    textStyle: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            if (controller.isLoading.value)
              Center(child: CupertinoActivityIndicator(color: Colors.grey[900]))
            else
              const ProfilePage(),
          ],
        ),
      ),
      // drawer: const MainDrawerWidget(),
      bottomNavigationBar: Obx(() => Theme(
            data: ThemeData(splashColor: Colors.transparent),
            child: BottomNavigationBar(
                selectedLabelStyle: GoogleFonts.urbanist(
                  fontSize: 14,
                ),
                unselectedLabelStyle: GoogleFonts.urbanist(
                  fontSize: 14,
                ),
                selectedFontSize: 14,
                unselectedFontSize: 14,
                showUnselectedLabels: true,
                backgroundColor: MyColors.primary,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: MyColors.periwinkle,
                currentIndex: controller.pageIndex.value,
                onTap: (value) => controller.onTabSelected(value),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search_outlined,
                    ),
                    activeIcon: Icon(
                      Icons.search_outlined,
                      color: MyColors.periwinkle,
                    ),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.access_time_outlined,
                    ),
                    activeIcon: Icon(
                      Icons.access_time_filled,
                      color: MyColors.periwinkle,
                    ),
                    label: 'Appointments',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.explore_outlined,
                    ),
                    activeIcon: Icon(
                      Icons.explore,
                      color: MyColors.periwinkle,
                    ),
                    label: 'Explore',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_outlined,
                    ),
                    activeIcon: Icon(
                      Icons.account_circle,
                      color: MyColors.periwinkle,
                    ),
                    label: 'Profile',
                  ),
                ]),
          )),
    );
  }
}
