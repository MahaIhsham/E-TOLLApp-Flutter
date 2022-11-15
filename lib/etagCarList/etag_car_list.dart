import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:siginui/dashboard.dart';
import 'package:siginui/etagCarList/datalist.dart';
import 'package:siginui/login/data.dart';

class etag_car_list{
  final bool? status;
  final String? message;
  final datalist data;

  etag_car_list(this.status, this.message,  this.data);

  etag_car_list.fromJson(Map<String, dynamic> data)
      : status = data['status'],
        message = data['message'],

        data = datalist.fromJson(data['data']);
}
