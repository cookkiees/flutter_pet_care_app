import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  var icon = [
    'Veterinary',
    'Grooming',
    'PetBoarding',
    'Adoption',
    'DogWalking',
    'Training',
    'PetTaxi',
    'Date',
    'Other'
  ];
  var selectedIndex = (-1).obs;
  changeSelectedIndex(index) {
    selectedIndex.value = index;
  }
}
