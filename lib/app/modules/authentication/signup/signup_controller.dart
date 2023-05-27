import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isCheckedRules = false.obs;

  void toggleCheckboxRules() {
    isCheckedRules.toggle();
  }

  var isCheckedNewSletter = false.obs;

  void toggleCheckboxNewSletter() {
    isCheckedNewSletter.toggle();
  }
}
