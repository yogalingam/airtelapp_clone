import 'dart:async';

import 'package:airtelapp_clone/export.dart';

class OnboardController extends GetxController{
  @override
  void onInit() {
    new Timer(new Duration(seconds: 5), () {
      Get.toNamed('/Login',preventDuplicates: false,);
    });
  }
}