import 'package:flutter/material.dart';

class ContentBoarding {
  String tittle, image, text;
  ContentBoarding(
      {required this.tittle, required this.image, required this.text});
}

List<ContentBoarding> contents = [
  ContentBoarding(
      tittle: "ESPARCIMIENTO",
      text: "Brindamos todos los servicios para consentir a tu mascota",
      image: "assets/images/B1.png"),
  ContentBoarding(
      tittle: "ADOPCION",
      text:
          "La adopción de animales es el proceso de tomar la responsabilidad de un animal",
      image: "assets/images/B2.png"),
  ContentBoarding(
      tittle: "HOSPITALIDAD",
      text:
          "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat",
      image: "assets/images/B3.png"),
  ContentBoarding(
      tittle: "VETERINARIA",
      text:
          "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat",
      image: "assets/images/B4.png"),
  ContentBoarding(
      tittle: "TIENDA",
      text:
          "Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat",
      image: "assets/images/B5.png"),
];
