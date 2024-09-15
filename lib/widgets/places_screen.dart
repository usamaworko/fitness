import 'package:fitness/widgets/generalized/bottom_nav_bar.dart';
import 'package:fitness/widgets/home_screen_widgets/places_list.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Expanded(child: PlacesList(width: double.infinity, height: double.infinity, widgetIs: true)),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
