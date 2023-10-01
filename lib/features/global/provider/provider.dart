

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:movie_tentwenty_app/core/api_keys.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';

String endPoint(String endPoint) => "$baseURL/$endPoint";

String loadMovieDBImage(String? imageId) => "https://image.tmdb.org/t/p/w500$imageId";

Map<String, String> headerBearerOption(String token) => {
  "Content-Type": "application/json",
  'Authorization': 'Bearer $token',
};


void toast({required String message, Color? color}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? colorCD9D0F,
      textColor: Colors.white,
      fontSize: 16.0);
}