import 'package:g60_app_flutter_final/app/routes/app_routes.dart';
import 'package:g60_app_flutter_final/app/ui/views/detail/detail_binding.dart';
import 'package:g60_app_flutter_final/app/ui/views/detail/detail_view.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/home_binding.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/home_view.dart';
import 'package:g60_app_flutter_final/app/ui/views/initial/initial_binding.dart';
import 'package:g60_app_flutter_final/app/ui/views/initial/initial_view.dart';
import 'package:g60_app_flutter_final/app/ui/views/login/login_binding.dart';
import 'package:g60_app_flutter_final/app/ui/views/login/login_view.dart';
import 'package:g60_app_flutter_final/app/ui/views/signup/signup_binding.dart';
import 'package:g60_app_flutter_final/app/ui/views/signup/signup_view.dart';
import 'package:g60_app_flutter_final/app/ui/views/splash/spash_binding.dart';
import 'package:g60_app_flutter_final/app/ui/views/splash/splash_view.dart';
import 'package:get/get.dart';

class AppViews {
  static final views = [
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SpashView(),
        binding: SpashBinding()),
    GetPage(
        name: AppRoutes.SIGNUP,
        page: () => const SignupView(),
        binding: SignUpBinding()),
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => InitialView(),
        binding: InitialBinding()),
    GetPage(
        name: AppRoutes.DETAIL,
        page: () => DetailView(),
        binding: DetailBinding()),
  ];
}
