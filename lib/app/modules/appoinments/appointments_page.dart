import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/utils/my_colors.dart';
import 'appointments_controller.dart';
import 'views/past_views.dart';
import 'views/upcoming_views.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentsController>(
      init: AppointmentsController(),
      initState: (_) {},
      builder: (controller) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0.5,
              backgroundColor: MyColors.primary,
              title: Text(
                'Appointments',
                style: GoogleFonts.anton(
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: MyColors.onPrimary,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, 40),
                child: TabBar(
                  labelColor: MyColors.onPrimary,
                  labelStyle: GoogleFonts.urbanist(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: MyColors.periwinkle,
                  ),
                  indicatorColor: MyColors.periwinkle,
                  unselectedLabelColor: MyColors.onPrimary,
                  controller: controller.tabController,
                  tabs: const [
                    Tab(
                      text: 'UpComing',
                    ),
                    Tab(
                      text: 'Past',
                    ),
                  ],
                ),
              ),
            ),
            body: SafeArea(
              child: TabBarView(
                controller: controller.tabController,
                children: const [
                  UpComingViews(),
                  PastViews(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
