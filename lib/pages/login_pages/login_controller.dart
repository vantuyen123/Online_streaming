import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_router.dart';
import 'package:getx_sample_movie_app/common/app_toast.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool isRememberMe = RxBool(false);

  void onRemeberMe() {
    isRememberMe.value = !isRememberMe.value;
  }

  void signIn(BuildContext context) {
    if (emailController.text.isEmpty) {
      AppToast.showError(context, message: 'Email cannot be left blank');
      return;
    }
    if (passwordController.text.isEmpty) {
      AppToast.showError(context, message: 'Password cannot be left blank');
      return;
    }
    Get.toNamed(AppRouter.routerRegisterPage);
  }
}
