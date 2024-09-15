import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/widgets/generalized/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../buttons/app_buttons.dart';
import '../constants/text_styles.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  int _selectedRadio1 = 1;
  int _selectedRadio2 = 1;
  double _currentSliderValue = 20;

  // This method sets the selected radio value
  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedRadio1 = value!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: AppColors.lightBlack)),
                    ),
                    Text('Filter',style: TextStyles.heading1,),
                    SizedBox(width: 40,),
          
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.all(12),
                  height: 340,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.lightBlack)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sort By',style: TextStyles.heading1,),
                      SizedBox(height: 6,),
                      Divider(thickness: 1.5,color: AppColors.lightBlack,),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 1,
                              groupValue: _selectedRadio1,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 2,
                              groupValue: _selectedRadio1,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 3,
                              groupValue: _selectedRadio1,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 4,
                              groupValue: _selectedRadio1,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.all(12),
                  height: 480,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.lightBlack)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Run By Activity',style: TextStyles.heading1,),
                      SizedBox(height: 6,),
                      Divider(thickness: 1.5,color: AppColors.lightBlack,),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 1,
                              groupValue: _selectedRadio2,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 2,
                              groupValue: _selectedRadio2,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 3,
                              groupValue: _selectedRadio2,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 4,
                              groupValue: _selectedRadio2,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 5,
                              groupValue: _selectedRadio2,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Option 1'),
                            Radio<int>(
                              activeColor: AppColors.orange,
                              value: 6,
                              groupValue: _selectedRadio2,
                              onChanged: _handleRadioValueChange,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.lightBlack)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Length',style: TextStyles.heading1,),
                        
                            Text('0-100 km',style: TextStyles.heading1.copyWith(fontSize: 12),),
                          ],
                        ),
                      ),
                      Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        label: _currentSliderValue.round().toString(),
                        activeColor: Colors.orange, // Set the slider color to orange
                        inactiveColor: Colors.orange[100],
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButtons(height: 50, width: 145, text: 'Clear').signUpButton,
                      AppButtons(height: 50, width: 145, text: 'Search').signUpButton
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
