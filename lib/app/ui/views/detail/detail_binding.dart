import 'package:g60_app_flutter_final/app/ui/views/detail/detail_controller.dart';
import 'package:get/get.dart';


class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}