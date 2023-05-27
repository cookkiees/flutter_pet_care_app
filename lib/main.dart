import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare_app/app/theme/utils/my_colors.dart';
import 'app/data/services/api_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      defaultTransition: Transition.fade,
      initialBinding: ApiServiceBinding(),
      getPages: AppPages.pages,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // bottomNavigationBarTheme:
        //     BottomNavigationBarThemeData(backgroundColor: MyColors.primary),
        iconTheme: const IconThemeData(color: MyColors.onPrimary),

        colorScheme: const ColorScheme(
          background: Colors.blue,
          brightness: Brightness.light,
          error: Colors.red,
          onBackground: Colors.blue,
          onError: Colors.red,
          primary: MyColors.primary,
          onPrimary: MyColors.onPrimary,
          onSecondary: Colors.orange,
          onSurface: Colors.blue,
          secondary: Colors.blue,
          surface: MyColors.onPrimary,
        ),
      ),
    );
  }
}
