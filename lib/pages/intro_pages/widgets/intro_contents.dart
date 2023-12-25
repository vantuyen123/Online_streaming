import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:getx_sample_movie_app/common/app_router.dart';
import 'package:getx_sample_movie_app/pages/intro_pages/intro_controller.dart';
import 'package:getx_sample_movie_app/widgets/widget_bottom_radius.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroContents extends GetWidget<IntroController> {
  const IntroContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          width: double.infinity,
          height: 250,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          padding:
              const EdgeInsets.only(left: 52, right: 52, top: 29, bottom: 49),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.78, 0.64),
                end: const Alignment(-0.25, -1.00),
                colors: [
                  AppColor.grey20.withOpacity(.9),
                  AppColor.grey20.withOpacity(.9),
                ],
                stops: const [0.0844, 0.8907],
              ),
              border: Border.all(width: 1, color: AppColor.grey10),
              borderRadius: BorderRadius.circular(22)),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to App',
                  style: GoogleFonts.mochiyPopOne(
                      color: AppColor.grey0,
                      fontWeight: FontWeight.w400,
                      fontSize: 26.5),
                ),
                const SizedBox(height: 13),
                Expanded(
                  child: PageView.builder(
                      controller: controller.pageController,
                      itemCount: controller.listPageContents.length,
                      onPageChanged: controller.onPageChange,
                      itemBuilder: (_, index) {
                        return Text(
                          controller.listPageContents[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400),
                        );
                      }),
                ),
                Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        controller.listPageContents.length,
                        (index) => Container(
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  shape: controller.activePage.value == index
                                      ? BoxShape.rectangle
                                      : BoxShape.circle,
                                  color: AppColor.grey0,
                                  borderRadius:
                                      controller.activePage.value == index
                                          ? BorderRadius.circular(100)
                                          : null),
                              width: controller.activePage.value == index
                                  ? 30
                                  : 10,
                              height: 10,
                            )))),
                const SizedBox(height: 19),
                WidgetBottomRadius(
                    onCallBack: () => Get.toNamed(AppRouter.routerLoginPage),
                    titleButtom: 'Get Started')
              ],
            ),
          )),
    );
  }

  @override
  IntroController get controller => Get.put(IntroController());
}
