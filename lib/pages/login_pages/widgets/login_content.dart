import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:getx_sample_movie_app/common/app_path.dart';
import 'package:getx_sample_movie_app/widgets/lable_input_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/widget_bottom_radius.dart';
import '../login_controller.dart';

class LoginContent extends GetWidget<LoginController> {
  const LoginContent({super.key});

  @override
  LoginController get controller => Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 23),
        decoration: const BoxDecoration(
          color: AppColor.background1,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: AppColor.grey30, offset: Offset(0, 3), blurRadius: 18.75)
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 39),
              LabelInputText(
                controller: controller.emailController,
                label: 'Email',
                hintInput: 'Enter your email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 19),
              LabelInputText(
                controller: controller.passwordController,
                label: 'Password',
                hintInput: 'Enter your password',
                obscureText: true,
              ),
              const SizedBox(height: 29),
              _buildRememberMeAndForgotPassword(),
              const SizedBox(height: 29),
              WidgetBottomRadius(
                  onCallBack: () {
                    controller.signIn(context);
                  },
                  titleButtom: 'Sign In',
                  titleStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.42,
                      color: AppColor.grey10)),
              const SizedBox(height: 23),
              Row(
                children: [
                  _buildMethodLoginSocial(
                    icon: AppPath.icGoogle,
                    title: 'Google',
                  ),
                  const SizedBox(width: 25),
                  _buildMethodLoginSocial(
                    icon: AppPath.icFacebook,
                    title: 'Facebook',
                  ),
                ],
              ).paddingSymmetric(horizontal: 12),
              const SizedBox(height: 19.3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: GoogleFonts.mochiyPopOne(
                        color: AppColor.background2,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3),
                  ),
                  Text(
                    'Sign up fo free!',
                    style: GoogleFonts.mochiyPopOne(
                        color: AppColor.mainColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3),
                  )
                ],
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMethodLoginSocial(
      {required String icon, required String title}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 6, bottom: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColor.background2, width: 1)),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 11),
            Text(title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 0.42,
                    color: AppColor.background2))
          ],
        ),
      ),
    );
  }

  Widget _buildRememberMeAndForgotPassword() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: controller.onRemeberMe,
            child: Obx(
              () => Row(
                children: [
                  SvgPicture.asset(controller.isRememberMe.value
                      ? AppPath.icCheckboxTrue
                      : AppPath.icCheckbox),
                  const SizedBox(width: 6.2),
                  Text('Remember me',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColor.background2,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.36)),
                ],
              ),
            ),
          ),
          Text('Forgot password',
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: AppColor.mainColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.36)),
        ]);
  }
}
