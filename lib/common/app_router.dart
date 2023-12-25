import 'package:get/get.dart';
import 'package:getx_sample_movie_app/pages/intro_pages/intro_page.dart';
import 'package:getx_sample_movie_app/pages/register_pages/register_page.dart';

import '../pages/login_pages/login_page.dart';

class AppRouter {
  AppRouter._internal();
  static const String routerIntro = '/intro_page';
  static const String routerLoginPage = '/router_login_page';
  static const String routerRegisterPage = '/routerRegisterPage';

  static List<GetPage<dynamic>> listRouter = <GetPage<dynamic>>[
    GetPage<IntroPage>(name: routerIntro, page: () => const IntroPage()),
    GetPage<LoginPage>(name: routerLoginPage, page: () => const LoginPage()),
    GetPage<LoginPage>(
        name: routerRegisterPage, page: () => const RegisterPage())
  ];
}
