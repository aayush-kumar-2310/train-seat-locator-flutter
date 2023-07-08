import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String showInfo(int seatNum) {
  String seatCategory = "", RowNum = "";
  if (seatNum % 8 == 0) {
    seatCategory = "Side Lower";
    RowNum = ((seatNum / 8).truncate()).toString();
  } else if (seatNum % 8 == 1 || seatNum % 8 == 4) {
    seatCategory = "Lower";
    RowNum = ((seatNum / 8).truncate()).toString();
  } else if (seatNum % 8 == 2 || seatNum % 8 == 5) {
    seatCategory = "Middle";
    RowNum = ((seatNum / 8).truncate()).toString();
  } else if (seatNum % 8 == 3 || seatNum % 8 == 6) {
    seatCategory = "Upper";
    RowNum = ((seatNum / 8).truncate()).toString();
  } else if (seatNum % 8 == 7) {
    seatCategory = "Side Upper";
    RowNum = ((seatNum / 8).truncate()).toString();
  }

  return "Seat number $seatNum is of $seatCategory class and in row $RowNum.";
}

class MyTextStyle {
  static const TextStyle textStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
