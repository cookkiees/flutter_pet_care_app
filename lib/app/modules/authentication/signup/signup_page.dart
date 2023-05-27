import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_routes.dart';
import '../../../theme/utils/my_colors.dart';
import '../widgets/authentication_elevatedbuttonicon_widget.dart';
import '../widgets/authentication_checkbox_widget.dart';
import '../widgets/authentication_textformfield_widget.dart';
import 'signup_controller.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: IconButton(
          splashRadius: 24,
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  color: MyColors.primary,
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.anton(
                      fontSize: 32,
                      color: MyColors.onPrimary,
                      textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding:
                        const EdgeInsets.only(top: 218, left: 24, right: 24),
                    child: Column(
                      children: [
                        Text(
                          '- or continue with -',
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            color: MyColors.onPrimary,
                            textStyle: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        AuthenticationElevatedButtonIconWidget(
                          title: 'Facebook',
                          icon: 'Facebook',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 16),
                        AuthenticationElevatedButtonIconWidget(
                          title: 'Google',
                          icon: 'Google',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 32),
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
                )
              ],
            ),
            Container(
              height: 380,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 68, right: 24, left: 24),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 0.1),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AuthenticationTextFormFieldWidget(
                    labelText: 'Full name',
                  ),
                  const AuthenticationTextFormFieldWidget(
                    labelText: 'Email',
                  ),
                  const AuthenticationTextFormFieldWidget(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  Obx(
                    () => AuthenticationCheckBoxWidget(
                      label: 'I agree with the rules',
                      value: controller.isCheckedRules.value,
                      onChanged: (_) => controller.toggleCheckboxRules(),
                    ),
                  ),
                  Obx(
                    () => AuthenticationCheckBoxWidget(
                      label: 'I do not want to receive newsletter',
                      value: controller.isCheckedNewSletter.value,
                      onChanged: (_) => controller.toggleCheckboxNewSletter(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: MyColors.periwinkle,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: MyColors.onPrimary,
                        fontWeight: FontWeight.bold,
                        textStyle: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
