import 'package:app7_imc_2024/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        sliderTheme: SliderThemeData(
          activeTrackColor: Color(0xffef233c).withOpacity(0.75),
          inactiveTrackColor: Color(0xFF2b2d42).withOpacity(0.55),
          overlayColor: Color(0xffef233c).withOpacity(0.3),
          thumbColor: Color(0xffef233c),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 12.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 24.0,
          ),
        ),
        fontFamily: 'Manrope',
      ),
      home: HomePage(),
    );
  }
}
