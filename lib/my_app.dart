import 'package:animated_toast_list/animated_toast_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_sample_movie_app/common/app_router.dart';
import 'package:getx_sample_movie_app/global/constant/app_const.dart';
import 'package:getx_sample_movie_app/services/get_storage/storage_services.dart';
import 'package:getx_sample_movie_app/widgets/toast_item.dart';

import 'utils/toast_model.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool firstOpen = true;

  @override
  void initState() {
    super.initState();
    var storage = StorageService();
    firstOpen = storage.read(AppConst.firstOpen) ?? true;
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
        initialRoute:
            !firstOpen ? AppRouter.routerLoginPage : AppRouter.routerIntro,
        getPages: AppRouter.listRouter,
      ),
    );
  }

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
}
