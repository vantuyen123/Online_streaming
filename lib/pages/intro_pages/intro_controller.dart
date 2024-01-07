import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_router.dart';
import 'package:getx_sample_movie_app/global/constant/app_const.dart';
import 'package:getx_sample_movie_app/services/get_storage/storage_services.dart';

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

  void openLogin() {
    var storage = StorageService();
    storage.write(AppConst.firstOpen, false);
    Get.offAllNamed(AppRouter.routerLoginPage);
  }
}
 