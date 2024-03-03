import 'package:flutter/material.dart';
import 'package:flutter_project/models/popular_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<PopularDietsModel> popularDiets = PopularDietsModel.getPopularDiets();

List<Widget> popularSection() {
  List<Widget> popularSectionChildOfColumn = [];
  for (int i = 0; i < (popularDiets.length); i++) {
    Container subChild = Container(
      height: 110,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            color: const Color.fromARGB(0, 173, 192, 196).withOpacity(0.1),
            blurRadius: 40,
            spreadRadius: 0)
      ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                popularDiets[i].iconPath,
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 300,
                child: Text(
                    "${popularDiets[i].name}\n${popularDiets[i].level} | ${popularDiets[i].duration} | ${popularDiets[i].calorie}",
                    style: const TextStyle(
                        color: Color(0xff7B6F72),
                        fontSize: 13,
                        fontWeight: FontWeight.w400)),
              ),
              SvgPicture.asset("images/button.svg")
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
    popularSectionChildOfColumn.add(subChild);
  }
  return popularSectionChildOfColumn;
}
