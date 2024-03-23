import 'package:bmicalculator/screen/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heightSlider = 0;
  double weightSlider = 0;
  bool result = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 100,
            child: Image.asset(
              'assets/logo_bmi.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BMI",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 45,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Calculator",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 45,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 65),
            child: Text(
              "We care about your health",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "Height ${heightSlider.toStringAsFixed(2)} (cm)",
              style: const TextStyle(fontSize: 35, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Slider(
              activeColor: const Color(0xff3d94f0),
              min: 0,
              max: 200.0,
              onChanged: (height) {
                setState(() {
                  heightSlider = height;
                });
              },
              value: heightSlider,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "weight ${weightSlider.toStringAsFixed(2)} (kg)",
              style: const TextStyle(
                fontSize: 35,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Slider(
              activeColor: const Color(0xff3d94f0),
              min: 0,
              max: 200.0,
              onChanged: (weight) {
                setState(() {
                  weightSlider = weight;
                });
              },
              value: weightSlider,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    result = true;
                  });
                  heightSlider != 0 && weightSlider != 0
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ResultPage();
                            },
                          ),
                        )
                      : setState(() {
                          result = false;
                        });
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  backgroundColor: Colors.red[700],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 35,
                ),
                label: const Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          result == false
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Container(
                    color: const Color(0xff5faaaf),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Center(
                        child: Text(
                      "NoInformation",
                      style: TextStyle(fontSize: 25),
                    )),
                  ),
                )
              : const SizedBox(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
