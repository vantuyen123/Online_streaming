import 'package:animated_toast_list/animated_toast_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_sample_movie_app/common/app_router.dart';
import 'package:getx_sample_movie_app/widgets/toast_item.dart';

import 'utils/toast_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildItem(
    BuildContext context,
    ToastModel item,
    int index,
    Animation<double> animation,
  ) {
    return ToastItem(
      animation: animation,
      item: item,
      onTap: () => context.hideToast(
        item,
        (context, animation) => _buildItem(context, item, index, animation),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ToastListOverlay<ToastModel>(
      limit: 1,
      itemBuilder: (context, item, index, animation) =>
          _buildItem(context, item, index, animation),
      child: GetMaterialApp(
        enableLog: true,
        debugShowCheckedModeBanner: false,
        title: 'Online Straeming',
        initialRoute: AppRouter.routerIntro,
        getPages: AppRouter.listRouter,
      ),
    );
  }
}
