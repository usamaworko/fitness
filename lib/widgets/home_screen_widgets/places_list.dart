import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/models/place_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/places_list.dart';
import '../../constants/text_styles.dart';

class PlacesList extends StatelessWidget {
  final double height;
  final double width;
  final bool widgetIs;
  const PlacesList({required this.width,required this.height, required this.widgetIs});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      height: height,
      width: width,
      alignment: Alignment.center,
      child: ListView.builder(
        scrollDirection: widgetIs ? Axis.vertical : Axis.horizontal,
        itemCount: placesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: widgetIs? EdgeInsets.symmetric(vertical: 20):EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    height: 330,
                    width: 320,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.lightBlack),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    placesList[index].image,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${placesList[index].place}',
                                        style: TextStyles.heading1
                                            .copyWith(fontSize: 18),
                                      ),
                                      Text(
                                        '${placesList[index].address}',
                                        style: TextStyles.caption1,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: AppColors.lightBlack)),
                                    child: const Icon(
                                      Icons.save_outlined,
                                      color: AppColors.lightMediumBlack,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: AppColors.mediumOrange,
                                      ),
                                      Text(
                                        '${placesList[index].rating} (80)',
                                        style: TextStyles.caption1
                                            .copyWith(fontSize: 16),
                                      )
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 26,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightBlack,
                                        borderRadius: BorderRadius.circular(30)),
                                    child: Text(
                                      '${placesList[index].distance} km',
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 26,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightBlack,
                                        borderRadius: BorderRadius.circular(30)),
                                    child: Text(
                                      '${placesList[index].time}',
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 26),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 52),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 78),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.orange),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 36,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightBlack,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Text(
                                      '${placesList[index].price}' == '0.0'
                                          ? 'Free'
                                          : '${placesList[index].price} \$',
                                      style: TextStyles.caption2
                                          .copyWith(fontSize: 14),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
