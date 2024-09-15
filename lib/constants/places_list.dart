import 'package:fitness/models/place_model.dart';
import 'package:flutter/material.dart';


const List<PlaceModel> placesList = [
   PlaceModel(
    image: 'assets/images/place1.jpg',
    place: 'Central Park',
    address: 'New York, NY',
    distance: 2.5,
    medals: 5,
    pace: 10.5,
    price: 4.0,
    rating: 4.8,
    time: '10h',
  ),
  PlaceModel(
    image: 'assets/images/place2.jpg',
    place: 'Golden Gate Park',
    address: 'San Francisco, CA',
    distance: 3.2,
    medals: 4,
    pace: 11.2,
    price: 0.0,
    rating: 4.7,
    time: '6h',
  ),
  PlaceModel(
    image: 'assets/images/place3.jpg',
    place: 'Millennium Park',
    address: 'Chicago, IL',
    distance: 1.8,
    medals: 5,
    pace: 9.5,
    price: 0.0,
    rating: 4.9,
    time: '8h',
  ),
];