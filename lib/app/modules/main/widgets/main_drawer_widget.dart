import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_controller.dart';

class MainDrawerWidget extends GetView<MainController> {
  const MainDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SizedBox(
            height: 300,
            child: DrawerHeader(
              decoration: BoxDecoration(),
              child: Center(
                child: Text(
                  'DRAWER',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
