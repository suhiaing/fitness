import 'package:flutter/material.dart';
import 'package:flutter_project/pages/my_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/pages/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              width: 1000,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xff101617).withOpacity(0.1),
                    blurRadius: 40,
                    spreadRadius: 0)
              ]),
              child: const MyTextField(),
            ),
          )
        ],
      ),
    );
  }
}
