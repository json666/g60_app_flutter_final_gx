import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:g60_app_flutter_final/app/data/models/request/request_auth_model.dart';
import 'package:g60_app_flutter_final/app/data/models/response/response_auth_model.dart';


class CustomerProvider {
  final _dio = Dio();

   
  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuthModel) async {
    final response = await _dio.post(
        "https://api-reservation-flutter.herokuapp.com/api/user/auth",
        data: {
          "email": requestAuthModel.email, 
          "password": requestAuthModel.password,
          });
    return ResponseAuthModel.fromJson(response.data);
  }
/*
  Future<String> postSignup(RequestCustomerModel requestCustomer) async {
    final response = await _dio.post(
      "api/user/register",
      data: json.encode(requestCustomer.toJson()),
    );

    return response.data["message"];
  }

  Future<ResponseCustomerInformationModel> getInformation({
    required String token,
    required int idUser,
  }) async {
    final response = await _dio.get(
      "api/user/information/$idUser",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );

    return (response.data["information"] as List)
        .map((json) => ResponseCustomerInformationModel.fromJson(json))
        .toList()[0];
  }*/
}
