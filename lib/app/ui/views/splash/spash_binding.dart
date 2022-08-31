
import 'package:g60_app_flutter_final/app/ui/views/splash/splash_controller.dart';
import 'package:get/get.dart';

class SpashBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SplashController());
  }

}