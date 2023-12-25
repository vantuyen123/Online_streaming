import 'package:flutter/material.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetBottomRadius extends StatelessWidget {
  const WidgetBottomRadius(
      {super.key,
      required this.onCallBack,
      required this.titleButtom,
      this.titleStyle});

  final Function() onCallBack;
  final String titleButtom;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCallBack,
      child: Container(
        height: 40,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Text(
          titleButtom,
          style: titleStyle ??
              GoogleFonts.mochiyPopPOne(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
