import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:getx_sample_movie_app/common/app_path.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.onCallback});

  final Function()? onCallback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColor.background1,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(AppPath.icLeading),
          onPressed: () {
            if (onCallback != null) {
              onCallback;
            } else {
              Get.back();
            }
          },
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
