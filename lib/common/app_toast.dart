import 'package:animated_toast_list/animated_toast_list.dart';
import 'package:flutter/material.dart';
import 'package:getx_sample_movie_app/global/enum/enum.dart';
import 'package:getx_sample_movie_app/utils/toast_model.dart';

class AppToast {
  static showError(BuildContext context, {required String message}) {
    context.showToast(ToastModel(type: ToastType.failed, message: message));
  }
}
