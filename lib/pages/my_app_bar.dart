import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar myAppBar() {
  return AppBar(
    title: const Text(
      "Breakfast",
      style: TextStyle(
          color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: SvgPicture.asset("images/Arrow - Left 2.svg"),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: SvgPicture.asset("images/dots.svg"),
        ),
      ),
    ],
  );
}
