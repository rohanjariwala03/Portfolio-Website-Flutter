import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Android App Developer",
    image: "assets/images/android.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Flutter App Developer",
    image: "assets/images/flutter.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Java Developer",
    image: "assets/images/java.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "C# Developer",
    image: "assets/images/csharp-01.png",
    color: Color(0xFFFFE0E0),
  ),
];
