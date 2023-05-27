import 'package:get/get.dart';

class ProfileController extends GetxController {
  var switchList = <RxBool>[].obs;

  @override
  void onInit() {
    // Inisialisasi status switch untuk setiap item dalam daftar
    for (int i = 0; i < 8; i++) {
      switchList.add(false.obs);
    }
    super.onInit();
  }

  void toggleSwitch(int index) {
    switchList[index].value = !switchList[index].value;
  }
}
