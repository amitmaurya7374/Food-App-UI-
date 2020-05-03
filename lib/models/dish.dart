import 'package:flutter/foundation.dart';

class Dish {
  final String dishImage;
  final String dishTitle;
  final String dishSubTitle;
  final double price;
  Dish({
    @required this.dishImage,
    @required this.dishTitle,
    @required this.dishSubTitle,
    this.price,
  });
}
