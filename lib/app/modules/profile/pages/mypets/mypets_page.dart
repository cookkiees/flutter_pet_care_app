import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/utils/my_colors.dart';
import '../../profile_controller.dart';
import 'mypets_detail.dart';

class MyPetsPage extends GetView<ProfileController> {
  const MyPetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          'My Pets',
          style: GoogleFonts.anton(
            fontSize: 18,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: MyColors.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 28.0,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(2, (index) {
                return Container(
                  height: 152,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  decoration: BoxDecoration(
                    color: MyColors.skyBlue,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.8,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0.2),
                              ),
                              child: Image.asset(
                                'assets/images/cat.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lottie',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: MyColors.onPrimary,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'British short hair',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: MyColors.onPrimary,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Added 1 day ago',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: MyColors.onPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                spacing: 8,
                                children: List.generate(
                                  3,
                                  (index) {
                                    var label = [
                                      'Female',
                                      '2 years',
                                      '6 Lbs',
                                    ];
                                    var color = [
                                      MyColors.lavenderPink,
                                      MyColors.periwinkle,
                                      MyColors.primary
                                    ];
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: color[index].withOpacity(0.5),
                                        border: Border.all(width: 0.2),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        label[index],
                                        style: GoogleFonts.urbanist(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: MyColors.onPrimary,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => Get.to(() => const MyPetsDetailPage()),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.grey[700],
                        ),
                      )
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
