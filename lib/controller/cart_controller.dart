import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var books = 0.obs;
  var pens= 0.obs;

  int get sum=>books.value+pens.value;



  void increment() {
    books++;
  }

  void decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying books", "Can not be less then  zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  void incrementPens() {
    pens++;
  }

  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying pens", "Can not be less then  zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
