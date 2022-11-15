import 'dart:convert';

import 'package:siginui/login/data.dart';

class LoginResponse {
  final bool? status;
  final String? message;
  final String? token;
  final Data data;

  LoginResponse(this.status, this.message, this.token, this.data);

  LoginResponse.fromJson(Map<String, dynamic> data)
      : status = data['status'],
        message = data['message'],
        token = data['token'],
        data = Data.fromJson(data['data']);
}
