import 'package:flutter/material.dart';
import 'package:flutter_project/pages/diet.dart';
import 'package:flutter_project/pages/my_text_field.dart';
import 'package:flutter_project/pages/my_app_bar.dart';
import 'package:flutter_project/pages/catagories_section.dart';
import 'package:flutter_project/pages/popular_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: const Color(0xff101617).withOpacity(0.19),
                      blurRadius: 40,
                      spreadRadius: 0)
                ]),
                child: const MyTextField(),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Text(
                  "Categories",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CategoriesSection(),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Text(
                  "Recommendation for diet",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DietSection(),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: const Text(
                  "Popular",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: popularSection(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
