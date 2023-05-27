import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/app/modules/main/main_controller.dart';

import '../../../../theme/utils/my_colors.dart';
import '../../search_controller.dart';
import '../../widgets/search_textformfield_widget.dart';

class VerterinaryPage extends GetView<SearchingController> {
  const VerterinaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leadingWidth: 60,
          leading: IconButton(
            onPressed: () => mainController.onTabSelected(0),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: const [
            SizedBox(width: 16),
            Icon(Icons.map_outlined),
            SizedBox(width: 16),
          ],
          title: TabBar(
            controller: controller.tabController,
            labelColor: MyColors.onPrimary,
            indicatorColor: MyColors.periwinkle,
            unselectedLabelColor: MyColors.onPrimary,
            indicatorWeight: 3,
            labelStyle: GoogleFonts.urbanist(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: MyColors.onPrimary,
            ),
            tabs: const [Tab(text: 'Specialists'), Tab(text: 'Clinics')],
          ),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 130),
            child: Container(
              // color: MyColors.skyBlue,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 12),
                  const SearchTextFormFieldWidget(),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: MyColors.periwinkle,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.3),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            icon: const Icon(
                              Icons.calendar_month_outlined,
                              size: 24.0,
                              color: MyColors.onPrimary,
                            ),
                            label: Text(
                              '28 Sept',
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: MyColors.onPrimary,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: MyColors.periwinkle,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 0.3),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              'Dentist',
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                color: MyColors.onPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          foregroundColor: MyColors.lavenderPink,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 0.3),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        icon: const Icon(
                          Icons.tune,
                          color: MyColors.onPrimary,
                          size: 24.0,
                        ),
                        label: Text(
                          'Filter',
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            color: MyColors.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: const ScrollPhysics(),
          controller: controller.tabController,
          children: [
            ListView(
              children: [
                ...List.generate(
                  10,
                  (index) {
                    return Container(
                      height: 140,
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      margin:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      decoration: BoxDecoration(
                        color: MyColors.skyBlue,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 0.1),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 0.5,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(width: 0.2),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Alekseenko Vasily',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.onPrimary,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Veterinary Dentist',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      color: MyColors.onPrimary,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      ...List.generate(
                                        5,
                                        (index) => const Icon(
                                          Icons.star,
                                          size: 12,
                                          color: MyColors.periwinkle,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        '125 Reviews',
                                        style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Text(
                                '10 years of experience',
                                style: GoogleFonts.urbanist(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 12),
                              ...List.generate(2, (index) {
                                var icon = [
                                  Icons.location_on_outlined,
                                  Icons.account_balance_wallet_outlined,
                                ];
                                var label = ['1.5 km', '\$20'];
                                return Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 14,
                                      backgroundColor:
                                          MyColors.periwinkle.withOpacity(0.3),
                                      child: Icon(
                                        icon[index],
                                        size: 18,
                                        color: MyColors.onPrimary,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      "${label[index]}   ",
                                      style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        color: MyColors.onPrimary,
                                      ),
                                    ),
                                  ],
                                );
                              })
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 12),
              ],
            ),
            const Text("2"),
          ],
        ),
      ),
    );
  }
}
