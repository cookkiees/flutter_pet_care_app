import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/app/routes/app_routes.dart';

import '../../theme/utils/my_colors.dart';
import 'authentication_controller.dart';
import 'widgets/authentication_elevatedbuttonicon_widget.dart';

class AuthenticationPage extends GetView<AuthenticationController> {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Welcome\nto ',
                    style: GoogleFonts.anton(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: MyColors.onPrimary,
                      textStyle:
                          const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                    children: [
                      TextSpan(
                        text: 'Pet Care',
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
                const SizedBox(height: 80),
                AuthenticationElevatedButtonIconWidget(
                  title: 'Facebook',
                  icon: 'Facebook',
                  onPressed: () {},
                ),
                const SizedBox(height: 24),
                AuthenticationElevatedButtonIconWidget(
                  title: 'Google',
                  icon: 'Google',
                  onPressed: () {},
                ),
                const SizedBox(height: 32),
                const Center(child: Text('- OR -')),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.signUp),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: MyColors.lavenderPink,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side:
                          const BorderSide(width: 1, color: MyColors.onPrimary),
                    ),
                  ),
                  child: Text(
                    'Register with Email',
                    style: GoogleFonts.urbanist(
                      fontSize: 16,
                      color: MyColors.onPrimary,
                      textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'already have an account? ',
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: MyColors.onPrimary,
                        textStyle: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      children: [
                        TextSpan(
                          onEnter: (event) {},
                          text: 'Sign In',
                          style: GoogleFonts.urbanist(
                            color: MyColors.periwinkle,
                            fontWeight: FontWeight.bold,
                            textStyle: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(AppRoutes.signIn);
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
