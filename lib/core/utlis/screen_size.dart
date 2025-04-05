import 'package:flutter/material.dart';

abstract final class ScreenSize{
  static double getWidth(BuildContext context){
    return MediaQuery.sizeOf(context).width;
  }
  static double getHeight(BuildContext context){
    return MediaQuery.sizeOf(context).height;
  }
}