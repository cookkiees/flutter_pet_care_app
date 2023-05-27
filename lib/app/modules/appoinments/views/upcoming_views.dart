import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class UpComingViews extends StatelessWidget {
  const UpComingViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          1,
          (index) => Container(
            height: 320,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const SizedBox(height: 8),
                        Row(
                          children: [
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
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: List.generate(
                      2,
                      (index) {
                        var label = [
                          'Veterinary clinic "Alden-Vet"',
                          'Wed 9 Sep — 10:30 am'
                        ];
                        var icon = [
                          Icons.work_outline,
                          Icons.access_time,
                        ];
                        return SizedBox(
                          height: 50,
                          child: ListTile(
                            dense: true,
                            titleAlignment: ListTileTitleAlignment.center,
                            leading: CircleAvatar(
                              radius: 16,
                              backgroundColor:
                                  MyColors.periwinkle.withOpacity(0.3),
                              child: Icon(
                                icon[index],
                                size: 20.0,
                                color: MyColors.onPrimary,
                              ),
                            ),
                            title: Text(
                              label[index],
                              style: GoogleFonts.urbanist(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: MyColors.onPrimary,
                              ),
                            ),
                            subtitle: (index == 0)
                                ? Text(
                                    '141 N Union Ave, Los Angeles, CA',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: MyColors.onPrimary,
                                    ),
                                  )
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3.9,
                      crossAxisCount: 2,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 16,
                    ),
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var label = ['Edit', 'Cancel'];
                      return ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: (index == 1)
                              ? MyColors.lavenderPink
                              : MyColors.periwinkle,
                          elevation: 0.9,
                          backgroundColor:
                              (index == 0) ? MyColors.primary : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          label[index],
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColors.onPrimary,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
