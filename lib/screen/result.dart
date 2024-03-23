import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Back",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.red[700],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/download.jpeg",
            fit: BoxFit.cover,
          ),
          const Center(
            child: Text(
              "Movement is life",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Regular exercise can reduce the risk of chronic diseases",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
