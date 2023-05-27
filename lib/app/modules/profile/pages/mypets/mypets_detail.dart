import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/utils/my_colors.dart';
import '../../profile_controller.dart';
import '../../widgets/profile_textformfield_widget.dart';

class MyPetsDetailPage extends StatelessWidget {
  const MyPetsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var label = [
      'Neutered',
      'Vaccinated',
      'Friendly with dogs',
      'Friendly with cats',
      'Friendly with kids <10 year',
      'Friendly with kids >10 year',
      'Microchipped',
      'Purebred',
    ];
    ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'My Pets Detail ',
          style: GoogleFonts.anton(
            fontSize: 18,
            letterSpacing: 2,
            color: MyColors.onPrimary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: GoogleFonts.urbanist(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: MyColors.periwinkle,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: MyColors.primary,
                    ),
                    child: Image.asset(
                      'assets/images/cat.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Generel Information',
                  style: GoogleFonts.urbanist(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: MyColors.onPrimary,
                  ),
                ),
                const ProfileTextFormFieldWidget(
                  labelText: "Pet's name",
                ),
                const ProfileTextFormFieldWidget(
                  labelText: "Species of your pet",
                ),
                const ProfileTextFormFieldWidget(
                  labelText: "Size",
                ),
                const ProfileTextFormFieldWidget(
                  labelText: "Date of birth",
                ),
                const SizedBox(height: 16),
                Text(
                  'Gender',
                  style: GoogleFonts.urbanist(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: MyColors.onPrimary.withOpacity(0.5),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0.3,
                          backgroundColor: MyColors.periwinkle,
                          foregroundColor: MyColors.primary),
                      icon: const Icon(
                        Icons.male_outlined,
                        color: MyColors.onPrimary,
                        size: 24.0,
                      ),
                      label: Text(
                        'Male',
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColors.onPrimary),
                      ),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.3,
                        backgroundColor: MyColors.lavenderPink,
                        foregroundColor: MyColors.primary,
                      ),
                      icon: const Icon(
                        Icons.female,
                        color: MyColors.onPrimary,
                        size: 24.0,
                      ),
                      label: Text(
                        'Female',
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColors.onPrimary),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Additional Information',
                  style: GoogleFonts.urbanist(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: MyColors.onPrimary,
                  ),
                ),
                ...List.generate(
                  label.length,
                  (index) => Obx(
                    () => ListTile(
                      title: Text(
                        label[index],
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColors.onPrimary),
                      ),
                      trailing: Switch(
                        activeColor: MyColors.periwinkle,
                        value: profileController.switchList[index].value,
                        onChanged: (value) {
                          profileController.toggleSwitch(index);
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
