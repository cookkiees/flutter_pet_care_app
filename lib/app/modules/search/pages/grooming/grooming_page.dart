import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petcare_app/app/modules/search/search_controller.dart';

class GroomingPage extends GetView<SearchingController> {
  const GroomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GroomingPage"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
