import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_movie_app/my_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_sample_movie_app/services/get_storage/storage_services.dart';

Future<void> main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}
