import 'package:animated_toast_list/animated_toast_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_router.dart';
import 'package:getx_sample_movie_app/main.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool isRememberMe = RxBool(false);

  void onRemeberMe() {
    isRememberMe.value = !isRememberMe.value;
  }

  void signIn(BuildContext context) {
    // Get.context?.showToast();
    if (emailController.text.isEmpty) {
      context.showToast(ToastModel(
          type: ToastType.failed, message: 'Email cannot be left blank'));
      return;
    }
    if (passwordController.text.isEmpty) {
      context.showToast(ToastModel(
          type: ToastType.failed, message: 'Password cannot be left blank'));
      return;
    }
    // if (emailController.text.isEmpty) {
    //   Fluttertoast.showToast(
    //     msg: 'Email cannot be left blank',
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     backgroundColor: Colors.red,
    //     textColor: AppColor.background2,
    //   );
    //   return;
    // }
    // if (passwordController.text.isEmpty) {
    //   Fluttertoast.showToast(
    //     msg: 'Password cannot be left blank',
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.TOP,
    //     backgroundColor: Colors.red,
    //     textColor: AppColor.background2,
    //   );
    //   return;
    // }
    Get.toNamed(AppRouter.routerRegisterPage);
  }
}
