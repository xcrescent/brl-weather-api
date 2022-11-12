import 'package:flutter/material.dart';

class WeatherQueryModel {
  final int userId;
  final int id;
  final String title;

  const WeatherQueryModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory WeatherQueryModel.fromJson(Map<String, dynamic> json) {
    return WeatherQueryModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
