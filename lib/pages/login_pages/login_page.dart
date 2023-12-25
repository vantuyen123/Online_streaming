import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:getx_sample_movie_app/common/app_path.dart';
import 'package:getx_sample_movie_app/pages/login_pages/login_controller.dart';
import 'package:getx_sample_movie_app/pages/login_pages/widgets/login_content.dart';
import 'package:getx_sample_movie_app/widgets/app_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(color: AppColor.background1),
              child: Column(
                children: [
                  Image.asset(
                    AppPath.icLogoLoginPng,
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    'Login to your Account',
                    style: GoogleFonts.mochiyPopOne(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const LoginContent()
          ],
        ),
      ),
    );
  }

  @override
  LoginController get controller => Get.put(LoginController());
}
