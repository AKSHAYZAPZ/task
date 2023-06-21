import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class SortController extends GetxController{
  TextEditingController sortcntroller = TextEditingController();
  var list = [].obs;

  void numSorted(val1, val2, val3, val4) {
    int num1 = int.parse(val1);
    int num2 = int.parse(val2);

    int num3 = int.parse(val3);

    int num4 = int.parse(val4);

    list.value = [num1, num2, num3, num4];
    var num = 4;
    int i, j, a;
    for (i = 0; i < num; ++i) {
      for (j = i + 1; j < num; ++j) {
        if (list[i] > list[j]) {
          a = list[i];
          list[i] = list[j];
          list[j] = a;
        }
      }
    }
    sortcntroller.text = list.toString();
  }
}
