import 'package:flutter/material.dart';

class Model {
  final String image;
  final String enname;
  final String jpname;
  final String sound;
  final Color color;

  const Model({
    required this.enname,
    required this.image,
    required this.jpname,
    required this.sound,
    required this.color,
  });
}
