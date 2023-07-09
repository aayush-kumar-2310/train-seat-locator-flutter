import 'package:flutter/material.dart';

String showInfo(int seatNum) {
  String seatCategory = "", rowNum = "";
  if (seatNum % 8 == 0) {
    seatCategory = "Side Lower";
    rowNum = ((seatNum / 8).truncate()).toString();
  } else if (seatNum % 8 == 1 || seatNum % 8 == 4) {
    seatCategory = "Lower";
    rowNum = ((seatNum / 8).truncate() + 1).toString();
  } else if (seatNum % 8 == 2 || seatNum % 8 == 5) {
    seatCategory = "Middle";
    rowNum = ((seatNum / 8).truncate() + 1).toString();
  } else if (seatNum % 8 == 3 || seatNum % 8 == 6) {
    seatCategory = "Upper";
    rowNum = ((seatNum / 8).truncate() + 1).toString();
  } else if (seatNum % 8 == 7) {
    seatCategory = "Side Upper";
    rowNum = ((seatNum / 8).truncate() + 1).toString();
  }

  return "Seat number $seatNum is of $seatCategory class and in row $rowNum.";
}

class MyTextStyle {
  static const TextStyle textStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
