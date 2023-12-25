import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:getx_sample_movie_app/common/app_path.dart';
import 'package:getx_sample_movie_app/pages/intro_pages/intro_controller.dart';
import 'package:getx_sample_movie_app/pages/intro_pages/widgets/intro_contents.dart';

class IntroPage extends GetView<IntroController> {
  const IntroPage({super.key});

  // final controller = Get.put<IntroController>(IntroController());

  @override
  IntroController get controller => Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColor.background2,
            child: Image.asset(
              AppPath.intrBackground,
              fit: BoxFit.fill,
            ),
          ),
          const IntroContents()
        ],
      ),
    );
  }
}
