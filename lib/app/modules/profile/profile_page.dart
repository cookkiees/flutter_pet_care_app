import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/app/modules/profile/pages/mypets/mypets_page.dart';

import '../../theme/utils/my_colors.dart';
import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var label = [
      'My Pets',
      'My Favorites',
      'Add pet service',
      'Invite friends',
      'Help',
      'Settings',
    ];
    var icon = [
      Icons.pets_outlined,
      Icons.favorite_border,
      Icons.work_outline,
      Icons.supervisor_account_outlined,
      Icons.help_outline,
      Icons.settings_outlined,
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          'Profile',
          style: GoogleFonts.anton(
            fontSize: 18,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: MyColors.onPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const CircleAvatar(
                radius: 57.0,
                backgroundColor: MyColors.periwinkle,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 60.0,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Nagi',
                style: GoogleFonts.urbanist(
                  fontSize: 24,
                  color: MyColors.onPrimary,
                ),
              ),
              const SizedBox(height: 32),
              ...List.generate(
                label.length,
                (index) => Column(
                  children: [
                    ListTile(
                      onTap: () {
                        if (index == 0) {
                          Get.to(() => const MyPetsPage());
                        } else {
                          null;
                        }
                      },
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                      splashColor: MyColors.periwinkle.withOpacity(0.5),
                      dense: true,
                      leading: CircleAvatar(
                        backgroundColor: MyColors.periwinkle.withOpacity(0.7),
                        child: Icon(
                          icon[index],
                          color: MyColors.onPrimary,
                        ),
                      ),
                      title: Text(
                        label[index],
                        style: GoogleFonts.urbanist(
                          fontSize: 16,
                          color: MyColors.onPrimary,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 24.0,
                      ),
                    ),
                    const Divider()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
