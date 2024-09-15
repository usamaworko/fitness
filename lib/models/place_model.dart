import 'package:flutter/material.dart';

class PlaceModel{
  final String place;
  final String address;
  final double rating;
  final double distance;
  final String time;
  final double price;
  final double pace;
  final int medals;
  final String image;
  const PlaceModel({
    required this.image,
    required this.place,required this.address,required this.distance,required this.medals,required this.pace,
    required this.price,required this.rating,required this.time
});
}