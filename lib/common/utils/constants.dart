import 'package:flutter/material.dart';

class Constants {
  // static const dommain = 'https://app.rocket-soft.org';
  // static const dommain = 'http://127.0.0.1:8000';
  // static const dommain = 'http://10.0.2.2:8000';
  static const dommain = 'https://academy.askantech.com';
  static const baseUrl = '$dommain/api/development/';
  static const apiKey = '1234';
  static const scheme = 'academyapp';

  static final RouteObserver<ModalRoute<void>> singleCourseRouteObserver =
      RouteObserver<ModalRoute<void>>();
  static final RouteObserver<ModalRoute<void>> contentRouteObserver =
      RouteObserver<ModalRoute<void>>();
}
