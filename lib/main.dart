import 'package:fitness/home_sceen.dart';
import 'package:fitness/widgets/filter_screen.dart';
import 'package:fitness/widgets/home_screen_widgets/Search_challenge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/app_colors.dart';

void main(){
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.orange
    ));
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FilterScreen(),
    routes:{'/search':(context)=>const SearchChallenge()},);
  }
}
