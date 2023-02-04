import 'package:actividad02/screens/components/on_boarding.dart';
import 'package:flutter/material.dart';

class Bodyboarding extends StatefulWidget {
  const Bodyboarding({super.key});

  @override
  State<Bodyboarding> createState() => _BodyboardingState();
}

class _BodyboardingState extends State<Bodyboarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoarding(),
    );
  }
}
