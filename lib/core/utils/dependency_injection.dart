
import 'package:g60_app_flutter_final/app/data/providers/customer_provider.dart';
import 'package:g60_app_flutter_final/app/data/repositories/customer_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static load() {
    //Encargado de injectar la dependencia de mis clases

    //Providers
    Get.put<CustomerProvider>(CustomerProvider());
    //Get.put<HouseProvider>(HouseProvider());
    //Get.put<ReservationProvider>(ReservationProvider());

    //Repositories
    Get.put<CustomerRepository>(CustomerRepository());
    //Get.put<HouseRepository>(HouseRepository());
    //Get.put<ReservationRepository>(ReservationRepository());

    //Local
    //Get.put<FlutterSecureStorage>(const FlutterSecureStorage());
    //Get.put<LocalStorage>(LocalStorage());
  }
}
