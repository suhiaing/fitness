import 'package:flutter/material.dart';
import 'package:flutter_project/pages/my_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/pages/my_app_bar.dart';
import 'package:flutter_project/pages/catagories_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 1000,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xff101617).withOpacity(0.19),
                    blurRadius: 40,
                    spreadRadius: 0)
              ]),
              child: const MyTextField(),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text(
                "Categories",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CategoriesSection(),
          ],
        ),
      ),
    );
  }
}
