import 'package:get/get.dart';

import '../modules/appoinments/appointments_binding.dart';
import '../modules/appoinments/appointments_page.dart';
import '../modules/authentication/authentication_binding.dart';
import '../modules/authentication/authentication_page.dart';
import '../modules/authentication/signin/signin_page.dart';
import '../modules/authentication/signup/signup_page.dart';
import '../modules/profile/profile_binding.dart';
import '../modules/profile/profile_page.dart';
import '../modules/search/search_binding.dart';
import '../modules/search/search_page.dart';
import '../modules/main/main_binding.dart';
import '../modules/main/main_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static const initial = AppRoutes.initial;

  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const AuthenticationPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInPage(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRoutes.search,
      page: () => const SearchPage(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: AppRoutes.appointments,
      page: () => const AppointmentsPage(),
      binding: AppointmentsBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    )
  ];
}
