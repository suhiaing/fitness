import 'package:flutter/material.dart';
import 'package:flutter_project/pages/my_text_field.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/pages/my_app_bar.dart';
import 'package:flutter_project/models/categories_models.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
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
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
