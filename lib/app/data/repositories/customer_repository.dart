import 'package:g60_app_flutter_final/app/data/models/request/request_auth_model.dart';
import 'package:g60_app_flutter_final/app/data/models/response/response_auth_model.dart';
import 'package:g60_app_flutter_final/app/data/providers/customer_provider.dart';
import 'package:get/get.dart';

class CustomerRepository {
  final _apiProvider = Get.find<CustomerProvider>();

  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuth) =>
      _apiProvider.postAuth(requestAuth);

  /*Future<String> postSignup(RequestCustomerModel requestCustomer) =>
      _apiProvider.postSignup(requestCustomer);

  Future<ResponseCustomerInformationModel> getInformation({
    required String token,
    required int idUser,
  }) =>
      _apiProvider.getInformation(
        token: token,
        idUser: idUser,
      );*/
}
