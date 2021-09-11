import 'package:flutter/material.dart';

class ServiceTwo {
  final int id;
  final String title, image;
  final Color color;

  ServiceTwo({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<ServiceTwo> servicesTwo = [
  ServiceTwo(
    id: 5,
    title: "Website Developer",
    image: "assets/images/asp.png",
    color: Color(0xFFFFE0E0),
  ),
  ServiceTwo(
    id: 6,
    title: "React Native Developer",
    image: "assets/images/react.png",
    color: Color(0xFFFFF3DD),
  ),
  ServiceTwo(
    id: 7,
    title: "JQuery",
    image: "assets/images/jquery.png",
    color: Color(0xFFE4FFC7),
  ),
  ServiceTwo(
    id: 8,
    title: "Firebase Database",
    image: "assets/images/firebase.jpg",
    color: Color(0xFFD9FFFC),
  ),
];
