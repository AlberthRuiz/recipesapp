import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget formulario(
    TextEditingController controllerText, String hint, String svgItem) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: Color(0xffEDA971),

      controller: controllerText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        labelStyle: TextStyle(color: Colors.orange),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Color(0xff626B92),
        prefixIcon: SvgPicture.asset(
          "assets/icons/${svgItem}.svg",
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            Colors.white54,
            BlendMode.srcIn,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,

          // borderSide: BorderSide(
          //   color: Colors.black26,
          //   width: 1,
          // ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none
            // borderSide: BorderSide(
            //   color: Colors.black26,
            //   width: 1.5,
            // ),
            ),
      ),
      // onChanged: (String value) {
      //   print(value);
      //   title = value;
      //   print("title: $title");
      // },
    ),
  );
}
