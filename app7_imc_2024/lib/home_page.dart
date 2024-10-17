import 'package:app7_imc_2024/imc_brain.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 70;
  double height = 166;

  IMCBrain indice = IMCBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2b2d42),
        title: const Text(
          "IMC Calculator App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido, selecciona tu peso y altura:",
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF2b2d42),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  weight.toInt().toString(),
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2b2d42),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  "Kg",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF2b2d42),
                  ),
                ),
              ],
            ),
            Slider(
              value: weight,
              min: 20,
              max: 200,
              //divisions: 1,
              onChanged: (double value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toInt().toString(),
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2b2d42),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF2b2d42),
                  ),
                ),
              ],
            ),
            Slider(
              value: height,
              min: 20,
              max: 200,
              //divisions: 1,
              onChanged: (double value) {
                setState(
                  () {
                    height = value;
                  },
                );
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton.icon(
                label: Text(
                  "Calcular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.play_arrow_rounded),
                onPressed: () {
                  indice.weight = weight;
                  indice.height = height;

                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2b2d42),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Color(0xFF2b2d42),
              height: 10.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Resultado: ",
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF2b2d42),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/img/${indice.getImage()}.png',
                height: 200.0,
                width: 200.0,
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    indice.calculateIMC().toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xffef233c),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    indice.getResult(),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF2b2d42),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    indice.getRecomendation(),
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF2b2d42),
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
