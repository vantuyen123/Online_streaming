import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final PageController pageController = PageController();

  final List<String> listPageContents = [
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates porro reprehenderit iusto suscipit aperiam.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates porro reprehenderit iusto suscipit aperiam.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates porro reprehenderit iusto suscipit aperiam.',
  ];

  RxInt activePage = 0.obs;

  void onPageChange(int page) {
    activePage.value = page;
  }
}
