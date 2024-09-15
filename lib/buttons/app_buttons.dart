import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AppButtons{
  final double height;
  final double width;
  final String text;
  AppButtons({required this.height,required this.width,required this.text});

  get signUpButton => Container(
    margin: EdgeInsets.only(top: 8),
    height
        :height,
    width: width,
    decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(10)
    ),
    alignment: Alignment.center,
    child:  Text(text, style: TextStyles.button1,),
  );
}

