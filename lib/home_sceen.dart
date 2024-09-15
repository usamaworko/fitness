
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/text_styles.dart';
import 'package:fitness/widgets/generalized/bottom_nav_bar.dart';
import 'package:fitness/widgets/home_screen_widgets/date_carousel.dart';
import 'package:fitness/widgets/home_screen_widgets/icon_list_view.dart';
import 'package:fitness/widgets/home_screen_widgets/image_card.dart';
import 'package:fitness/widgets/home_screen_widgets/info_bar.dart';
import 'package:fitness/widgets/home_screen_widgets/info_container.dart';
import 'package:fitness/widgets/home_screen_widgets/places_list.dart';
import 'package:fitness/widgets/home_screen_widgets/see_more_row.dart';
import 'package:fitness/widgets/places_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, d MMMM yyyy').format(now);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 16, left: 16,bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const InfoBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    const ImageCard(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      formattedDate,
                      style: TextStyles.heading1.copyWith(fontSize: 18),
                    ),
                    DateCarousel(),
                    const InfoContainer(),
                    const SizedBox(
                      height: 18,
                    ),
                    SeeMoreRow(text: 'Choose by activity', onPress: (){},),
                    const IconListView(),
                     SeeMoreRow(text: 'Challenge nearby', onPress: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PlacesScreen()));
                     }),
                  ],
                ),
              ),
              PlacesList(width: double.infinity, height: 340, widgetIs: false,),
               Padding(
                padding: EdgeInsets.only(top: 18,left: 20,right: 20,bottom: 10), 
                child: SeeMoreRow(text: 'Popular challenge', onPress: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PlacesScreen()));
                }),
              ),
              PlacesList(width: double.infinity, height: 340, widgetIs: false,),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
