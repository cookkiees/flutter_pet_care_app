import 'package:get/get.dart';

import 'authentication_controller.dart';
import 'signup/signup_controller.dart';

class AuthenticationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationController>(() => AuthenticationController());
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
