import 'package:flutter/material.dart';
import 'package:getx_sample_movie_app/common/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelInputText extends StatelessWidget {
  const LabelInputText(
      {super.key,
      required this.controller,
      required this.label,
      this.hintInput,
      this.textInputType,
      this.obscureText});

  final TextEditingController controller;
  final String label;
  final String? hintInput;
  final bool? obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: GoogleFonts.poppins(
                  color: AppColor.background2,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: controller,
              keyboardType: textInputType,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColor.background2, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  hintText: hintInput,
                  contentPadding: const EdgeInsets.only(left: 16, top: 12),
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: AppColor.background2,
                      letterSpacing: 0.42)),
            ),
          ],
        ),
      ],
    );
  }
}
